# GitHub Skills: Your First Extension for GitHub Copilot

## Skills Covered
- Understand the architecture and purpose of GitHub Copilot Extensions
- Use Node.js to build a web service that interacts with Copilot Chat
- Create a GitHub App and connect it to an Extension as a Copilot Agent
- Configure context so Copilot responses include a specific role and background
- Become familiar with local testing, debugging mode, and pre-deployment design considerations

## Additional Notes
- A Copilot Extension allows Copilot Chat to interact with external data or services, such as fetching information, triggering actions, or returning responses
- An extension includes three main parts:
  - **GitHub App**: Handles authorization and communication with Copilot
  - **Extension Service**: A Node.js web service that processes incoming requests
  - **Extension Content**: A Markdown file that defines the extension's role, tasks, and background context
- Extensions can be published to the GitHub Marketplace for others to use

## Repository
- [skills-your-first-extension-for-github-copilot](https://github.com/zoelinsg/skills-your-first-extension-for-github-copilot)