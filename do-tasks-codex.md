# do-tasks.md Run two Raleigh research tasks in parallel

## Instructions for Codex

Act as the coordinator. From the directory containing this file, launch
two subagents, one for each assignment below. Start both before waiting
for either to finish.

| Subagent | Assignment | Read | Write |
|----------|------------|------|-------|
| A | Weather for Raleigh, NC | `task1/task.md` | `task1/result.md` |
| B | Local news for Raleigh and the Triangle | `task2/task.md` | `task2/result.md` |

Give each subagent only its own assignment and the following instructions:

1. Read your assigned `task.md` and follow its instructions.
2. Keep all local file reads and writes within your assigned task folder.
   Do not inspect or modify the other task's folder.
3. Use current sources for your research. Include source links and the
   relevant forecast or news dates in your result.
4. Write your findings to your assigned `result.md` before reporting
   completion. If you cannot finish, report what blocked you.

After both subagents finish, read `task1/result.md` and `task2/result.md`.
Give the user a short combined summary with a **Weather** paragraph and a
**Local news** paragraph. If either result is missing or incomplete,
identify the gap.
