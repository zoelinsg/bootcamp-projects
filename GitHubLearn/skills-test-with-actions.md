# GitHub Skills: Test with Actions

## Skills Covered
- Understand the basic principles and use cases of GitHub Actions and continuous integration (CI)
- Build automated testing workflows so every pull request runs tests and coverage reports
- Configure coverage thresholds and branch protection rules to prevent faulty code from being merged
- Practice writing YAML workflow files and using common modules from the GitHub Actions Marketplace

## Automated Testing Workflow Summary
1. **Set up a Codespace test environment**: Create a virtual environment, install `pytest` and `coverage`, and run `pytest --cov=src --verbose` to check the current coverage.
2. **Create a basic test workflow**: In GitHub Actions, choose the `Python package` template, change the trigger to `on: pull_request`, add the `pytest --verbose` command, and commit it directly to `main`.
3. **Create a coverage workflow**: Add `python-coverage.yml` to run on pull requests, use `pytest --cov=src`, and integrate `py-cov-action` to post automated coverage comments with a threshold set to 90%.
4. **Trigger a PR and run tests**: Create a new branch named `reenable-unit-test`, uncomment tests, commit the changes, and open a pull request to verify whether the tests and coverage pass.
5. **Enable branch protection**: In repository settings, create a ruleset requiring the `python-coverage` workflow to pass before changes can be merged into `main`.
6. **Fix failing tests and improve coverage**: Update failing tests and add more tests until the coverage threshold is reached. Copilot can optionally assist with generating missing test cases. Once the workflow passes, merge the PR.

## Additional Notes
- GitHub Actions is a platform for automating CI/CD workflows and can be triggered by events such as `push`, `pull_request`, and `schedule`
- Common use cases include automated testing, deployment, static checks, coverage reporting, and packaging
- A workflow is made up of several parts:
  - **Workflow**: The overall YAML file
  - **Job**: An execution unit that can run in parallel
  - **Step**: A sequence of commands within a job
  - **Action**: A reusable module called by a step, such as `actions/checkout`

## Repository
- [skills-test-with-actions](https://github.com/zoelinsg/skills-test-with-actions)