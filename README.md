# QPAC

## Overview

> TBD

## Features

> TBD

## Prerequisites

- **Python** 3.11+
- **Poetry** (latest version)

## Installation

```bash
# Clone the repository
git clone https://github.com/enea-scaccabarozzi/qpac.git
cd qpac

# Install dependencies
make install
```

## Usage

```bash
# Run the CLI app with arguments
make run ARGS="--test 'test flag'"

# Check code quality and run all tests
make check

# Generate documentation (PDFs)
make docs

# Clean build artifacts and cache
make clean

# Build the docker image
make docker-build
```

## Development Tools

The following tools are configured:

- **Black:** For code formatting
- **Flake8:** For linting and style checks
- **Mypy:** For type-checking
- **Pytest:** For unit tests and profiling
- **Commitlint:** For linting commit messages

## Makefile Targets

| Target         | Description                         |
| -------------- | ----------------------------------- |
| `install`      | Install dependencies                |
| `build`        | Build the project                   |
| `run`          | Run the CLI app with arguments      |
| `docs`         | Generate PDFs from Markdown         |
| `format`       | Run Black formatter                 |
| `lint`         | Run Flake8 linting                  |
| `type-check`   | Run Mypy type-checking              |
| `test`         | Run tests using Pytest              |
| `check`        | Run all checks (format, lint, test) |
| `docker-build` | Build the Docker image              |
| `clean`        | Clean build and cache files         |

## Project Structure

```plaintext
pac/
├── src/                     # Source code
│   └── pac/                 # CLI app module
├── tests/                   # Test files
├── docs/                    # Documentation files (Markdown)
├── dist/                    # Build and compiled files
├── Dockerfile               # Docker configuration
├── Makefile                 # Makefile with automation tasks
├── pyproject.toml           # Project configuration
├── mypy.ini                 # Mypy configuration
├── .flake8                  # Flake8 configuration
└── README.md                # This file
```

## Contributing

1. Fork the project.
2. Create your feature branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -m 'feat(scope): some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request to the `develop` branch.

> **Note:** This project uses Commitlint. Please follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification.

## License

This project is licensed under the **MIT License**. See the `LICENSE` file for more details.

---

**Happy Coding!** 🚀
