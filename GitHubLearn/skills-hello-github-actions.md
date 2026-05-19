# GitHub Skills: Hello GitHub Actions

## Skills Covered
- Understand the basic structure of GitHub Actions, including workflows, jobs, and steps
- Build an automation workflow that posts a comment when a pull request is opened
- Practice creating YAML files, defining triggers, and setting permissions and steps

## Additional Notes
- GitHub Actions is GitHub's CI/CD automation tool that can be triggered by repository events such as pushes and pull requests
- Each automation process is called a **workflow** and is stored in the `.github/workflows/` directory as a YAML file
- A workflow can contain multiple **jobs**, and each job contains multiple **steps**
- Common use cases include automated builds, tests, deployments, PR comments, and issue management

## Workflow

```yaml
name: Custom Workflow Name
on:
  pull_request:
    types: [opened]  # Trigger when a new pull request is opened
permissions:
  pull-requests: write
jobs:
  welcome:
    name: Post welcome comment
    runs-on: ubuntu-latest
    steps:
      - run: gh pr comment "$PR_URL" --body "Welcome to the repository!"
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          PR_URL: ${{ github.event.pull_request.html_url }}
```

- You can use GitHub CLI (gh) inside workflows to interact with pull requests and issues, which is useful for automation tasks such as posting comments or adding labels
- After a workflow runs, you can review its execution history and logs in the Actions tab of the repository
- When supported, it is a good practice to require successful workflows before allowing a pull request to be merged

## Repository
- [skills-hello-github-actions](https://github.com/zoelinsg/skills-hello-github-actions)