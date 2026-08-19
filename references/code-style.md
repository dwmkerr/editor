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

**Inline comments.** The code is imperative: it already states what happens.
A comment earns its place two ways: it explains why (an invariant, a unit, an
ownership rule, a reason this way was chosen over the obvious way), or it
explains code that is opaque to its likely reader.

Comment density scales with how hard the code is to read. A typed application
codebase needs sparse why-comments. A shell script warrants step-by-step
narration because shell is hard to read - see
https://github.com/dwmkerr/effective-shell-installer/blob/main/effective.sh
for the reference example (on the verbose end, and the right register for
complex code readers may struggle with):

> ```sh
> # We put everything in braces - this is to ensure we execute only when the
> # whole script is downloaded.
> ```

> ```sh
> # Only set pipefail in bash - dash and other POSIX shells don't support
> # this option.
> ```

**Reference the source.** When a rule lives in a spec, link or name the
spec. Restated numbers and rules drift.

## Review checklist for code targets

For each comment ask:

1. Does it explain why, or decode something opaque to the likely reader? If
   it only restates readable code, delete it.
2. Does it describe this code, or its history, its reviewers, or its
   consumers? Rewrite to this code's concern or delete.
3. Is the comment density right for the code's opacity - narration for shell
   and other hard-to-read code, sparse why-comments for typed application
   code?
4. Is there an exported type or public field nearby with no doc comment?
5. Does it restate a value another file owns (a cap, a default, a route)
   that will drift? Replace with a reference.

Review comments with their surrounding code in view, never as extracted
comment lines: whether code is opaque is unanswerable without the code.
