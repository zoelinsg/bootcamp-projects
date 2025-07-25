# GitHub Skills: hello github actions

## 任務技能
- 了解 GitHub Actions 基本架構（Workflow > Job > Step）
- 實作自動化工作流程，根據 PR 開啟自動留言
- 練習建立 YAML 檔、指定觸發事件、設定步驟與權限

## 補充說明
- GitHub Actions 是 GitHub 提供的 CI/CD 自動化工具，可根據 repo 的各種事件（如 push、pull request）觸發動作
- 每個自動化流程稱為 **workflow**，放在 `.github/workflows/` 目錄下，以 YAML 格式撰寫
- Workflow 中可包含多個 **job**（單一執行單元），每個 job 又包含多個 **step**（具體動作）
- 常見應用包含自動建置、測試、部署、發 PR 留言、管理 Issue 等等

## Workflow 
```yaml
name: 自訂工作流程名稱
on:
  pull_request:
    types: [opened]  # 當有新的 PR 被開啟時觸發
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
- 可以透過 GitHub CLI（`gh`）在 workflow 中操作 PR/Issue，非常適合做自動化留言、標籤等操作
- Workflow 完成後可在 GitHub Repo 的 `Actions` 頁籤查看歷史紀錄與執行 log
- 建議在支援的情況下設定合併條件，例如：「PR workflow 必須成功才可 merge」

## Repository
- [skills-hello-github-actions](https://github.com/zoelinsg/skills-hello-github-actions)
