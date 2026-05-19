# GitHub Skills: Introduction to Repository Management

## Skills Covered
- Learn how to configure branch protection rules to prevent accidental deletion, direct pushes, and force overwrites
- Create a `.gitignore` file to exclude unnecessary or sensitive local files
- Write `CONTRIBUTING.md` and `CODEOWNERS` to improve collaboration standards
- Add a Code of Conduct and Issue Templates to support a healthy open source community
- Enable Dependabot and Code Scanning to proactively track security risks
- Define security policies and reporting workflows to improve project security and vulnerability handling

## Repository Management Workflow
1. **Create branch protection rules**: Configure rulesets to restrict direct changes, force pushes, and deletion on the `main` branch to protect core code.
2. **Add a `.gitignore` file**: Exclude files such as `.env`, `__pycache__`, and `/venv/` that are generated locally or by IDEs to keep the repository clean.
3. **Create `CONTRIBUTING.md`**: Write contribution guidelines to help new contributors get started, such as how to create branches, submit pull requests, and set up a Python environment.
4. **Set up `CODEOWNERS`**: Assign important modules, such as core backend files, to specific reviewers so critical code cannot be changed without review.
5. **Add collaborators** *(optional)*: Grant selected GitHub users permission to edit the repository by adding them as collaborators.
6. **Add a Code of Conduct**: Define expectations for respectful and inclusive behavior and explain how violations will be handled.
7. **Create Issue Templates**: Standardize bug reports and feature requests to improve reporting quality and development efficiency.
8. **Enable Dependabot**: Automatically monitor dependency updates and open pull requests to fix known vulnerabilities.
9. **Enable Code Scanning**: Use CodeQL to scan the project for potential vulnerabilities and optionally enable Copilot Autofix to assist with remediation.
10. **Create `SECURITY.md`**: Define the security disclosure process so users can report vulnerabilities privately without exposing sensitive information.

## Repository
- [skills-introduction-to-repository-management](https://github.com/zoelinsg/skills-introduction-to-repository-management)