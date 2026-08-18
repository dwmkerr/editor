# Rebuild with: vhs scripts/hero.tape   (brew install vhs)
Output site/assets/hero.gif

Set Shell bash
Set FontSize 16
Set Width 1260
Set Height 420
Set Padding 24
Set Theme "Catppuccin Mocha"
Set TypingSpeed 45ms

# Stub /editor so the demo output is deterministic; make the prompt look like the Claude Code composer.
Hide
Type `editor() { sleep 1.1; cat scripts/hero-demo.txt; }; PS1=$'\033[38;5;208m> \033[0m'; clear`
Enter
Show

Sleep 500ms
Type `editor gpt "review qb-scholar.md against my writing style, list issues"`
Sleep 500ms
Enter
Sleep 4s
