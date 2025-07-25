# GitHub Skills: introduction to repository management

## 任務技能
- 學會設定分支保護規則，避免誤刪、直接推送與強制覆蓋  
- 建立 `.gitignore`，排除不必要或敏感的本地檔案  
- 撰寫 `CONTRIBUTING.md` 與 `CODEOWNERS`，讓多人協作更有規範  
- 加入 Code of Conduct 與 Issue Template，建立良好開源社群文化  
- 啟用 Dependabot 與 Code Scanning，主動追蹤安全風險  
- 設定安全政策與通報流程，保障系統安全性與回報機制  

## Repository 管理流程
1. **建立分支保護規則**：設定 ruleset 限制 `main` 分支的直接修改、強制推送與刪除，確保核心程式碼安全
2. **新增 `.gitignore`**：排除像是 `.env`、`__pycache__`、`/venv/` 等本機或 IDE 產生的檔案，保持 repo 乾淨
3. **建立 `CONTRIBUTING.md`**：撰寫開發流程與規範，協助新加入者快速上手，例如如何建立分支、提交 PR、Python 環境建置等
4. **設定 `CODEOWNERS`**：指派重要模組（如核心後端檔案）由特定人員審查，避免關鍵程式碼被任意更動
5. **加入合作者**（選填）：透過設定新增特定 GitHub 使用者為協作者，授權編輯專案內容
6. **加入 Code of Conduct**：建立社群互動規範，定義尊重、包容的行為標準與違規處理方式
7. **建立 Issue Templates**：設計標準化的 bug 回報與新功能需求格式，提升回報品質與開發效率
8. **啟用 Dependabot**：自動追蹤 Python 套件依賴更新，出現漏洞時可自動開 PR 修補
9. **開啟 Code Scanning**：使用 CodeQL 掃描專案程式碼中的潛在漏洞，並啟用 Copilot Autofix 嘗試自動修復
10. **建立 `SECURITY.md`**：定義安全性通報流程，教學校師生如何私下通報漏洞，避免敏感資訊外洩

## Repository
- [skills-introduction-to-repository-management](https://github.com/zoelinsg/skills-introduction-to-repository-management)
