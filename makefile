# ================================
# Makefile for Poetry Project
# ================================

# Directories
MARKDOWN_DIR := docs
DOCS_DIR := dist/docs

# Docker-related variables
DOCKER_IMAGE := pac-app:latest

# File Lists
MARKDOWN_FILES := $(shell find $(MARKDOWN_DIR) -type f -name '*.md')
PDF_FILES := $(patsubst $(MARKDOWN_DIR)/%.md,$(DOCS_DIR)/%.pdf,$(MARKDOWN_FILES))

# Colors
COLOR_RESET := \033[0m
COLOR_INFO := \033[36m
COLOR_SUCCESS := \033[32m
COLOR_WARN := \033[33m
COLOR_ERROR := \033[31m
COLOR_FORMAT := \033[34m
COLOR_CHECK := \033[35m

# Phony Targets
.PHONY: all install build run clean format lint type-check test check docs

# ================================
# Main Targets
# ================================

all: check docs build docker-build

install:
	@echo "$(COLOR_INFO)Installing dependencies...$(COLOR_RESET)"
	@poetry install

build:
	@echo "$(COLOR_SUCCESS)Building project...$(COLOR_RESET)"
	@poetry build

run:
	@echo "$(COLOR_SUCCESS)Running the CLI App with arguments: $(ARGS)$(COLOR_RESET)"
	@poetry run run $(ARGS)

# ================================
# Documentation Generation
# ================================

$(DOCS_DIR)/%.pdf: $(MARKDOWN_DIR)/%.md
	@mkdir -p $(dir $@)
	@echo "$(COLOR_SUCCESS)Generating PDF: $@$(COLOR_RESET)"
	@pandoc $< -o $@ --pdf-engine=xelatex --from markdown+tex_math_single_backslash --resource-path=.:$(MARKDOWN_DIR) --metadata link-citations=true

docs: $(PDF_FILES)

# ================================
# Code Quality and Testing
# ================================

format:
	@echo "$(COLOR_FORMAT)Running Black for code formatting...$(COLOR_RESET)"
	@poetry run black src tests

lint:
	@echo "$(COLOR_WARN)Running Flake8 for linting...$(COLOR_RESET)"
	@poetry run flake8 src tests

type-check:
	@echo "$(COLOR_CHECK)Running Mypy for type-checking...$(COLOR_RESET)"
	@poetry run mypy src

test:
	@echo "$(COLOR_INFO)Running tests with Pytest...$(COLOR_RESET)"
	@poetry run pytest

check: format lint type-check test


# ================================
# Docker Image
# ================================

# Docker Build
docker-build:
	@echo "$(COLOR_INFO)Building Docker image: $(DOCKER_IMAGE)...$(COLOR_RESET)"
	@docker build -t $(DOCKER_IMAGE) .

# ================================
# Cleaning Artifacts
# ================================

clean:
	@echo "$(COLOR_ERROR)Cleaning build artifacts, cache files, coverage reports and docker images...$(COLOR_RESET)"
	@rm -rf $(DOCS_DIR) dist build .mypy_cache .pytest_cache coverage
	@find . -type d -name "__pycache__" -exec rm -rf {} +
	@find . -type f -name "*.pyc" -delete
	@docker rmi -f $(DOCKER_IMAGE) || true