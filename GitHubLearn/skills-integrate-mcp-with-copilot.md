# GitHub Skills: integrate mcp with copilot

## 任務技能
- 理解 MCP（Model Context Protocol）的概念與實作方式  
- 建立 `.vscode/mcp.json` 設定檔，串接 GitHub MCP server  
- 使用 Copilot 的 Agent 模式操作 GitHub 任務（搜尋 issue、產生 PR 等）  
- 整合 Copilot 與 MCP 工具，自動化 issue 處理、修正與溝通流程  

## MCP 整合流程
1. **環境確認與初始化**：啟動 Codespace，確認 VS Code 的 Copilot Chat 已啟用並支援 Agent 模式  
2. **建立 MCP 設定檔**：在 `.vscode/mcp.json` 設定 Docker MCP server 與 token 提示
3. **推送與啟用 Agent**：將設定檔 push 到 main 分支，Copilot 會自動啟用相關功能
4. **執行 MCP 任務**：使用 Copilot 搜尋功能、建立 issue、挑選並執行任務
5. **修正與建立 PR**：Copilot 協助修改程式碼並建立 PR
6. **驗證與回饋**：審查後 merge PR，請 Copilot 回覆 issue 並完成紀錄

## 補充說明
- MCP 可以想像成 AI 世界裡的「USB-C」，幫助 GitHub Copilot 跟 GitHub 本身或其他服務互通，實現跨工具的工作自動化
- 開發者可以用自然語言請 Copilot 幫忙查 issue、比功能、寫 PR，甚至評論回覆
- `.vscode/mcp.json` 裡面會設定 token，這個 token 會傳給 docker 裡的 MCP server，讓 Copilot 有權限操作
- 建議用環境變數（像是 `.env`）存放敏感資訊，避免把 token 寫死在檔案裡
- MCP 目前仍屬實驗階段，不同版本的 server 功能支援不一，建議優先在 side project 或測試用 repo 上操作
- 這個技能模組非常適合有團隊協作需求的工程師，能顯著提升 issue 管理與開發協作效率

## Repository
- [skills-integrate-mcp-with-copilot](https://github.com/zoelinsg/skills-integrate-mcp-with-copilot)


