# .SUFFIXES: .qmd .html .pdf
.DEFAULT_GOAL := help

.PHONY: keysearch
keysearch: ## Search lit folder for keyword(s): eg make keysearch key="key word"
	echo "==> $@"
	-pdfgrep "$(key)" lit/*.pdf

#=========================================================================
# Help
#==============================================================================
.PHONY: help
help: ## Show this help message and exit 	
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'