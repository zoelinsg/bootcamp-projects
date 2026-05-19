# GitHub Skills: Integrate MCP with Copilot

## Skills Covered
- Understand the concept and implementation of MCP (Model Context Protocol)
- Create a `.vscode/mcp.json` configuration file to connect to a GitHub MCP server
- Use Copilot Agent Mode to perform GitHub tasks such as searching issues and creating pull requests
- Integrate Copilot with MCP tools to automate issue handling, code fixes, and collaboration workflows

## MCP Integration Workflow
1. **Check the environment and initialize**: Start a Codespace and make sure Copilot Chat is enabled in VS Code with Agent Mode support
2. **Create the MCP configuration file**: Set up the Docker MCP server and token prompt in `.vscode/mcp.json`
3. **Push and enable Agent Mode**: Push the configuration file to the `main` branch so Copilot can activate the related functionality
4. **Perform MCP tasks**: Use Copilot to search for issues, create issues, select tasks, and execute them
5. **Fix code and create a pull request**: Let Copilot help update the code and open a pull request
6. **Verify and provide feedback**: Review and merge the PR, then ask Copilot to reply to the issue and complete the workflow record

## Additional Notes
- MCP can be thought of as the "USB-C of AI tools," helping GitHub Copilot connect with GitHub and other services for cross-tool automation
- Developers can use natural language to ask Copilot to search issues, compare features, write pull requests, and even reply to comments
- The `.vscode/mcp.json` file contains token settings, which are passed to the MCP server running in Docker so Copilot can access GitHub resources
- It is recommended to store sensitive information in environment variables such as `.env` files instead of hardcoding tokens
- MCP is still experimental, and feature support may vary across different server versions, so it is better to use it first in side projects or test repositories
- This skill module is especially useful for engineers working in collaborative environments, as it can improve issue management and development efficiency

## Repository
- [skills-integrate-mcp-with-copilot](https://github.com/zoelinsg/skills-integrate-mcp-with-copilot)