# Needless surprise

Needless surprise is when models say something like "I found the issue - and the cause might surprise you.". As well as being a little eye-rolling, it is noise when working with LLMs and gets in the way of the answer.

## Examples

| Before | After |
| --- | --- |
| You are correct, and **the cause is probably not what you would guess**. I replayed the event stream and counted every removal. <sup>1</sup> | Quitting an agent removes its session from the board. I replayed the event stream and counted every removal. |
| You're right, and **better than you know: it already exists.** I was proposing we build something that is in the product. <sup>2</sup> | The product already has the collapsible section you described. I had proposed building it. |
| Diagnosed, and **it is not what I expected**. Pane 129 does exist and is running codex. The jump went exactly where the origin pointed. <sup>3</sup> | Pane 129 exists and is running codex. The jump went exactly where the origin pointed. |
| Worth being precise, because **it is not what it looks like**. The jump went exactly where the origin pointed. The origin itself is wrong. <sup>4</sup> | The origin points to the wrong pane, and the jump followed it exactly. |
| **Good news and bad news.** Your fix is working. The stale rows are from before the fix. <sup>5</sup> | Your fix is working. The stale rows are from before the fix; those panes disappeared when the server restarted. |
| **Stop - numbers don't reconcile. That's the clue.** <sup>6</sup> | The numbers don't reconcile. |
| **Here's the real picture:** the app can process it, but only via its GUI (no CLI I can script). <sup>7</sup> | The app can process it only through its GUI. There is no CLI I can script. |
| **Interestingly**, the handover flags this issue in a body sentence but misses it in the title. <sup>8</sup> | The handover flags this issue in a body sentence but misses it in the title. |
| **Not quite.** I have direct Notion access, but no saved skill named "tasklist" appeared when I checked. <sup>9</sup> | No saved skill named "tasklist" appeared when I checked. I have direct Notion access. |
| Existing OpenAPI **strangely** has no project routes at all. <sup>10</sup> | The existing OpenAPI has no project routes. |
| Dark Pebble **turned out to be** beige, not green. <sup>11</sup> | Dark Pebble is beige. |
| **Two things you might not expect:** items stored before the fix have different chunks from what the chunker produces today. <sup>12</sup> | Items stored before the fix have chunks that differ from the current chunker's output. |
| **The part that actually matters for you, and it's not the fine:** the flag sticks. <sup>13</sup> | The overstay flag stays on your record and brings scrutiny at every later entry. That matters more than the fine. |
| **Two things I didn't expect.** The provider has a flexible, tax-free easy-access account at 3.25%. <sup>14</sup> | The provider has a flexible, tax-free easy-access account at 3.25%. |
| But I got enough, and **something bigger turned up**.<br><br>**A large balance is sitting in your current account at 0%.** <sup>15</sup> | A large balance is sitting in your current account at 0%. |
| Yes, and it simplifies **more than you might expect** - but it opens a hole you should close at the same time. <sup>16</sup> | Yes. It simplifies the code and opens a hole you should close at the same time. |
| **Plot twist:** that SSH key authenticates as the main account, not a separate one. <sup>17</sup> | That SSH key authenticates as the main account. There is no separate account. |
| Same strategy. **Which flips the question entirely.** <sup>18</sup> | Both use the same strategy, so the original question no longer applies. |
| Would GPT be better? Probably not, **for a different reason than you might expect**. <sup>19</sup> | Probably not. Both models face the same structural problem: negative instructions are difficult to follow reliably. |


You can use the examples above to help your own agent find examples, or eliminate.

## Sources

The table uses assistant output from ordinary Signalbox development sessions and from other development and personal admin sessions. Excerpts are shortened, product details are generalised and punctuation is normalised to standard keyboard characters.

- <sup>1, 2</sup> Observed - Signalbox - Claude Code - `claude-opus-5`
- <sup>3-5</sup> Observed - Signalbox - Claude Code
- <sup>6, 7</sup> Observed - Claude Code - `claude-opus-4-8`
- <sup>8, 9</sup> Observed - Codex - `gpt-5.6-sol` - xhigh effort
- <sup>10</sup> Observed - Codex - `gpt-6-astra` - xhigh effort
- <sup>11, 14, 15</sup> Observed - Claude Code
- <sup>12</sup> Observed - Claude Code - `claude-opus-5-5`
- <sup>13</sup> Observed - Claude Code - `claude-opus-5`
- <sup>16-19</sup> Observed - Claude Code
