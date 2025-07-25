# GitHub Skills: review pull requests

## 任務技能
- 了解什麼是 Pull Request（PR）與其在協作流程中的角色  
- 學會開啟 PR、指派負責人、撰寫與提交 code review  
- 練習提出建議修改並直接套用 suggested change 功能  
- 熟悉使用 GitHub 介面完成 PR 合併與流程收尾  

## Pull Request 審查流程
1. **建立 Pull Request**：從 `update-game` 分支建立 PR 到 `main`，輸入標題與描述，如「Update game over message」
2. **指派自己為負責人**：在 PR 右側的 Assignees 區塊點選「assign yourself」，代表你是此 PR 的主要負責人
3. **撰寫 Review 留言**：在 `Files changed` 頁面點選 `Review changes`，留下評論
4. **提出修改建議**：對某行程式碼點擊 ➕，使用「Add a suggestion」功能提出修改建議（GitHub 會產生可直接套用的格式）
5. **套用修改建議**：按下「Commit suggestion」並填入 commit message，GitHub 會自動套用並提交
6. **合併 PR**：回到 Conversation 頁面，點選「Merge pull request」完成合併，之後可選擇刪除 `update-game` 分支清理 repo

## 補充說明
- Pull Request 是團隊開發中重要的協作工具，可讓他人針對你提交的變更提供意見、審查、建議甚至修改  
- PR 包含多個標籤頁：  
  - **Conversation**：討論區與活動紀錄  
  - **Commits**：列出本次 PR 的提交紀錄  
  - **Checks**：顯示 CI/CD 或自動化檢查結果  
  - **Files changed**：顯示程式碼變更的 diff，可進行逐行評論或提出修改建議  
- 可以建立「草稿 PR」來避免未完成的內容被誤合併  
- 建議專案中搭配 CONTRIBUTING.md 說明如何參與與 review 的規則與標準  

## Repository
- [skills-review-pull-requests](https://github.com/zoelinsg/skills-review-pull-requests)
