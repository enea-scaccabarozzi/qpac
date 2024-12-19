# src/poetry_project/cli.py
import click
from pac.ingestion.generator import generate_poem


@click.command()
@click.option("--title", default="Untitled", help="Title of the poem.")  # fsd
def main(title: str) -> None:
    """Poetry Project CLI Entry."""
    poem = generate_poem(title)
    print(poem)


if __name__ == "__main__":
    main()
