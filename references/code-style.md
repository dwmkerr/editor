# Code style

Rules for comments and type documentation when reviewing or editing code.
These layer on top of the writing style rules: everything in
`writing-style.md` still applies to comment prose (ASCII punctuation, no
X-not-Y, no drumbeat). This file adds what only shows up in code.

## Rules

### Forbidden

**Breadcrumb comments.** A comment that describes what the code was before,
what was tried, or what a conversation decided. The reader has the code and
the git history; the comment must state what holds now.

Bad:

> // A synthesized decode would throw on nearly every exchange and silently
> // blank the preview via the []-on-failure fallback.

Good:

> // Optional wire fields are omitted when empty, so decode them leniently
> // with defaults.

**Process commentary.** A comment that narrates the design discussion or
justifies the change to a reviewer. Justification belongs in the commit
message or PR description; the comment states the contract.

Bad:

> // We considered a dedicated endpoint here but reusing the state fetch
> // keeps the auth story simpler, as agreed in review.

Good:

> // Pull exchanges (the session's conversation history) from the hub.

**Consumer narration.** A comment that describes what callers or downstream
stages do with the value. This file's comments cover this file's concerns.
If the behaviour matters, it belongs in the consumer or the spec.

Bad:

> ```ts
> // Returns the raw reply text. The CLI later cuts it at the shared caps.
> export function claudeReply(h: ClaudeHook): string {
> ```

Good: the first sentence alone. What the CLI does with the value is the
CLI's concern and its spec's.

**Assumed backwards compatibility.** A comment that justifies complexity
with "older versions may...". Compatibility handling requires an agreed contract; raise it as a question
when planning. When compat handling is real and agreed, the comment names the
agreed contract; when it is not, the code should not carry it.

Bad:

> // Exchange fields are decoded leniently because older hubs may omit
> // optional values such as `cropped`.

Good (when the real contract is current, not historical):

> // The wire contract omits optional fields when empty, so decode with
> // defaults.

### Preferred

**Full doc comments on exported types and their fields.** Every exported
type, interface, and public field gets a doc comment (JSDoc, Swift doc,
godoc - whatever the language tooling reads). Tooling surfaces doc comments
in hover and generated docs, and they survive refactors that orphan inline
narration.

**Inline comments.** An inline comment earns its place by stating something
the code cannot: an invariant, a unit, an ownership rule, a reason this way
was chosen over the obvious way. If deleting the comment loses nothing, delete
it.

**Reference the source.** When a rule lives in a spec, link or name the
spec. Restated numbers and rules drift.

## Review checklist for code targets

For each comment ask:

1. Could a maintainer delete this and lose nothing? Delete it.
2. Does it describe this code's contract, or its history, its reviewers, or
   its consumers? Rewrite to the contract or delete.
3. Is there an exported type or field nearby with no doc comment? Add one.
4. Does it restate a spec value (a cap, a default, a route) that will drift?
   Replace with a reference.

Review comments with their surrounding code in view, never as extracted
comment lines: "does this code care?" is unanswerable without the code.
