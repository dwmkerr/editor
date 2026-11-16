---
name: denoise
description: Strip noisy AI writing patterns, commentary and filler from text while keeping every fact. Use when the user invokes "/denoise", or asks to denoise, de-fluff or cut the filler from a message, pasted text or file.
---

# Denoise

Cut text down to its information. Remove AI writing patterns, commentary and filler. Keep every fact, number, name, decision, caveat, limitation and action.

## Input

`/denoise [target]`

- No target: the previous assistant message.
- Quoted or pasted text: that text.
- A file path: that file. Write the result back to the file.

## Method

Delete first. Most noise is a whole sentence or clause that can go without replacement. Rewrite only when deleting would lose information or break grammar, and then use the fewest words that keep the meaning.

Do not add facts, caveats, advice, structure or new work. Do not change technical terms, code, commands, paths, quotes or numbers. Keep the original's formatting (headings, lists, tables, code blocks) unless a structure exists only to carry noise, such as a one-item list or a heading over a single line.

## Remove

**Writing patterns**

- Obnoxious humility: commentary on the writer's honesty, fault, intentions or self-correction. Keep the concrete error, its consequence and the fix. Read `references/obnoxious-humility.md` for examples.
- Cute labels: a bolded or colon-ended tag that announces significance. Keep the point that follows it. Read `references/cute-labels.md` for examples.
- X-not-Y contrast used for punch ("It should provoke feedback, not look finished"). State the positive claim directly. Keep the contrast when the rejected option is real information.
- Drumbeat cadence: stacked fragments and symmetrical triads ("One issue. Two PRs. Bot writes, you review."). Join them into a plain sentence.
- Mic-drop closers: a short line asserting a general truth to end a section ("That is where the real learning happens"). Delete it.
- Counts the reader can see ("Three things landed:", "Two options:").
- Hype words: game-changing, revolutionary, unlock, unleash, supercharge, elevate, transform, effortlessly, seamless, cutting-edge, next-level, 10x, ultimate, definitive, secret sauce.
- "through-line", "arc" and "wedge" used as structural metaphors.

**Commentary**

- Openers that acknowledge or praise the request ("Great question", "Sure!", "Good catch", "You're right to ask").
- Narration of the writer's process ("Let me check", "I'll now look at", "Looking at this more closely", "After investigating").
- Restating the question or task before answering it.
- Signposting and meta-commentary ("Here's the thing", "In short", "To be clear", "It's worth noting that", "Importantly,", "This section covers").
- Closing summaries that repeat the body.
- Generic offers ("Let me know if you need anything else", "Happy to help further"). Keep a closing question when it asks the reader for a specific decision.
- Reassurance and emotional framing ("Don't worry", "This is a common issue", "Hopefully this helps").

**Filler**

- Intensifiers and softeners that carry nothing: really, very, actually, basically, simply, just, genuinely, honestly, truly, quite, essentially, literally.
- Stacked hedges. Keep one hedge where uncertainty is real ("probably"), drop the rest ("I think it might possibly be").
- Wordy phrases: "in order to" -> "to", "due to the fact that" -> "because", "at this point in time" -> "now", "is able to" -> "can", "make a decision" -> "decide".
- Redundant pairs and repeats ("each and every", "final outcome", saying the same thing twice in adjacent sentences).

**Characters**

Use only characters on a standard keyboard: `-` for dashes, `"` and `'` for quotes, `->` for arrows, `...` for ellipsis. Remove emojis unless the original uses them as content, such as status markers in a table.

## Keep

- Every fact, number, name, path, command, link and code block.
- Uncertainty that is real, and what was not checked.
- Errors, their consequences and corrections, stated plainly.
- Concrete next steps and questions that need an answer.
- Explanations of why, when the original was answering a "why" question.

## Output

- Previous message or pasted text: return only the denoised text. No preamble, no list of changes.
- File: write the file, then give one line on what was cut.

If nothing can be cut without losing information, return the text unchanged and say so in one line.
