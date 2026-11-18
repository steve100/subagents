# do-tasks.md — run task1 and task2 in parallel

Paste or point Claude at this file to kick off both subagents.

## Instructions for the orchestrator (main Claude)

1. Launch **two subagents at the same time** (one message, two Agent calls) so they run in parallel.
   - Start each subagent with the **haiku** model: set `model: "haiku"` on both Agent calls.
2. Give each subagent only its own folder:
   - Subagent A → `task1/` — read `task1/task.md`, do the work, write `task1/result.md`
   - Subagent B → `task2/` — read `task2/task.md`, do the work, write `task2/result.md`
3. A subagent must not read or write the other task's folder.
4. When both finish, collect their `result.md` files and give the user a short combined summary.

## Tasks

| Folder | Brief                      | Output             |
|--------|----------------------------|--------------------|
| task1  | Weather for Raleigh, NC    | `task1/result.md`  |
| task2  | Local news (Raleigh/Triangle) | `task2/result.md` |

## Suggested prompt

> read and run do-tasks.md 