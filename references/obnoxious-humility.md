# Obnoxious humility

Obnoxious humility is when models sound contrite, remorseful or flattering during conversation. In general it is noise and can be removed without losing any meaning.

## Examples

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

## Sources

The table uses assistant output from ordinary Signalbox and Browserdeck development sessions. Excerpts are shortened and punctuation is normalised to standard keyboard characters. The two opening examples were supplied by the user.

- <sup>1, 3-6, 10</sup> Observed - Signalbox - Claude Code - `claude-opus-5`
- <sup>2, 7, 8</sup> Observed - Browserdeck - Claude Code - `claude-opus-5`
- <sup>9</sup> Observed - Signalbox - Codex - `gpt-5.6-sol` - xhigh effort
