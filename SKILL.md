---
name: editor
description: Edit or review a file using Dave's writing style, routed to GPT via Codex by default. Use when the user invokes "/editor" or says "use my editor skill".
---

# Editor

Edit or review a file against Dave's writing style. By default, the skill
runs the review through GPT via Codex, which can expose structural patterns
that the current session's model misses.

## Examples

```
/editor "clean this up"
/editor gpt "what are the top 10 things you'd rewrite in qb-scholar. dont change"
/editor gpt "how would you rewrite the skill md"
/editor "don't rewrite, tell me what is wrong"
/editor claude "simplify section 6"
/editor gpt "restructure this file into Forbidden/Discouraged/Preferred. writing-style.md"
```

The target file is usually clear from conversation context or named in the
instructions. The model defaults to `gpt`.

## Arguments

`/editor [model] "<instructions>"`

- **model** - selects a model. Defaults to `gpt`. Available: `gpt`, `o3`,
  `claude`. If the first word does not match a model alias, treat it as the
  start of the instructions and use `gpt`.
- **instructions** - what to do. If the instructions contain "list", "check",
  "review", or "don't rewrite", return issues only. Otherwise rewrite the file.

## What to do

1. **Identify** the target file from the instructions or conversation context.

2. **Write a prompt file.** Write it to the scratchpad directory. Include:
   - The content of `writing-style.md` and `review-examples.md` from this
     skill's `references/` directory.
   - The content of `code-style.md` when the target is code (source files, or
     prose that documents code such as comments in a diff).
   - The content of `effective-shell-style.md` only when the instructions
     mention that tone.
   - The content of the target file. For code targets, include the code
     itself, never extracted comment lines alone: judging a comment needs the
     code it annotates in view.
   - The user's instructions.
   - This postscript:

     For edit mode:
     > Apply the Forbidden rules: fix every violation. Apply Discouraged rules
     > where the pattern is clearly noise. Apply Preferred rules where you have
     > high confidence the change improves the text.

     For review mode:
     > Flag every Forbidden violation with the line, the problem, and a fix.
     > Flag Discouraged patterns where they add noise. Suggest Preferred
     > improvements where they would strengthen the text.

     For code targets in edit mode, append:
     > Apply the code style rules: remove breadcrumb comments, process
     > commentary, consumer narration, and assumed backwards compatibility.
     > Add doc comments to exported types and public fields where you have
     > high confidence in the contract.

     For code targets in review mode, append:
     > Apply the code style rules: flag breadcrumb comments, process
     > commentary, consumer narration, and assumed backwards compatibility.
     > Suggest doc comments for exported types and public fields that lack
     > them.

3. **Dispatch.**
   - If model is `claude`, run directly in the current session. No dispatch
     script needed.
   - Otherwise, run `dispatch.sh` from this skill's directory:
     ```
     dispatch.sh <model> <prompt-file>
     ```
     The dispatch script handles harness-specific CLI details. To add a new
     model or harness, edit `dispatch.sh`.

4. **Present results.**
   - **Review mode:** show a numbered issue list with line/quote, problem,
     and fix.
   - **Edit mode:** show a brief summary using relevant before/after examples.
     If the user approves the changes, write the file.
