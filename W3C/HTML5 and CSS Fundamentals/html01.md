# Module 1: My First Web Page

## 1. HTML 與 Web 簡史
- 1989 年 Tim Berners-Lee 提出 Web 概念
- 三大基礎：
    - URL：定位資源
    - HTTP：傳輸協定
    - HTML：內容結構
- 比喻：地址（URL）→ 郵差（HTTP）→ 信件格式（HTML）

## 2. 三大技術簡介
| 技術 | 功能 | 範例 |
| --- | --- | --- |
| HTML5 | 定義內容 | `<header>`, `<section>` |
| CSS | 美化頁面 | Flexbox, Grid |
| JavaScript | 動態互動 | DOM, Fetch |
- HTML = 骨架、CSS = 外觀、JS = 行為

## 3. 超文字與瀏覽器起源
- 超文字（Hypertext）：透過連結跳轉內容
- Mosaic（1993）：第一款圖形化瀏覽器
```html
<body>
  <h1>A Tale of Two Cities</h1>
  <p>It was the best of times, it was the worst of times…</p>
</body>
```

## 4. 建立第一支 HTML
```html
<!DOCTYPE html>
<html lang="zh-Hant">
  <head>
    <meta charset="utf-8" />
    <title>My First HTML Page</title>
  </head>
  <body>
    Hello HTML!
  </body>
</html>
```
| 標籤 | 功能 |
| --- | --- |
| `<!DOCTYPE>` | 宣告文件型別 |
| `<head>` | 設定資訊 |
| `<body>` | 顯示內容 |

## 5. 線上編輯器
- **JSBin**：即時預覽，支援歷史版本
- **CodePen**：HTML/CSS/JS 三欄設計，適合作品分享

## 6. 本機開發環境（VS Code）
1. 安裝 VS Code：https://code.visualstudio.com/
2. 擴充 Live Server：即時預覽
3. 快捷鍵：
    - 格式化：Windows `Shift+Alt+F`，Mac `⇧⌥F`
    - 側邊欄切換：`Ctrl+B` / `⌘B`

## 7. 字元實體
| 字元 | HTML 實體 | 說明 |
| --- | --- | --- |
| `<` | `&lt;` | 小於號 |
| `>` | `&gt;` | 大於號 |
| `&` | `&amp;` | and 符號 |
| `"` | `&quot;` | 雙引號 |
| 空白 | `&nbsp;` | 不換行空格 |

## 8. HTML 撰寫建議
- 標籤成對、縮排一致
- 屬性用雙引號
- 使用語意化標籤，有助於 SEO 與可及性（a11y）
- 空白會被壓縮，需用 `<pre>` 或 `&nbsp;` 保留格式

## 9. 常用標籤速查表
| 分類 | 標籤範例 |
| --- | --- |
| 結構 | `<html>`, `<head>`, `<body>` |
| 文字 | `<h1>`–`<h6>`, `<p>`, `<q>` |
| 清單 | `<ul>`, `<ol>`, `<li>` |
| 格式化 | `<hr>`, `<br>`, `<pre>` |
- 輸入 `html:5` + Tab 自動產生 HTML5 範本（Emmet）

## 10. 實作
- 使用 `<br>` 重現《春曉》
- 用清單列出 "Bank" 的三種意思
- 試用 `<h2>`、`<p>`、`<pre>` 比較差異
- 製作「我的食譜」頁面（`h1` + `p` + `ol`）

## 11. 瀏覽器與工具建議
- 推薦瀏覽器：Chrome、Firefox、Edge
- 編輯器比較：
| 編輯器 | 系統 | 特點 |
| --- | --- | --- |
| VS Code | 跨平台 | 免費 + 外掛多 |
| Sublime Text | 跨平台 | 快速 + 多工 |
| GitHub Pages | Web | 快速靜態部署 |
- 相容性檢查工具：
    - W3C HTML Validator：https://validator.w3.org/
    - CSS Validator：https://jigsaw.w3.org/css-validator/
    - Can I Use：https://caniuse.com/
    - MDN：https://developer.mozilla.org/

## 12. 總結
- 完成 HTML 入門、編輯環境建置與語法實作
- 下一站：深入 HTML 標籤、區塊元素、圖像、表格與表單設計