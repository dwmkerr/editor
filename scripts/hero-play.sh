#!/usr/bin/env bash
# Renders a faux Claude Code /editor turn for the hero gif. Driven by scripts/hero.tape.
here="$(cd "$(dirname "$0")" && pwd)"
sleep 0.4
# Submitted composer line: accent '>' + accent slash-command + prompt text.
printf '\033[38;5;208m> \033[0m\033[38;5;208m/editor\033[0m review last output, show me issues and fixes\n'
sleep 1.2
cat "$here/hero-demo.txt"
