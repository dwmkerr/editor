# LinkedIn Post Examples

Real examples from Dave Kerr's LinkedIn posts demonstrating writing style patterns.

## Style Notes

These posts share common patterns:
- Terse, non-salesy updates on open source projects
- Technical audience assumed - get to the point quickly
- Casual tone with occasional dry humor or self-deprecating jokes
- Links to repos/resources at the end, not inline
- No marketing speak or hype

---

## Shellwright / Vim AGI

I think I can quit my job. I've done it. AGI. My agents can close Vim.

Shellwright is like Playwright but for the shell - record sessions, take screenshots, etc etc. Give the LLM your MCP config (in the comments) and prompt it to open and close Vim, record sessions, do whatever.

This has been an experiment to see if I can record sessions in terminal apps, I already have agent review of pull requests that opens dashboards etc, screenshots relevant parts of a UI, but also want screenshots and recordings of TUIs. Example, I use K9S tonnes to check Kubernetes resources; if someone changes something in the core of Ark, I want to see what K9S looks like.

Shellwright: https://lnkd.in/eXKWeuDu
Ark: https://lnkd.in/dzvG8hHk

---

## AI Agents CVE Analysis

Specialised #AIAgents in #AgentsAtScale #Ark thanks to Aman Ramkumar that specifically handle the impact analysis of CVEs, link to the appropriate research and propose propose fixes. Specialised agents and skills for highly specialised roles. Our pentest agents are also at work on our latest external pentest findings.

Links to ark in the comments, to an example PR, the agents repo, and a few more bits and pieces.

---

## Claude Code Agents in Ark

We're using Claude Code Agents in Ark to leverage new features like anthropic skills. We can run simple declarative agents, or fully containerised agents with emerging capabilities such as Context Free Grammars.

In the screenshot, queries are issued from Ark to a Claude Code Agent containerised and accessed via A2A, skills and tools are loaded and executed.

This is all in development and experimentation but Ark is a platform that enables rapid development against these emerging capabilities

- https://lnkd.in/dzvG8hHk
- https://lnkd.in/dVje7VYm (our work in progress experiment, soon to be moved to the marketplace)
- https://lnkd.in/dfb7KhDr
- https://lnkd.in/dprWFXwM

In the roadmap we're looking at improving capabilities for these agents, more real time A2A streaming, faster deployment

---

## Mock LLM Testing

Thanks Luca Romagnoli and Daniele Marostica for the new features in Mock LLM - we now have full determinsitic end to end testing of MCP - essential for the Agentic Runtime for Kubernetes

https://lnkd.in/epHikVmi
https://lnkd.in/dzvG8hHk

Our chainsaw builds are looking awesome

https://lnkd.in/e3ujFspK
https://lnkd.in/e3GAtsQt

---

## AI Developer Guide

Thanks Stas Alekseev for adding some excellent Golang guidance to the AI Developer Guide, this is super useful for the work we're doing on the Agentic Runtime for Kubernetes at the moment

AI Developer Guide: A set of standards, patterns and principles for development projects. Use with AI and your development team, evolve for your needs.

https://lnkd.in/dmMK9mrB

Ark: https://lnkd.in/dzvG8hHk

---

## Vim/Tmux and Effective Shell

I've been a heavy vim / tmux user for years. Anthropic's claude code improves my workflow greatly. A few colleagues have reached out saying the tmux guide in my new book has helped, so shamelessly sharing the link here!

https://lnkd.in/d4Dn-KnC

---

## Hacker Laws: Twyman's Law

#hackerlaws - Twyman's Law - 'The more unusual or interesting the data, the more likely they are to have been the result of an error of one kind or another.'

This one was new to me, but feels like an essential concept to be aware of in an increasingly data-driven world.

https://lnkd.in/dVbMkSj

---

## Hacker Laws: The Bitter Lesson

The Bitter Lesson - 'The biggest lesson that can be read from 70 years of AI research is that general methods that leverage computation are ultimately the most effective, and by a large margin.' - Richard S. Sutton (2019)

#hackerlaws

For those closer to the edge of research in AI, especially over the last five years, I'd love to know whether you believe this to be valid and whether it is still the case.

https://lnkd.in/dVbMkSj

---

## Hacker Laws: Kerckhoffs's Principle

#hackerlaws - Kerckhoffs's principle - ...design your system assuming that your opponents know it in detail.

https://lnkd.in/dVbMkSj

---

## Effective Shell: Book in Print

My book 'Effective Shell' is available in print now. People ask me whether this is relevant, but with a few tmux sessions for each project, tabs for feature branches with vim + Claude Code in each one, I'm not leaving the terminal any time soon.

Please tell your AI agents to buy a copy.

https://lnkd.in/d4Dn-KnC

---

## Effective Shell: aigac Snippet

In the lead up to my book Effective Shell being published, I've been creating some 'Effective Shell Snippets' - short and sweet commands.

This one is 'aigac' - AI assisted 'git add and commit'.

https://lnkd.in/d4Dn-KnC

---

## Effective Shell: Custom Statusline

A small but valuable quality-of-life improvement when using Claude Code - the custom statusline. In my config, set to show the pwd and Git branch.

---

## Effective Shell: Free Up a Port

Effective Shell Snippet: Quickly Free Up a Port - another one I use daily!
