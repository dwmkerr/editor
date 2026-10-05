# Obnoxious humility

Obnoxious humility foregrounds the model's honesty, contrition or self-correction before the useful answer. Remove the performance and preserve any specific admission, uncertainty or limitation.

The Before column bolds the obnoxious part.

| Before | After |
| --- | --- |
| On shooting it unattended, **I have to be straight with you.** The phone half can be entirely real and unattended. The Mac half cannot. <sup>1</sup> | The phone half can be entirely real and unattended. The Mac half cannot. |
| The fix is to exclude only `permission_request` and let `question` into history. It is not a one-liner though, and **I want to be straight about why.** A question genuinely closes a turn. <sup>2</sup> | Exclude only `permission_request` and retain `question` in history. The change must also close the pending turn when a question arrives. |
| **I want to be straight:** expiry alone would not have saved this session. Expiry is what killed it. Making `session_end` gentler fixes the "I quit the agent" case and leaves this one exactly as broken. <sup>3</sup> | Expiry killed this session. Making `session_end` gentler fixes agent exit, but it does not fix this case. |
| Before the plan, let me answer the bug question properly. You asked twice for the data model explanation and **I owe you that first**, because it decides which bug blocks the recording. <sup>4</sup> | I missed your request twice. The data model decides which bug blocks the recording, so I'll explain it first. |
| Found it, and **I made a mistake.** My test hub never started, so those test events went to your real board and forwarded to fly.dev. <sup>5</sup> | I failed to start my test hub, so the test events reached your real board and were forwarded to fly.dev. |
| **One thing I overstated earlier.** I said deleting history was a serious loss. It is smaller than I implied: session contents search reads transcripts from disk, not hub history. <sup>6</sup> | I overstated the effect of deleting hub history. Session contents search reads transcripts from disk, so sessions deleted only from hub history remain searchable. |
| The recording tool was never the issue. Screen recording works, I tested it. What I actually meant was that nobody would be there to perform the demo, and **I wrongly let that become "cannot be done".** <sup>7</sup> | Screen recording works, and I tested it. Nobody would be there to perform the demo; I conflated that limitation with recording being impossible. |
| **Unattended shooting. I said it could not be done. It can, and it now does.** <sup>8</sup> | Unattended recording now works. |
| The Mac app reads `settings.json` directly, but iOS cannot. **Simplest honest answer** is a hub-served value so both surfaces agree. <sup>9</sup> | The Mac app reads `settings.json` directly, but iOS cannot. Serve the value from the hub so both surfaces agree. |
| Expect 8 to 15MB for 15 seconds. **That is the honest number** and it is the format's fault, not yours. <sup>10</sup> | Expect 8 to 15MB for 15 seconds because of the format. |

## How to identify it

Parse the JSONL first so the search covers assistant prose rather than user prompts, tool results and metadata:

```sh
HUMILITY_RE="\\b(honest (answer|status|breakdown|number|option)|to be honest|if I('m| am( being)?) honest|I (want|need|have) to be (honest|straight|candid)|I owe you|I made a (mess|mistake)|one thing I (overstated|understated)|I wrongly|I said it could not be done)\\b"

find "$HOME/.claude/projects" -type d -name subagents -prune -o -name '*.jsonl' -print0 |
  xargs -0 jq -r --arg re "$HUMILITY_RE" '
    select(.type == "assistant" and .message.role == "assistant") |
    . as $message |
    ([.message.content[]? | select(.type == "text") | .text] | join("\n")) |
    gsub("(?s)```.*?```"; "") |
    split("\n") | map(select(test("^\\s*>") | not)) | join("\n") |
    split("\n\n")[] |
    select(test($re; "i")) |
    [$message.timestamp, ($message.sessionId // ""), input_filename,
     gsub("[\\n\\t]+"; " ")] | @tsv
  '
```

A likely hit foregrounds honesty, contrition or self-correction:

- It announces honesty, candour or directness.
- It turns an ordinary correction into a confession or redemption beat.
- It dwells on the model's mistake before stating the corrected fact.

If removing the humility phrase leaves the evidence and conclusion intact, remove it. Keep accountability when it names a concrete error and corrects the record. Include the consequence when it matters, but state each point directly. "I got that wrong. `gaspode` is a remote machine" is useful accountability and should stay.

## Sources

The examples come from an ordinary session working on the public Signalbox repository. The Before excerpts are shortened to the relevant passages.

- <sup>1-10</sup> Observed - Claude Code - `claude-opus-5` - high effort
