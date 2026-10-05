# Project instructions

- This repository contains two standalone Agent Skills: `editor` and `wtf`.
- `editor` produces simple, unopinionated copy. It removes overly stylised AI idioms and other patterns that add noise or cognitive overhead. By default, it routes careful reviews through a second model so a different model can catch what the current session misses.
- `wtf` rewrites the previous assistant message in short, plain English without adding information.
- The editing rules live in `references/`. Keep those files the source of truth.
- `dispatch.sh` handles harness-specific CLI details. Add a model or harness there.
- Skill changes require matching updates to the relevant `skill-tests.yaml`.
- Do not hard-wrap markdown. Use one line per paragraph in this repo and in anything the skills write.
- Run `npm test` before handing off changes.
- Use conventional commits. There are no releases: `npx skills add dwmkerr/editor --full-depth` installs straight from the repo, so main is the only thing that ships.

## Hero GIF

- Rebuild `.github/assets/hero.gif` with `make hero`.
- Requires `vhs` (`brew install vhs`).
- The source is `scripts/hero.tape`.
