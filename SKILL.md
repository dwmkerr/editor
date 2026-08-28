---
name: editor
description: Edit or review a file using Dave's writing style, routed to GPT via Codex by default. Also cleans a file in the current session via "/editor quick", and re-explains the last message in plain English via "/editor wtf". Use when the user invokes "/editor" or says "use my editor skill".
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
/editor quick
/editor wtf
```

The target file is usually clear from conversation context or named in the
instructions. The model defaults to `gpt`.

## Arguments

`/editor [model] "<instructions>"`

- **model** - selects a model. Defaults to `gpt`. Available: `gpt`, `luna`,
  `o3`, `claude`. If the first word does not match a model alias, treat it as the
  start of the instructions and use `gpt`.
- **quick** - clean the file in the current session, described under "quick
  mode" below. Takes no model.
- **wtf** - re-explain the last message in plain English. Takes no file and no
  model, and is described under "wtf mode" below.
- **instructions** - what to do. If the instructions contain "list", "check",
  "review", or "don't rewrite", return issues only. Otherwise rewrite the file.

## Say who did the work

End every response, in every mode, with a single line naming the harness, how
it ran, and the exact model. Take the model from the flag `dispatch.sh` passed
to the CLI. Never guess it.

```
Editor: Codex, dispatched as a new process, model gpt-5.6-sol
Editor: Claude, current session, model claude-opus-5
```

Name the harness you are actually running in. `quick` and `wtf` always run in
the current session, so they report the current harness and model.

## quick mode

`/editor quick` is for a fast pass when the copy does not have to be right,
only free of the worst noise. Do it in the current session with whatever model
and harness is running, and do not dispatch.

- Read the Forbidden section of `references/writing-style.md`. Skip the other
  references.
- Fix the violations in the file, plus any obvious filler.
- Leave anything that needs judgement, and say so in one line.

Write the file and give a one-line summary of what was cut, then the harness
line. For a careful pass, use the default `/editor` instead.

## wtf mode

`/editor wtf` means the last message was hard to follow. Rewrite it in the
current session, with no dispatch and no file involved:

- Say the main point first, in plain English.
- Drop the jargon, or explain any term that has to stay.
- Keep it short. A few sentences or a handful of bullets.

Rewrite the same content. Do not add new work, new caveats or new detail. End
with the harness line.

## What to do

These steps cover review and edit mode. For `quick` and `wtf`, use the
sections above.

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
     > Apply the code style rules: fix every violation.

     For code targets in review mode, append:
     > Flag every code style violation with the line, the problem, and a fix.

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

End with the harness line, as described above.
