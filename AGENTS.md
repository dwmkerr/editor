# Project instructions

- This repository contains three standalone Agent Skills: `editor`, `wtf` and `denoise`.
- `editor` produces simple, unopinionated copy. It removes overly stylised AI idioms and other patterns that add noise or cognitive overhead. By default, it routes careful reviews through a second model so a different model can catch what the current session misses.
- `wtf` rewrites the previous assistant message in short, plain English without adding information.
- `denoise` cuts a message, pasted text or file down to its information by removing AI writing patterns, commentary and filler.
- The editing rules live in `references/`. Keep those files the source of truth.
- `dispatch.sh` handles harness-specific CLI details. Add a model or harness there.
- Do not hard-wrap markdown. Use one line per paragraph in this repo and in anything the skills write.
- Use conventional commits. There are no releases: `npx skills add dwmkerr/editor --full-depth` installs straight from the repo, so main is the only thing that ships.

## Hero GIF

- Rebuild `.github/assets/hero.gif` with `make hero`.
- Requires `vhs` (`brew install vhs`).
- The source is `scripts/hero.tape`.
