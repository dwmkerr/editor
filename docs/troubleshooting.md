# Troubleshooting

## The Claude Code output style does not appear or take effect

- Run `/config`, select `Output style`, then choose `dwmkerr editor`. Claude Code does not show custom output styles when you try to set one inline with `/config outputstyle=...`.
- Start a new session after changing the style. Existing sessions keep the output style they started with; `/clear` does not replace it.
- The picker saves the choice per project in `.claude/settings.local.json`. Put `outputStyle` in `~/.claude/settings.json` to use it everywhere.
- Check for hooks that inject writing instructions on `UserPromptSubmit`. Those instructions arrive after the system prompt and can override the output style. The caveman plugin, for example, asks for clipped fragments that conflict with `references/writing-style.md`.
