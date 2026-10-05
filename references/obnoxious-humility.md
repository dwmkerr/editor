# Obnoxious humility

Obnoxious humility foregrounds the model's honesty, contrition or self-correction before the useful answer. It can be sincere, reasonable and still unnecessary in conversation. Judge what the reader needs, without trying to decide whether the model is being humble enough or accepting blame correctly.

Remove commentary that adds no task information. Preserve concrete errors, who caused them when relevant, consequences, corrected facts, uncertainty, limitations and next actions. A sentence does not earn its place just because it admits fault.

"The handover I was given was wrong" and "You are right to push, and my method was wrong" both qualify when they only introduce the useful answer. Cut them and state the actual discrepancy or correction, if the source provides one. Neither needs a judgement about whether it counts as blame or legitimate accountability. If the user asks why the mistake happened, keep the explanation that answers them.

## Examples

The Before column bolds removable commentary. Excerpts are shortened; rewrites retain the relevant facts. Where an excerpt contains only commentary, deletion is enough. The `check-rendering.mjs` example includes the preceding progress update for context.

| Before | After |
| --- | --- |
| On shooting it unattended, **I have to be straight with you.** The phone half can be entirely real and unattended. The Mac half cannot. <sup>1</sup> | The phone half can be entirely real and unattended. The Mac half cannot. |
| **That was my fault and the kind I least like:** I shipped a change to your running app without testing it first, and you found it as a crash dialog. **The rule I've been applying to Codex all session - never accept a verification you haven't run - I didn't apply to myself.** <sup>2</sup> | I shipped an untested change to your running app, which crashed. |
| Before the plan, let me answer the bug question properly. **You asked twice for the data model explanation and I owe you that first**, because it decides which bug blocks the recording. <sup>3</sup> | The data model decides which bug blocks the recording, so I'll explain it first. |
| Found it, and **I made a mistake.** My test hub never started, so those test events went to your real board and forwarded to fly.dev. <sup>4</sup> | I failed to start my test hub, so the test events reached your real board and were forwarded to fly.dev. |
| The recording tool was never the issue. Screen recording works, I tested it. **What I actually meant was that** nobody would be there to perform the demo, and **I wrongly let that become "cannot be done".** <sup>5</sup> | Screen recording works, and I tested it. The limitation is that nobody would be there to perform the demo. |
| **You are right on the recording and I was too cautious. Let me correct that.** <sup>6</sup> | Delete this introduction and start with the recording explanation. |
| **My fault, procedurally.** I restarted the Dock while the app was running, so it rebuilt its tile cache from the live process and kept the string it already had. <sup>7</sup> | I restarted the Dock while the app was running, so it rebuilt its tile cache from the live process and kept the old string. |
| `ERR_BLOCKED_BY_CLIENT` - the domain allowlist is blocking. That means the restricted fixture session is active when those checks run, instead of the unrestricted one. Let me confirm which check leaves it that way.<br><br>**Found it, and it's mine, not Codex's.** `check-rendering.mjs` - the check I wrote - poisons the shared app for every check after it. <sup>8</sup> | The check I wrote in `check-rendering.mjs` leaves the restricted fixture session active. Its domain allowlist blocks later checks with `ERR_BLOCKED_BY_CLIENT`. |
| The sandbox cannot launch Chrome, so **I cannot honestly claim** a visual browser inspection. <sup>9</sup> | The sandbox cannot launch Chrome, so I could not inspect the page visually. |
| **One thing I overstated earlier.** I said deleting history was a serious loss. It is smaller than I implied: session contents search reads transcripts from disk, not hub history. <sup>10</sup> | Sessions deleted only from hub history remain searchable because search reads transcripts from disk. |

## Decide what to remove

Try deleting the clause, sentence or paragraph. Does the reader lose information needed to understand the result or act on it: a corrected fact, a relevant error, its cause or consequence, meaningful uncertainty, a limitation or a next action? If nothing useful changes, delete it. If only part is useful, retain that part. Do not invent a diagnosis or completed fix to fill the space.

"I got that wrong. `gaspode` is a remote machine" can usually become "`gaspode` is a remote machine." When the earlier claim itself needs retracting, say "My earlier claim that `gaspode` was local was incorrect; it is a remote machine." A generic admission before that correction adds nothing.

Keep "I deleted the wrong file; the backup is from yesterday" and "I have not run the integration tests." They tell the reader what happened, who did it, or what remains unknown. Removing self-commentary must not conceal responsibility, turn a planned action into a completed one, or remove a limitation. Keep explanations of the model's method when the user asks for them. An apology the user explicitly wants to write also has a purpose.

## How to identify it

Search by conversational function as well as vocabulary. These are candidate phrases, not automatic violations; inspect the surrounding answer. The phrases below are search seeds, including constructed variants, rather than additional observed examples.

| Look for | Search seeds | Inspect for |
| --- | --- | --- |
| Praise attached to a correction | "you are right to push", "fair criticism", "thanks for holding me to that" | Approval of the user before the corrected answer. |
| Generic acceptance of fault | "that's on me", "my method was wrong", "I own that", "no excuses" | An admission without a concrete error or consequence. |
| A story about where the mistake came from | "the handover was wrong", "I inherited", "the previous agent", "after compaction" | Background that does not explain a relevant discrepancy or answer a question. |
| Good intentions | "I was trying to be thorough", "I meant to help", "my intention was" | An explanation of motives that adds nothing to the result or next action. |
| Self-assessment | "sloppy", "too cautious", "I overcomplicated this", "the kind I least like" | A judgement of the model where the reader needs the finding. |
| Honesty by comparison | "I could have called it flakiness", "I won't pretend", "mine, not the model's" | An imagined excuse or allocation of credit and blame. |
| Correction announcements | "I need to correct something", "let me reset", "what I should have said" | A promise to give the correction that the next sentence already gives. |
| Promises of improvement | "properly this time", "from now on", "I will be more careful", "lesson learned" | A promise without a specific change in procedure. |
| Reassurance about the relationship | "you deserve better", "I owe you", "I understand your frustration" | Commentary about the interaction that the task does not need. |
| Honesty attached to ordinary nouns | "honest sequencing", "honest number", "candid assessment", "transparent summary" | A claim about the answer's virtue where the answer itself is sufficient. |

Phrase searches miss paraphrases. Use these additional passes:

- **Follow user corrections.** Find user turns such as "that is wrong", "you already said that" or "why did you do that?", then read the next assistant reply. Look for agreement, self-criticism and a promise before the actual answer. Preserve the explanation when the user asked why.
- **Read the edges.** Inspect opening paragraphs, headings, bold lead-ins and closing sentences independently of keyword matches. "What I should have done" can announce a whole unnecessary section. A useful answer can also acquire a final "I should have caught this sooner".
- **Check what each sentence is about.** Flag passages about the model's character, intentions or feelings. Also check impersonal forms such as "a lesson learned" and "an honest assessment". First-person statements about actions and evidence often need to stay.
- **Collapse repeated admissions.** Read the whole reply. Agreement, an apology, a confession heading and a closing promise can each seem mild while repeating the same point. Keep the concrete correction once.
- **Compare the facts before and after deletion.** List what the reader can now know or do. A paragraph that changes only how contrite, careful or candid the model sounds is a deletion candidate.
- **Search for variations of a found pattern.** From "properly this time", try "do it right", "this time for real" and "the care it deserves". From "I could have called it flakiness", look for imagined excuses followed by a claim of honesty. Review a sample of paragraphs with no keyword matches to find new forms.

When mining logs, parse the message format first. Search assistant prose, excluding reasoning, tool results, copied documents, quotations and editing examples. Keep the preceding user request and adjacent paragraphs for judgement. Deduplicate resumed or indexed copies. Raw matches are candidates, not a count of violations. Record the source and model when available; distinguish observed excerpts from constructed variants.

For a first pass over one Claude Code project's top-level JSONL sessions, set `SESSION_DIR` to that project's session directory. This extracts prose and removes fenced code and blockquotes; manually reject any remaining quoted or generated sample text:

```sh
SESSION_DIR="/path/to/project-sessions"
HUMILITY_RE="\\b(honest|honestly|candid|transparent|you (are|were) right|you.re right|fair (point|criticism|pushback)|on me|my (fault|mistake|method)|I (owe|own|overstated|understated|wrongly)|I (was|got|made).{0,40}(wrong|mistake|mess)|I (want|need|have) to be (honest|straight|candid)|I (was trying|meant|intended)|I (should|could) have|handover|previous agent|properly this time|from now on|more careful|lesson learned|you deserve|your frustration)\\b"

rg --files --hidden --null "$SESSION_DIR" -g '*.jsonl' -g '!**/subagents/**' |
  xargs -0 jq -r --arg re "$HUMILITY_RE" '
    select(.type == "assistant" and .message.role == "assistant") |
    . as $message |
    (.message.content |
      if type == "string" then .
      else [.[]? | select(.type == "text") | .text] | join("\n") end) |
    gsub("(?s)```.*?```|~~~.*?~~~"; "") |
    split("\n") | map(select(test("^\\s*>") | not)) | join("\n") |
    split("\n\n")[] |
    select(test($re; "i")) |
    [$message.timestamp, ($message.sessionId // ""), input_filename,
     gsub("[\\n\\t]+"; " ")] | @tsv
  '
```

## Sources

The table uses assistant output from ordinary Signalbox and Browserdeck development sessions. Excerpts are shortened and punctuation is normalised to standard keyboard characters. The two opening examples were supplied by the user.

- <sup>1, 3-6, 10</sup> Observed - Signalbox - Claude Code - `claude-opus-5`
- <sup>2, 7, 8</sup> Observed - Browserdeck - Claude Code - `claude-opus-5`
- <sup>9</sup> Observed - Signalbox - Codex - `gpt-5.6-sol` - xhigh effort
