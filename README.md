<img src="./site/assets/hero.gif" alt="A terminal review: the editor lists writing-style issues in a file without rewriting it" width="100%">

# editor

Review or edit a file against my writing style. A second model can catch issues that the current one has missed.

## Install

```sh
npx skills add dwmkerr/editor
```

## Try it out

> **Prompt:** /editor "review this README, don't rewrite -- just tell me what's wrong"

## What it does

A model that has written a file may overlook problems when reviewing its own work. This skill sends the file and my writing-style rules to another model. It returns either a list of issues or an edited version.

- **Review mode** - say "review", "check", "list", or "don't rewrite" to get a numbered list of issues. Each item includes the line, the problem and a suggested fix. The file is left unchanged.
- **Edit mode** - for other instructions, the skill rewrites the file and shows you a short summary before saving it.
- **Choose a model** - use `gpt` (the default), `o3`, or `claude` to work in the current session.

The style rules and real before-and-after examples live in `references/`. This gives each review the same set of patterns to work from.

## Examples

```
/editor "clean this up"
/editor gpt "what are the top 10 things you'd rewrite here? don't change anything"
/editor "don't rewrite, tell me what is wrong"
/editor claude "simplify section 6"
```

## How it works

`/editor [model] "<instructions>"` builds a prompt from the writing-style references and the target file. It passes the prompt to `dispatch.sh`, which runs the chosen model. To add a model or use a different harness, edit `dispatch.sh`, where the CLI-specific details live.

## See also

- [More tools and skills by dwmkerr](https://skills.sh/dwmkerr)
- [claude-toolkit](https://github.com/dwmkerr/claude-toolkit), the original home of this skill
- [slides](https://github.com/dwmkerr/slides), a sibling standalone skill

## Developer guide

Install the current checkout globally, then invoke it in Claude Code:

```sh
npx skills add . --global --agent claude-code --yes
```

Run the checks and rebuild the hero image with:

```sh
make test    # structural checks
make hero    # rebuild site/assets/hero.gif (needs vhs)
```
