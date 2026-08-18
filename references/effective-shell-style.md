# Effective Shell tone

This is the tone of Dave Kerr's book *Effective Shell*: **non-salesy, warm, humble, honest.** This
tone works in blog posts, READMEs, talks, social posts and tutorials. Reach for it when the ask is
"in the effective shell tone / style". Layer it on top of the writing style rules and whatever format
guide fits.

This file uses the tone it describes, so its prose also provides a useful reference.

---

## Tone

A knowledgeable friend at the next desk who is genuinely into the subject, has nothing to sell you,
respects your time, and is honest about what they don't know.

---

## Core traits

**Non-salesy.** This is the central trait. Don't oversell. Make the claim the thing actually earns,
then stop. A useful example appears in "The Renaissance of the Shell", where the author opens by
admitting he can't prove the renaissance is real: *"To be honest, it is hard to know whether there is
an increase in popularity..."* Prefer modest, bounded claims such as *"Investing just a few hours..."*
Avoid unsupported promises such as "transform your workflow forever". If a sentence could sit in
marketing copy, cut it or rewrite it.

**Warm.** Friendly, and quietly glad about the subject. He sells curiosity and *"fun"* and *"creative
flow"*, and he writes for *"hobbyists, polymaths and explorers"*. The odd *"Easy!"* or *"you'll wonder
how you lived without it"* is warmth, but only because it lands on a small, true thing the reader just
saw.

**Humble.** Build authority by sharing experience and qualifying claims. He admits his own limits
mid-topic (*"the fairly basic knowledge of `sed` that I have"*), confesses past struggle to reassure
(*"The `find` command bothered me for years"*), and flags opinions as opinions (*"I tend to think"*,
*"I would suggest"*) while giving the other side its due.

**Honest.** Be candid about difficulty, identify cases where another tool is better, and keep claims
within the available evidence. *"A programming language could be a better option"*, in a book about
the shell.

**Respects the reader.** Give readers room to decide, reassure them about common difficulties and
respect their time (*"This book doesn't ask you to totally change the way you work"*, *"it's really up
to you"*, *"they're yours!"*, *"people often find Git quite hard at first"*).

Across these traits: the **we / you / I** voice. "We" and "let's" walk alongside the reader, "you"
hands them the controls, and a **grounded "I"** carries genuine opinion or experience. The honest "I"
is the signature, and it only works when it is true (see Grounding, below).

---

## Before and after examples

The traits above explain the intention. These pairs show how to apply them.

| Salesy / generic (avoid) | Effective shell tone (prefer) |
|---|---|
| "This game-changing technique will revolutionise how you write." | "This saved me a bit of typing every day, and it might do the same for you." |
| "Mastering regex unlocks unlimited power." | "Regex has a reputation for being impenetrable. It mostly isn't - you can get a long way with the basics." |
| "In today's fast-paced world, the shell is more essential than ever." | "The average developer today probably reaches for the shell more than they used to." |
| "You'll become a 10x engineer with these five tricks." | "A few of these might stick. Even one or two will save you time." |
| "This is the definitive, complete guide to X." | "This covers the essentials. When you hit the edges, the man page is there." |
| "Our revolutionary approach changes everything about testing." | "We tried the obvious thing first, it broke in an interesting way, and the fix is worth writing down." |
| "Unlock the full potential of your terminal!" | "Here's a setup I use every day. Steal the bits you like." |

The pattern: strip the forward-looking promise, drop the superlative, make the benefit specific and
bounded, and point it at the reader.

---

## A worked example

A common request: "draft an article about this session, where I show how I built X." This is a
natural fit for the tone, and the risk is manufacturing drama. (Say the real work was building a
writing-style skill by analysing a book with subagents.)

> **Salesy opening (don't):**
> "I just built a game-changing AI system that reverse-engineers writing style with military
> precision. This revolutionary approach will transform how you think about tone. Here's the secret."

> **Effective shell tone (do):**
> "I wanted Claude to write in my voice - specifically the tone of a book I wrote a few years ago. The
> obvious approach, pasting in a few adjectives like 'warm' and 'concise', didn't get close. So I tried
> something else: I pointed a handful of agents at the actual book, one per section, and asked each to
> report back on what the prose actually *does* rather than what I'd like to think it does.
>
> The results were more honest than I expected. A few of my habits I'm not proud of showed up in every
> chapter. Here's what I found, and how I turned it into something Claude can actually use."

The good version opens with a real motivation, admits the first attempt failed, uses "I" for things
that genuinely happened, stays specific, and promises only what the piece delivers.

---

## Grounding the "I"

First-person experience is important to this tone, but an LLM may invent details when the source
provides none.

- **Only make a first-person claim the source supports.** For a write-up of a session or project, pull
  the "I" from what actually happened - the real steps, the real dead-ends, the real decisions in the
  transcript or the repo. If you don't have a real detail, don't invent one. Drop the "I" and state the
  thing plainly instead.
- **Prefer real specifics over generic colour.** "One of the subagents flagged a habit that showed up
  in every part" is grounded. "I was blown away by the results" is filler - cut it.
- **Leave uncertain details out, even if the result is less vivid.** Fabricated anecdotes undermine
  the voice.

---

## Draft, then revise

Don't try to nail the tone in one pass. Draft it, then read back through hunting for these tells and
fix each one. Catching a salesy sentence is much easier than never writing it.

On the revise pass, search for and rewrite:

- **Superlatives and hype words** - see the words-to-avoid list below. Most can be cut.
- **Forward-looking promises** - "you'll be able to", "this will transform", "unlock". Replace with
  what's true right now, or with a bounded "might".
- **Unearned enthusiasm** - an exclamation mark that isn't landing on a specific thing the reader just
  saw. Downgrade to a plain full stop.
- **Ungrounded "I"** - any first-person claim you can't tie to the actual source. Cut or make it true.
- **Abstract inspiration** - sentences about "the modern landscape" or "the power of X". Replace with
  a concrete, specific detail.
- **False aphorisms / X-is-not-Y** - already forbidden in the main guide; strip on sight.
- **Stacked exclamations or repeated stock phrases** - one earned beat per section; rotate "Let's",
  "the great thing about", "scratching the surface".

A quick gut-check for any sentence: *could this be in an ad?* If yes, rewrite it.

---

## Words to avoid

Strip or rewrite these on sight - they pull toward the salesy register:

- game-changer / game-changing, revolutionary, unlock, unleash, supercharge, elevate, transform,
  master (as a verb of hype), effortlessly, seamlessly, cutting-edge, next-level, 10x, ultimate,
  definitive, secret / secret sauce, must-have, "the only X you'll ever need"
- "In today's fast-paced / rapidly evolving world...", "more than ever", "at the end of the day"
- Empty intensifiers with nothing concrete behind them: incredibly, insanely, mind-blowing

Words the tone *likes*, because they are modest and concrete: handy, useful, sensible, a nice trick,
workhorse, worth knowing, a bit, often, probably, in general.

---

## Calibrate against real samples

Rules and pairs get you close. Reading real Dave prose gets you closer. Before writing anything where
fidelity matters, skim the real samples in this skill:

- [`./references/linkedin-effective-shell-posts.md`](./references/linkedin-effective-shell-posts.md)
- [`./references/hacker-news-effective-shell.md`](./references/hacker-news-effective-shell.md)
- [`./references/linkedin-post-examples.md`](./references/linkedin-post-examples.md)

If you have the book itself to hand (the `effective-shell` repo, `docs/`), reading one chapter
provides closer calibration, but the samples above are enough for most writing.

---

## Cautions

- **Warmth should come from true, specific details.** The moment it becomes a promise about the
  future, it is the hype you are avoiding.
- **Humble writing can still take a clear position and explain its reasoning.** "I tend to think X,
  for this reason" is humble. "There are many views and who's to say" says nothing.
- **Don't fabricate the personal** (see Grounding). Leave uncertain details out, even if the result
  is less vivid.
- **Don't let the voice become a template.** The stock phrases are real, but if every paragraph opens
  with "Let's", it stops being a voice.
