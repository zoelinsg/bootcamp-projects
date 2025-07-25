# GitHub Skills: test with actions

## 任務技能
- 了解 GitHub Actions 與 CI（持續整合）的基本原理與用途  
- 實作自動化測試流程，讓每次 PR 都能執行測試與覆蓋率報告  
- 設定 Coverage 門檻與 Branch 保護機制，避免錯誤程式碼被合併  
- 熟悉 YAML Workflow 檔案編寫與 Actions Marketplace 常用模組  

## 測試自動化流程摘要
1. **啟動 Codespace 測試環境**：建立虛擬環境、安裝 `pytest` 與 `coverage`，執行指令 `pytest --cov=src --verbose` 檢查目前覆蓋率
2. **建立基本測試工作流程（Workflow）**：在 GitHub Actions 中選擇「Python package」範本，修改為 `on: pull_request` 觸發，加入 `pytest --verbose` 指令，並直接提交至 main
3. **建立覆蓋率工作流程**：建立 `python-coverage.yml`，在 pull request 時觸發執行，使用 `pytest --cov=src` 加上 py-cov-action 自動留言，門檻設定為 90%
4. **觸發 PR 與測試**：建立新分支 `reenable-unit-test`，取消註解測試、提交並發 PR，觀察 Coverage 與測試是否成功
5. **啟用 Branch 保護**：至 Settings 中設定 ruleset，要求 `main` 分支合併前必須通過 `python-coverage` 工作流程
6. **修正測試錯誤與提高覆蓋率**：修改失敗的測試，新增額外測試至覆蓋率達標（可透過 Copilot 協助自動補齊），工作流程成功後合併 PR

## 補充說明
- GitHub Actions 是一套可自動化 CI/CD 的平台，可設定在 push、pull request、schedule 等事件下執行指定流程
- 常見應用場景：自動執行測試、自動佈署、靜態檢查、測試覆蓋率統計、自動打包等
- Workflow 由以下幾個結構組成：  
  - **Workflow**：整體流程檔案（.yml）  
  - **Job**：執行單元，可平行跑  
  - **Step**：指令序列，每個 job 內的步驟  
  - **Action**：每個 step 可以呼叫既有的開源模組（如 `actions/checkout`）  

## Repository
- [skills-test-with-actions](https://github.com/zoelinsg/skills-test-with-actions)
