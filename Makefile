.PHONY: help hero refs check-refs

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

hero: ## Rebuild the animated hero image
	@vhs scripts/hero.tape

refs: ## Copy shared references into the skills that use them
	@scripts/sync-refs.sh

check-refs: refs ## Fail if any skill's copied references are out of date
	@git diff --exit-code -- 'skills/*/references/*' || (echo "Skill references are stale. Run make refs and commit." && exit 1)
	@test -z "$$(git ls-files --others --exclude-standard -- 'skills/*/references/*')" || (echo "New skill references are not committed. Run make refs and commit." && exit 1)
