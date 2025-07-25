# GitHub Skills: your first extension for github copilot

## 任務技能
- 認識 GitHub Copilot Extension 架構與用途  
- 使用 Node.js 建立 Web Service 與 Copilot Chat 互動  
- 建立 GitHub App 串接 Extension 作為 Copilot Agent  
- 設定 context，讓 Copilot 回應具備特定角色與背景  
- 熟悉本地測試、Debug 模式與部署前設計考量  

## 補充說明
- Copilot Extension 是讓 Copilot Chat 可以與外部資料或服務互動的介面，例如查資料、執行動作、回傳內容
- 一個 Extension 包含三個元素：  
  - GitHub App：處理授權與與 Copilot 溝通  
  - Extension Service：Node.js Web Service，處理訊息請求  
  - Extension Content：描述角色任務與背景的 Markdown 檔案  
- 可將 Extension 發佈至 GitHub Marketplace 供他人使用

## Repository
- [skills-your-first-extension-for-github-copilot](https://github.com/zoelinsg/skills-your-first-extension-for-github-copilot)