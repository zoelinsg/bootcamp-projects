# Module 2: Building CSS Rules

## 1. HTML 基礎
- HTML 元素 = 開始標籤 + 內容 + 結束標籤
- 必備：`<!DOCTYPE html>` 與 `<html>`
```html
<tagname>內容</tagname>
```
#### 基本結構
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>My Page</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <h1>Welcome</h1>
    <p>This is a paragraph.</p>
  </body>
</html>
```
#### 常見元素
| 標籤 | 用途 |
| --- | --- |
| `<p>` | 段落 |
| `<h1>`~`<h6>` | 標題 |
| `<a>` | 超連結 |
| `<img />` | 圖片 |
| `<ul>` `<ol>` `<li>` | 清單 |
| `<br />` | 換行 |
| `<header>` `<section>` `<footer>` | 區塊語意 |
| `<div>` | 無語意容器 |
- 🔗 [HTML 元素查詢 - MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)

## 2. CSS Rule 結構
- **Selector**：套用樣式的目標元素
- **Property**：屬性
- **Value**：屬性值
```css
selector {
  property: value;
}
```
#### 範例：
```css
p {
  color: blue;
}
```

## 3. CSS 實作範例
#### HTML：
```html
<h1>My H1 header</h1>
<p>This is a block of text.</p>
<ul>
  <li>List item 1</li>
  <li>Item 2</li>
</ul>
```
#### CSS：
```css
body { background-color: silver; }
h1 { background-color: purple; color: white; }
p, ul { color: fuchsia; }
```

## 4. 繼承與選擇器
- 繼承：部分屬性（如文字樣式）會自動傳遞
```css
body { font-family: "Century Gothic", sans-serif; }
ul { color: green; }
```
- 逗號選擇器：一次套用多元素
```css
h1, h2, h3 { font-family: Impact, sans-serif; }
```

## 5. CSS 屬性與顏色表示法
```css
body {
  background-color: purple; /* keyword */
  color: #FFFFFF;           /* HEX */
  width: 60%;               /* percentage */
  font-size: 20pt;          /* number + unit */
}
```
- 顏色表示：
    1. Keyword：`teal`
    2. HEX：`#00CC00`
    3. RGB：`rgb(0,204,0)`

## 6. 字體相關屬性
```css
p { font-family: "Times New Roman", serif; }
h1 { font-size: 2.5em; }
p { font-weight: bold; }
p { font-style: italic; }
p { text-decoration: underline; }
```

## 7. 盒模型（Box Model）
```css
p { padding: 20px; }              /* 內距 */
p { border: 1px solid black; }    /* 邊框 */
p { margin-bottom: 50px; }        /* 外距 */
```

## 8. 樣式範例
#### Title：
```css
#design1 h1 { color: #C0B283; font-size: 4em; }
```

#### Button：
```css
#design2 button { background-color: #4484CE; color: white; }
```

## 9. 實作 — 個人網頁設計
- **內容：**
- `h1` 名字
- `h2` 喜歡的句子
- 段落描述興趣
- 有序清單：喜歡的食物
- 無序清單：喜歡的網站（加連結）

- **樣式要求：**
- 三種字體顏色
- 兩種背景色
- 一種 serif + 一種 sans-serif
- italic / bold
- 至少一個 border
- margin & padding

## 10. 總結
- 理解 HTML + CSS 基礎
- 掌握 CSS Rule 與選擇器
- 能設定字體、顏色、間距
- 能完成基本網站樣式設計
