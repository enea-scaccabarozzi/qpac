# type: ignore

from pathlib import Path
from weasyprint import HTML, CSS
from lxml import etree


def extract_svg_size(svg_file: Path) -> tuple[float, float]:
    """Extract width and height from the SVG file in points."""
    try:
        tree = etree.parse(str(svg_file))
        svg = tree.getroot()
        width = float(svg.attrib["width"].replace("pt", ""))
        height = float(svg.attrib["height"].replace("pt", ""))
        return width, height
    except Exception as e:
        print(f"\033[31mError extracting SVG size: {e}\033[0m")
        return 595.0, 842.0  # Default A4 size in points


def pytest_sessionstart(session):
    """Ensure directories exist before running tests."""
    Path("coverage").mkdir(exist_ok=True)
    Path("prof").mkdir(exist_ok=True)


def pytest_sessionfinish(session, exitstatus):
    """Generate coverage and profiling PDF reports."""
    coverage_dir = Path("coverage")
    prof_dir = Path("prof")

    # Profiling files
    profile_src_prof = Path("combined.prof")
    profile_src_svg = Path("combined.svg")

    # Destination paths
    profile_dst_prof = prof_dir / "combined.prof"
    profile_dst_svg = prof_dir / "combined.svg"

    # Coverage report paths
    html_report = coverage_dir / "htmlcov/index.html"
    pdf_report = coverage_dir / "coverage.pdf"
    profile_pdf = prof_dir / "profiling.pdf"

    # Move profiling files
    if profile_src_prof.exists():
        profile_src_prof.rename(profile_dst_prof)

    if profile_src_svg.exists():
        profile_src_svg.rename(profile_dst_svg)

    if exitstatus == 0:
        # Generate coverage PDF
        if html_report.exists():
            print(f"\033[32mGenerating PDF Coverage Report: {pdf_report}\033[0m")
            HTML(str(html_report)).write_pdf(str(pdf_report))

        # Generate profiling PDF with correct page size
        if profile_dst_svg.exists():
            width, height = extract_svg_size(profile_dst_svg)
            css = CSS(string=f"@page {{ size: {width}pt {height}pt; margin: 0; }}")
            print(f"\033[32mGenerating Profiling Report with size ({width} x {height})...\033[0m")
            HTML(str(profile_dst_svg)).write_pdf(str(profile_pdf), stylesheets=[css])

        print("\033[32mReports successfully generated!\033[0m")
    else:
        print("\033[31mTests failed. No reports generated.\033[0m")
