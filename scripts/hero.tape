# Rebuild with: vhs scripts/hero.tape   (brew install vhs)
Output site/assets/hero.gif

Set Shell bash
Set FontSize 15
Set Width 1280
Set Height 360
Set Padding 26
Set Theme "Catppuccin Mocha"

Hide
Type `PS1=$'\033[38;5;208m> \033[0m'; clear; bash scripts/hero-play.sh`
Enter
Show
Sleep 7s
