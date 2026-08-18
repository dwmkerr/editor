# Rebuild with: vhs scripts/hero.tape   (brew install vhs)
Output site/assets/hero.gif

Set Shell bash
Set FontSize 19
Set Width 1180
Set Height 360
Set Padding 22
Set Theme "Catppuccin Mocha"
Set TypingSpeed 55ms

# Stub the command so the demo output is deterministic.
Hide
Type `editor() { sleep 1.2; cat scripts/hero-demo.txt; }; PS1='$ '; clear`
Enter
Show

Sleep 600ms
Type `editor gpt "review this README draft — don't rewrite, list issues"`
Sleep 500ms
Enter
Sleep 4s
