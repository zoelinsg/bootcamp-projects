# Module 1: Getting Started with CSS

## 1. CSS 是什麼？

- **CSS（Cascading Style Sheets）**：控制 HTML 呈現樣式的語言
- 分工：
    - HTML：內容與結構
    - CSS：樣式與排版

```css
p {
  color: blue;
  font-family: "Times New Roman";
}
```
```html
<link rel="stylesheet" href="style.css">
```
## 2. 為什麼需要 CSS？

| 時代 | 特點 |
| --- | --- |
| Before CSS | 樣式直接寫入 HTML（如 `<font>`），改版需改每頁，維護困難 |
| After CSS | 內容與樣式分離，一份 CSS 控制多頁，易於維護、支援多設備 |
- 範例： [1996 MSN 網站樣貌](https://web.archive.org/web/19961022175327/http://msn.com/)

---

## 3. CSS 誕生背景

- 1994：Bert Bos + Håkon Lie 提出
- 原則：簡單、可擴充、易維護
- 原為過渡方案，後成為標準
- 📽 [CSS 發展歷史影片](https://edx-video.net/W3CCSS0I2016-V001700_DTH.mp4)

---

## 4. CSS 優勢

- 集中管理樣式，維護成本低
- 支援多螢幕、多需求
- 減少圖片依賴 → 加快載入
- HTML 專注內容，CSS 負責外觀

---

## 5. DevTools 基礎

- 開啟方式：右鍵檢查 / F12
- 面板：
    - **Elements**：檢視 HTML 結構
    - **Styles**：查看/編輯 CSS
- 可即時修改（不影響原檔）

---

## 6. CSS Zen Garden & Style Stage

| 平台 | 特點 | 連結 |
| --- | --- | --- |
| Zen Garden | 同一 HTML，多種 CSS 呈現 | [csszengarden.com](http://www.csszengarden.com/) |
| Style Stage | 現代版開源展示 | [stylestage.dev](https://stylestage.dev/) |

---

## 7. Live Demo 練習

- 用 DevTools 修改 `<h1>` 樣式
- 移除 CSS → 查看預設 HTML 樣式
- 📽 [Demo 影片](https://edx-video.net/W3CCSS0I2016-V001200_DTH.mp4)

---

## 8. Hello Beautiful World 實作

### HTML

```html
<link rel="stylesheet" href="styles.css">
<p>Hello Beautiful World</p>
```

### CSS

```css
p {
  color: blue;
}
```

- 修改為 `Hello [你的名字]`
- 調整字體與顏色
- 理解 `.html` 與 `.css` 關聯
- 🎨 [顏色代碼參考](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value)

---

## 9. CSS 註解

```css
/* 標註樣式功能，可跨行 */
p {
  color: green;
}
```

- 增加可讀性，利於團隊協作

---

## 10. 名詞彙總

| 名詞 | 解釋 |
| --- | --- |
| HTML | 結構與內容 |
| CSS | 外觀樣式 |
| Web Page | 瀏覽器顯示的 HTML 文件 |
| Browser | 顯示 HTML + CSS 的應用程式 |
| HTTP/HTTPS | 資料傳輸協定（含加密） |

---

## 11. 總結

- CSS 讓網頁設計更具彈性與美感
- 學會 `<link>` 引入 CSS
- 善用 DevTools 即時測試與調整
