MARKDOWN_DIR := docs
OUTPUT_DIR := $(MARKDOWN_DIR)/dist

MARKDOWN_FILES := $(shell find $(MARKDOWN_DIR) -type f -name '*.md')

PDF_FILES := $(patsubst $(MARKDOWN_DIR)/%.md,$(OUTPUT_DIR)/%.pdf,$(MARKDOWN_FILES))

.PHONY: all clean

all: $(PDF_FILES)

$(OUTPUT_DIR)/%.pdf: $(MARKDOWN_DIR)/%.md
	@mkdir -p $(dir $@)
	@echo "\033[32m Generating PDF: $@ \033[0m"
	@pandoc $< -o $@ --pdf-engine=xelatex --from markdown+tex_math_single_backslash --resource-path=.:$(MARKDOWN_DIR) --metadata link-citations=true

clean:
	@echo "\033[31m Cleaning output directory... \033[0m"
	@rm -rf $(OUTPUT_DIR)
