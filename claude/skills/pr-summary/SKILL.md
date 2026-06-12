---
name: pr-summary
description: Summarize PR content
disable-model-invocation: true
allowed-tools: Bash(gh *), Bash(git log *), Bash(git diff *)
---

## PR metadata

!`gh pr view --json title,body,labels,baseRefName,headRefName`

## Commits on this branch

!`git log --oneline $(git merge-base HEAD main 2>/dev/null || git merge-base HEAD master 2>/dev/null)..HEAD`

## Diff

!`gh pr diff`

## Instructions

Using the PR metadata, commit history, and diff above, generate a short summary of this pull request.

**Output the summary as raw markdown source inside a single fenced code block** so the user can copy-paste the literal markdown into GitHub. Do not render or interpret the markdown — emit the source.

Wrap the entire summary like this:

````
```markdown
<summary content here>
```
````

Do not write anything before or after the code block — no preamble, no closing remarks, no "here is the summary" text.

Content requirements for the summary inside the block:
- Start with a one-line summary of what the PR does
- Follow with a bulleted list of key changes, grouped logically
- If there are breaking changes or important side effects, call them out under a clear heading
- Keep it concise — aim for something a reviewer can scan in 10 seconds
