.PHONY: help test hero

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

test: ## Run project checks
	@npm test

hero: ## Rebuild the animated hero image
	@./scripts/build-hero-gif.sh
