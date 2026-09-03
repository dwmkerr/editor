# Writing style

Core rules for writing on behalf of Dave Kerr. These apply to all content
regardless of format. Format-specific guides (social media, conference talks,
effective shell tone) live in separate reference files and layer on top.

## Rules

### Forbidden

Strip these patterns on sight.

**X-not-Y pseudo-aphoristic.** Do not use contrast for punch when a direct
statement would be clearer.

Bad:
> It should provoke feedback, not look finished.

Good:
> Give stakeholders a concrete draft they can review and improve.

**Drumbeat cadence.** Do not stack clipped fragments, numeric parallelism or
symmetrical triads.

Bad:
> One harness, two models, two tasks, blind cross-review. Half-day timebox.
> Publish whatever completes.

Good:
> We run both models in the same harness across two tasks, and each reviews the
> other's work.

**Cute labels as pseudo-insight.** Remove labels such as "why it travels", "the
big idea" and "why it matters". State the point directly. See
[examples and fixes](../docs/examples/cute-labels.md).

**Precise counts as noise.** Omit tallies that readers can see or that will
become stale.

Bad:
> Three deliverables, in priority order:

Good:
> Produce the following deliverables in priority order.

**Hype words.** Remove game-changing, revolutionary, unlock, unleash,
supercharge, elevate, transform, master when used as hype, effortlessly,
seamlessly, cutting-edge, next-level, 10x, ultimate, definitive and secret
sauce.

**"through-line" and "arc".** Do not use generic structural metaphors. Use
"thread" or describe the connection directly.

**Mic-drop.** A short declarative sentence that asserts a universal truth to
close a section. The rhythm does the persuading and the claim is usually
unsupported. Ground it in first person and make the claim specific.

Bad:
> The second is the one that teaches you.

Good:
> For the engineering work I want to do, I learn more through delivery.

Bad:
> That is where the real learning happens.

Good:
> I have learned more from shipping than from advising.

Bad:
> Warm != salesy. The whole point.

Good:
> Warmth should come from true, specific details.

**"wedge".** Do not use this word without explicit permission. Use "opening",
"way in", "start", "lever" or "gap".

**Special characters.** Use only characters available on a standard keyboard.

| Forbidden | Use instead |
|-----------|-------------|
| `—`       | `-` or `--` |
| `–`       | `-`         |
| `→`       | `->`        |
| `←`       | `<-`        |
| `"` `"`   | `"`         |
| `'` `'`   | `'`         |
| `…`       | `...`       |
| `•`       | `*` or `-`  |
| `✓`       | `[x]` or `yes` |
| `✗` `×`   | `x` or `no` |
| `≠`       | `!=`        |
| `≥` `≤`   | `>=` `<=`   |

**Emojis.** Use them only with explicit permission.

### Discouraged

**Redundant numbering.** Numbering adds noise when layout already makes the
items distinct. Use it when order or later reference matters.

**Overly formal academic tone.** Write for a colleague and use technical terms
only when they improve precision.

**Excessive exclamation marks.** Use at most one earned exclamation mark per
section.

**Full stops on headings and subtitles.** Headings and slide subtitles read
better without trailing full stops.

### Preferred

- Get to the point quickly. One idea per sentence where possible.
- Remove unnecessary adjectives and filler words.
- Short paragraphs, two to four sentences.
- State things plainly. Do not end sections with rhetorical flourishes.
- Plain language over jargon.
- Confidence without arrogance, without overstating the evidence.
- Occasional mild humor, sometimes slightly self-deprecating or ironic.
- Technical precision when it matters.
- Measured observation with nuance and reasoning. Show the logic behind a claim.

Good:
> Typically the validation layer is treated as an afterthought, which leads to
> issues. In contrast, agents can perform well here because adversarially
> challenging proposals can produce robust criticism and meaningful
> improvement.

Bad:
> Most teams hand-wave the validation layer. The product is a loop, not a
> generator. This role is the easiest to mis-hire.

Good:
> Raise an issue and the agent will open a spec PR. After iteration and merge,
> the agent creates the implementation.

Bad:
> One issue. Two PRs. Bot writes, you review.

## Formatting

- Sentence case for headings: "Getting started", not "Getting Started".
- Keep headings short and descriptive.
- Logical hierarchy; do not skip levels.
- Specify the language on code blocks.
- Include only relevant code; add comments only where the logic is not obvious.
- Bullet points for unordered items, numbered lists for sequential steps.

## Metaphors and framing

- Concrete technical metaphors are fine: "agents compile intent into code",
  "code is assembly language", "the LLM is the compiler".
- Frame industry trends through others' work first, then add your perspective.
- Do not use abstract metaphors that do not map precisely to the technical concept.
- "One thing is clear" is fine. "This changes everything" is not.

## References

External resources for expanding the rules:

- [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing)
- [conorbronsdon/avoid-ai-writing](https://github.com/conorbronsdon/avoid-ai-writing)
