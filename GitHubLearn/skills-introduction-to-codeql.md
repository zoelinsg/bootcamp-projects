# GitHub Skills: skills-introduction-to-codeql

## 任務技能
- 認識 GitHub Code Scanning 與 CodeQL 靜態分析工具的功能與用途  
- 啟用 CodeQL 分析流程，並在 PR 中觸發掃描與追蹤弱點  
- 學會檢視、分類與處理掃描產生的安全性警示  
- 練習如何修正實際程式碼中的漏洞，並透過 CodeQL 驗證結果  

## CodeQL 操作流程
1. **啟用 CodeQL 掃描**：在 repo 設定中開啟 Advanced Security，點選 CodeQL 預設設定啟用。啟用後會自動觸發第一次掃描。
2. **模擬漏洞建立 PR**：編輯 `routes.py` 注入 SQL injection 式的語句（例如 `"SELECT * FROM books WHERE name LIKE '%" + name + "%'"`），建立新分支與 PR。
3. **等待 CodeQL 分析**：PR 建立後 CodeQL 將自動掃描變更內容，產出安全警示並提供資料流程追蹤（從來源到漏洞觸發點）。
4. **檢查與分類警示**：從 Security > Code Scanning 看到開啟的警示，內含漏洞類型、CWE 編號、修復建議與審核紀錄。
5. **關閉與重啟警示**：可透過 UI 將警示標示為「已關閉（如：只用於測試）」，也可重新開啟並加註原因，過程都有審核軌跡紀錄。
6. **實際修正漏洞**：改寫 SQL 為參數化語法，直接 commit 到 main，CodeQL 會再次自動掃描並關閉該警示。

## 補充說明
- GitHub Code Scanning 是 GitHub Advanced Security（GHAS）的一部分，可整合在 CI/CD 工作流程中進行 SAST 分析（靜態應用安全測試）
- CodeQL 是一種靜態分析工具，可以幫你找出像是 SQL Injection、XSS 等常見漏洞，內建多種預設查詢規則（query suite）
- 公開 repo 可免費使用所有 GHAS 功能，私有 repo 則需有付費方案
- 預設的 CodeQL 設定會自動偵測語言、使用預設規則集，並在 PR 或定期排程中執行掃描
- **CWE（Common Weakness Enumeration）**：一套通用的弱點分類系統，CodeQL 掃描結果常以此編號標示問題類型
- **Sink / Source**：在安全分析中，source 指使用者輸入的來源，sink 指輸入被使用的地方，CodeQL 可視覺化整個資料流追蹤

## Repository
- [skills-introduction-to-codeql](https://github.com/zoelinsg/skills-introduction-to-codeql)
