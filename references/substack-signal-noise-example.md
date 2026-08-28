# Substack Example: Signal // Noise - the AI Diff

First issue of Dave Kerr's AI newsletter, published March 2026. Demonstrates the newsletter writing style - concise technical observations, personal project updates woven in naturally, no hype.

## Style Notes

These patterns emerged from iterating on the draft:
- Lead with an industry observation, framed as "people are talking about X" - let others' work set the context, then add your own take
- Use strong technical metaphors - "agents compile intent into assembly language" - not flowery language
- Keep it direct and plain. No dry comedy or rhetorical flourishes in long-form. Humor works on LinkedIn (short, punchy) but not in newsletters.
- Personal projects are mentioned because they're relevant to the topic, not as self-promotion
- Structure: 3 numbered signal pieces (2-4 paragraphs each) + 5 quick bullet items
- Quick bits are one-liners with a bold label, dash, brief context, and a link
- Sign off with a single line linking to GitHub profile

---

## Full Draft

### Signal // Noise - the AI Diff

Three things this week in AI, and what I've been building.

---

#### 1. Dark factories and the era of Big Code

People are talking about the "dark factory" - fully autonomous coding pipelines where no human even looks at the code. Simon Willison wrote up [StrongDM's Software Factory](https://simonwillison.net/2026/Feb/7/software-factory/) where agents write, test, and ship code with zero human review.

Whether you think we're ready for that or not, one thing is clear: we are in the era of **Big Code**. A colossal increase in volume, velocity and variability. Creation is easy. Verification, integration and collaboration is hard. Code is getting out of control.

Agents compile **intent** into assembly language - **code**. Nearly all code is now machine language. Our processes must change.

I spoke about this at the [Nearform AI-Native Engineering session](https://nearform.com/ai-native-engineering-session/) on Feb 25th - "Copilot isn't a strategy: How to industrialise AI in the enterprise". Most organisations are stuck in pilot hell. Widespread experimentation, limited systemic impact. The issue is not tooling. It's operating model, ownership, and engineering discipline. The recording will be live soon.

#### 2. LLMs Visualised

I launched [LLMs Visualised](https://dwmkerr.github.io/llms-visualised/) - an interactive visual guide to how large language models work. Chapter 1 is live and open source. I used it at a McKinsey partners event this week to walk non-technical leaders through the fundamentals.

Source: [github.com/dwmkerr/llms-visualised](https://github.com/dwmkerr/llms-visualised)

#### 3. Skill testing pipelines

If you're building agent skills, you need the same testing discipline as any other code. I built [skill-test-action](https://github.com/dwmkerr/skill-test-action) - a GitHub Action for testing Claude Code skill routing with declarative YAML manifests. Define your test cases, run them in CI, catch regressions before they ship.

This pairs with the [Claude Toolkit](https://github.com/dwmkerr/claude-toolkit) where I've been consolidating skills, adding new plugins, and moving the exploration protocol to open source.

---

#### Quick bits

- **Daniel Sheard on agentic workflows** - great read from my colleague on [spec-driven development with deterministic orchestration](https://medium.com/quantumblack/agentic-workflows-for-software-development-dc8e64f4a79d). If you're thinking about how to structure agent workflows in production, start here.

- **Flying on the Command Line** - new 2-min video on shell tricks I use daily in Claude Code. [Watch it here](https://www.youtube.com/watch?v=xkEFEbGqgaE).

- **Parker's AI career roast** - drop your LinkedIn into [candidate.perfectly.so/roast](https://candidate.perfectly.so/roast) and find out how threatened your job is by AI.

- **Claude Code remote control** - I've been having fun with [Claude Code remote control](https://www.reddit.com/r/ClaudeAI/comments/1rdyhk4/new_in_claude_code_remote_control/) - controlling Claude Code sessions remotely, useful for running agents on remote machines.

- **Ark** - ongoing work on the [open-source agentic AI platform](https://github.com/dwmkerr/agents-at-scale-ark). Provider-agnostic operations for agentic resources.

---

Find all links, repos and more at [github.com/dwmkerr](https://github.com/dwmkerr).
