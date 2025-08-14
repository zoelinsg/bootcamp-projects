# Module 3: Adding Style with CSS

## 1. CSS 概念
- CSS（Cascading Style Sheets）：階層式樣式表，負責控制排版、顏色、字體等外觀。
- 目的：內容（HTML）與樣式（CSS）分離，提高可維護性與可重用性。
- 核心觀念：**繼承**與**層疊**（Cascade）決定最終樣式。
- 傳統如 `<font>`, `<b>` 應由 CSS 取代，以符合語意化原則。

## 2. CSS 引入方式
| 類型 | 範例 | 特性 | 建議用途 |
| --- | --- | --- | --- |
| 外部樣式表 | `<link rel="stylesheet" href="style.css">` | 可共用、集中維護 | 專案實務首選 |
| 內嵌樣式 | `<style>...</style>` | 快速測試 | 教學 / Demo |
| 行內樣式 | `<p style="color:red">` | 優先權高、難維護 | 僅限例外快速修正 |
- 優先順序：行內 > 內嵌 > 外部（但可被 !important 或更高 specificity 覆蓋）

## 3. CSS 結構與註解
```css
/* 選擇器 ➜ 宣告區塊 */
選擇器 {
  屬性: 值;
}
```
- 選擇器（Selector）：選取 HTML 元素，如 `p`, `.class`, `#id`
- 宣告（Declaration）：花括號內多組屬性＋值
- 註解使用 `/* */`，可跨行

## 4. 字體與文字樣式
| 屬性 | 說明 | 建議 |
| --- | --- | --- |
| `font-size` | 字體大小 | 優先使用 `rem`, `em` |
| `font-family` | 字體堆疊 | 加上備援與系統字體 |
| `font-weight` | 粗細（100–900） | 可搭配可變字體使用 |
| `font-style` | 斜體 | 通常與語意元素 `<em>` 搭配 |
```css
html { font-size: 20px; }
p    { font-size: 1rem; }
```

## 5. 行距、對齊與裝飾
| 屬性 | 值 | 補充 |
| --- | --- | --- |
| `line-height` | 無單位建議，如 `1.5` | 易讀性佳，易繼承 |
| `text-align` | `left`, `center`, `start` 等 | 多語系建議用 `start/end` |
| `text-decoration` | `underline`, `line-through` 等 | 可加 `-color`, `-style` |

## 6. 單位與顏色
### 常見單位對照
| 類型 | 單位 | 用途 |
| --- | --- | --- |
| 固定 | `px` | 精準控制 |
| 相對字級 | `em`, `rem` | 響應式排版 |
| 區塊比例 | `%` | 父元素為參考 |
| 視窗比例 | `vh`, `vw` | 整體頁面調整 |

### 顏色格式
- 名稱：`red`, `transparent`
- HEX：`#333`, `#fff`
- RGB / RGBA：`rgb(0,0,0)`, `rgba(0,0,0,0.5)`
- HSL / HSLA：`hsl(200 50% 50%)`

## 7. 外距（margin）
- 縮寫順序：**top ➜ right ➜ bottom ➜ left（TRBL）**
```css
.card {
  margin: 1rem auto;
}
```
| 格式 | 寫法 | 效果 |
| --- | --- | --- |
| 單值 | `margin: 12px;` | 四邊相同 |
| 雙值 | `margin: 10px 20px;` | 上下 / 左右 |
| 三值 | `margin: 10px 15px 5px;` | 上 / 左右 / 下 |
| 四值 | `margin: 5px 10px 15px 20px;` | TRBL 順序 |

## 8. 清單樣式
| 屬性 | 範例 | 用途 |
| --- | --- | --- |
| `list-style-type` | `disc`, `decimal`, `lower-roman` | 標記形狀 |
| `list-style-position` | `inside`, `outside` | 縮排對齊 |
| `list-style-image` | `url(icon.svg)` | 自訂標記圖示 |
- 如為裝飾性，可改用 background-image 搭配 padding 控制 

## 9. 無障礙樣式設計（A11y）
| 項目 | 建議值 / 作法 |
| --- | --- |
| 字級 | ≥ `16px` 或 `1rem` |
| 行距 | ≥ `1.5` |
| 色彩對比 | 達 WCAG AA（4.5:1） |
| 動畫 | 避免閃爍與快速跳動 |

## 10. 選擇器與優先度
| 類型 | 寫法 | 優先度 |
| --- | --- | --- |
| 通用 | `*` | 0-0-0-0 |
| 標籤 | `p`, `h1` | 0-0-0-1 |
| 類別 | `.note`, `[href]` | 0-0-1-0 |
| ID | `#header` | 0-1-0-0 |
| 行內樣式 | `style="..."` | 1-0-0-0 |
| `!important` | — | 最高，謹慎使用 |

### 常見選擇器範例
```css
h1, h2 { margin: .5rem 0; }       /* 多重選擇器 */
nav a { text-decoration: none; }  /* 後代選擇器 */
ul > li { list-style: square; }   /* 子選擇器 */
button.primary { color: white; }  /* 類別結合 */
```

## 11. 實作
- 建立外部 `style.css`，並用 `<link>` 引入
- 移除 HTML 行內樣式，改用 class / id 管理
- 使用 `rem` 重設字級並調整段落文字
- 自訂 `list-style-image`，再改為 `background` 比較差異
- 測試 `text-align: start/end` 在不同語系下的效果

## 12. 推薦資源
- [CSS Snapshot 2024](https://www.w3.org/TR/css-2024/)
- [MDN CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)
- [W3C All Properties](https://www.w3.org/Style/CSS/all-properties.en.html)
- [Contrast Finder](https://contrast-finder.tanaguru.com/)

## 13. 總結
- 優先使用外部樣式表，維護容易
- 理解選擇器優先度與層疊原則，避免樣式衝突
- 使用 `rem` 進行響應式設計
- CSS 不只是美觀，也攸關可及性與可讀性
