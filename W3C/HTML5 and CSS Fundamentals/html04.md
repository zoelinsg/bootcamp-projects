# Module 4: Fixing and Debugging

## 1. DevTools 基礎操作
- 開啟方式：
    - `F12`
    - 右鍵 → 檢查 (Inspect)
- 常用面板：

| 面板 | 功能 |
| --- | --- |
| Elements | 查看 / 編輯 HTML 結構與樣式 |
| Styles | 即時調整 CSS，觀察效果 |
| Computed | 顯示最終樣式與 Box Model |
| Console | 顯示錯誤、執行 JS、log 資訊 |
| Network | 分析資源載入時間與檔案大小 |

## 2. 無障礙檢測（A11y）
- 核心檢查點：
    - 結構語意清晰
    - 色彩對比足夠
    - 支援鍵盤操作與螢幕閱讀器
- 工具推薦：
    - Lighthouse（DevTools 內建）
    - axe DevTools
    - WAVE
- 資源整理：[W3C 工具列表](https://www.w3.org/WAI/ER/tools/)

## 3. Debug 流程與錯誤排查
| 面向 | JS（程序式） | HTML/CSS（宣告式） |
| --- | --- | --- |
| 問題核心 | 邏輯錯誤、值流動 | 樣式套用、版面錯位 |
| 工具 | Console, 斷點 | Elements, Styles, Computed |
| 常見問題 | 樣式未套用 / 被覆蓋、元素消失、間距異常 |  |
- **排查流程**：定位元素 → 查看樣式 → 確認來源與覆蓋順序

## 4. CSS Box Model 結構
- 四層構造：
    1. **Content**：內容本體（文字、圖片）
    2. **Padding**：內距（背景色延伸至此）
    3. **Border**：邊框（可調粗細與樣式）
    4. **Margin**：外距（控制元素之間間距）
- 可於 DevTools → Computed 查看可視化框架

## 5. Box Model 實作語法
```css
.card {
  margin: 1rem;
  padding: .75rem 1.25rem;
  border: 2px dashed darkslateblue;
  border-radius: .5rem;
}
```
| 屬性 | 功能 | 快速寫法例子 |
| --- | --- | --- |
| `padding` | 內距 | `padding: 1rem 2rem;` |
| `margin` | 外距 | `margin: 0 auto;` |
| `border` | 邊框 | `border: 5px solid navy;` |
| `border-radius` | 圓角 | `border-radius: 8px;` |

## 6. DevTools 操作練習
- 開啟任一網頁 → `F12`
- 點選元素 → *Styles* 中加入：
```css
color: crimson;
background: lemonchiffon;
```
- 勾選/取消樣式 → 觀察即時變化
- 修改僅暫時，重新整理頁面會還原
> 

## 7. Specificity 與層疊原則
| 層級（高 → 低） | 分數 | 範例 |
| --- | --- | --- |
| `!important` | — | 強制優先，慎用 |
| 行內樣式（inline） | 1-0-0-0 | `style="..."` |
| ID | 0-1-0-0 | `#header` |
| 類別 / 屬性 / 偽類 | 0-0-1-0 | `.btn`, `[type="text"]` |
| 標籤（Type） | 0-0-0-1 | `p`, `h1` |
| 通用（Universal） | 0-0-0-0 | `*` |
- 同分比順序，後宣告會覆蓋前面 
```css
article h1 { color: black; }
section h1 { color: gray; } /* 後者勝出 */

article section h1 { color: lightgray; } /* 更具體再次覆蓋 */
```

## 8. 常見除錯範例
### 案例 1：HTML width 被 CSS 覆蓋
```html
<img src="banner.jpg" width="500">
```
```css
img { width: 10rem; }        /* CSS 覆蓋 HTML */
li img { width: 10rem; }     /* 加上上下文限制 */
.banner { width: 25rem; }    /* 特定用途更清晰 */
```

### 案例 2：字級遞減問題
```css
section { font-size: 24px; }
li { font-size: .5em; }  /* 巢狀越多越小 */
```
- 解法：改用 rem 避免遞減連鎖效應
- `li { font-size: .5rem; }`

## 9. 實作
- 使用 DevTools 修改專案中的 `nav` 背景色並截圖
- 用 `padding` + `margin` + `border` 排版卡片元素
- 實作一個 `div` 加上圓角與漸層邊框
- 編寫 `article h1`, `section h1` 等選擇器觀察層疊變化

## 10. 推薦資源
- [DevTools 官方指南](https://developer.chrome.com/docs/devtools/)
- [MDN - Box Model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model)
- [Specificity Visualizer](https://specificity.keegan.st/)
- [W3C A11y 工具集](https://www.w3.org/WAI/ER/tools/)

## 11. 總結
- 熟練 DevTools 是前端除錯的基本功
- 理解 Box Model 可準確掌握排版邊距
- 熟記選擇器優先度與層疊規則，避免樣式衝突
- 無障礙設計不只是加分，而是基本要求
