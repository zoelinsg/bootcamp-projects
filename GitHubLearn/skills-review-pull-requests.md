# GitHub Skills: Review Pull Requests

## Skills Covered
- Understand what a Pull Request (PR) is and its role in collaborative development
- Learn how to open a pull request, assign yourself, write a code review, and submit comments
- Practice suggesting changes and applying them directly with GitHub's suggested change feature
- Become familiar with completing the full PR merge workflow using the GitHub interface

## Pull Request Review Workflow
1. **Create a pull request**: Open a PR from the `update-game` branch into `main` and enter a title and description such as `Update game over message`.
2. **Assign yourself**: In the `Assignees` section on the right side of the pull request page, click `assign yourself` to indicate that you are responsible for this PR.
3. **Write review comments**: In the `Files changed` tab, click `Review changes` and leave your comments.
4. **Suggest changes**: Click the ➕ icon next to a line of code and use the `Add a suggestion` feature to propose an edit in GitHub's suggested format.
5. **Apply the suggestion**: Click `Commit suggestion` and enter a commit message. GitHub will automatically apply and commit the suggested change.
6. **Merge the PR**: Return to the `Conversation` tab, click `Merge pull request`, and then optionally delete the `update-game` branch to clean up the repository.

## Additional Notes
- Pull requests are an important collaboration tool in team development because they allow others to review, comment on, suggest changes to, and even update your proposed changes
- A PR includes several tabs:
  - **Conversation**: Discussion and activity history
  - **Commits**: A list of commits included in the PR
  - **Checks**: CI/CD or automation results
  - **Files changed**: A diff view of code changes where you can leave line-by-line comments or suggestions
- You can create a **draft pull request** to prevent unfinished work from being merged too early
- It is a good practice to include review and contribution rules in `CONTRIBUTING.md`

## Repository
- [skills-review-pull-requests](https://github.com/zoelinsg/skills-review-pull-requests)