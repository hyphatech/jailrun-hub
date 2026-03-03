PROJECT_NAME := jrun-hub

BOLD  := $(shell tput bold 2>/dev/null)
RESET := $(shell tput sgr0 2>/dev/null)

GEN_MANIFEST := ./tools/gen-manifest.sh
PLAYBOOK_DIRS := $(shell find playbooks -mindepth 3 -maxdepth 3 -name playbook.yml | sed 's|/playbook.yml$$||' | LC_ALL=C sort)
MANIFESTS := $(addsuffix /jrun.manifest,$(PLAYBOOK_DIRS))

.DEFAULT: help
.PHONY: help test lint manifests clean-manifests

help: ## show this help
	@echo ""
	@echo "$(BOLD)$(PROJECT_NAME)$(RESET)"
	@echo "========"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-18s\033[0m %s\n", $$1, $$2}'
	@echo ""

manifests: ## generate sha256 manifests for all playbooks
	@for dir in $(PLAYBOOK_DIRS); do $(GEN_MANIFEST) $$dir; done

clean: ## remove all generated manifests
	@rm -f $(MANIFESTS)
	@echo "removed $(words $(MANIFESTS)) manifest(s)"
