
## Initial Prompt
I'd like a short example of running an agent or sub agent from claude cowork.  each subagent should work in its folder .. let's call them task1 and task2 and report back their answers.

in the projects folder use a folder called subagents
in the subagents folder a task1 folder and a task2 folder
create a do-tasks.md file to start task 1 and task2 in parallel

have task1 get the weather for Raleigh, NC
have task2 get the local news
Sure! Below is an example of how you can structure your project to run two subagents (task1 and task2) in parallel, each working in its own folder.

## Finished skill
There were some more turns in the conversation, see do-tasks.md for the finished skill.

## Notes:
clean-results.bat will delete the result.md files in both task1 and task2 folders so you can run the skill again.  it is not required to run the skill, but is useful for testing.

read and run do-tasks.md will start the task1 and task2 subagents in parallel, have each write its result.md in its own folder, then report both answers back to you.

The model you use to orchestrate (run) the subagents can be any model. For this simple example I started the subagent with haiku and opus.

Each subagent with Claude will use the haiku model (as currently written in do-tasks.md). You can change the model to any other model you want to use.  The subagents will run in parallel and write their results to their own result.md files.

Tested the do-tasks.claude.md with claude cowork and claude code on models haiku and opus models.  
Tested the do-tasks-codex.md with codex with model gpt-6-luna
Tested the codex do-tasks-codex.md with claude code with model haiku (does not set the model)

## File structure

```
subagents/
├── readme.md            ← this file: what the example is and how it works
├── do-tasks.md          ← orchestrator instructions; "read and run do-tasks.md" starts both subagents
├── do-tasks-claude.md   ← orchestrator instructions; claude
├── do-tasks-codex.md    ← orchestrator instructions; codex
├── clean-results.bat    ← deletes task1\result.md and task2\result.md for a fresh run
│
├── task1/               ← subagent A's folder (Raleigh, NC weather)
│   ├── task.md          ← task1 brief
│   └── result.md        ← written by subagent A on each run
│
└── task2/               ← subagent B's folder (Triangle local news)
    ├── task.md          ← task2 brief
    └── result.md        ← written by subagent B on each run
```

> `result.md` files appear only after a run and optionally can be deleted by `clean-results.bat`.