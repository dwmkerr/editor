# Project instructions

- This repository contains one standalone Agent Skill: `editor`.
- The skill edits or reviews a file against Dave Kerr's writing style, routing the
  work through a second model (GPT via Codex by default) so a different model can
  catch what the current session misses.
- The writing style lives in `references/`. Keep those files the source of truth.
- `dispatch.sh` handles harness-specific CLI details. Add a model or harness there.
- Skill changes require matching updates to `skill-tests.yaml`.
- Run `npm test` before handing off changes.
- Use conventional commits. There are no releases: `npx skills add dwmkerr/editor`
  installs straight from the repo, so main is the only thing that ships.

## Hero GIF

- Rebuild `site/assets/hero.gif` with `make hero`.
- Requires `vhs` (`brew install vhs`).
- The source is `scripts/hero.tape`.
