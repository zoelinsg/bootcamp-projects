# Module 2: Attributes, Images and Links

## 1. HTML 屬性語法

| 類型 | 範例 | 說明 |
| --- | --- | --- |
| 一般屬性 | `<ol start="5">` | 屬性值需加引號 |
| 布林屬性 | `<ol reversed>` | 寫出即代表 true |
| 多屬性使用 | `<img src="logo.png" alt="Logo">` | 以空格分隔 |

---

## 2. 全域與非全域屬性

| 類型 | 代表屬性 | 說明 |
| --- | --- | --- |
| 全域屬性 | `id`, `class`, `lang` | 適用所有 HTML 元素 |
| 特定屬性 | `start`, `width` 等 | 限定元素使用 |

- id 請唯一，避免 CSS/JS 混亂。

---

## 3. 常見全域屬性

| 屬性 | 功能 | 範例 |
| --- | --- | --- |
| `id` | 元素識別 | `<p id="intro">` |
| `class` | 分類樣式 | `<div class="card info">` |
| `lang` | 指定語言 | `<html lang="zh-TW">` |
| `title` | 顯示提示 | `<abbr title="World Health Organization">WHO</abbr>` |

---

## 4. 語意標籤與 SEO / A11y

| 標籤 | 類型 | 說明 |
| --- | --- | --- |
| `<b>` | 風格 | 關鍵詞強調，非語意 |
| `<i>` | 風格 | 外文、語氣轉換 |
| `<strong>` | 語意 | 重要內容，輔助工具強調語調 |
| `<em>` | 語意 | 語氣加重，預設斜體 |

- 語意標籤可提升搜尋引擎索引與輔助設備瀏覽效率。 

---

## 5. HTML5 結構化語意標籤

| 標籤 | 用途 | 巢狀建議 |
| --- | --- | --- |
| `<header>` | 區塊標題 | 可在 `body`, `section` 中 |
| `<nav>` | 導覽列 | 多個可共存 |
| `<main>` | 主內容 | 每頁唯一 |
| `<section>` | 主題區塊 | 可巢狀於 `article` |
| `<article>` | 可獨立內容 | 可含 `header`, `footer` |
| `<aside>` | 補充資訊 | 與主要內容平行 |
| `<footer>` | 區塊結尾 | 結束語、版權等 |

---

## 6. 語意頁面範例

```html
<body>
  <header><h1>Semantic HTML</h1></header>
  <nav><a href="#intro">Intro</a></nav>
  <main>
    <article id="intro">
      <h2>What is it?</h2>
      <p>Semantic HTML uses meaningful tags...</p>
    </article>
    <aside><p><mark>Tip:</mark> Use W3C Validator</p></aside>
  </main>
  <footer><p>© 2025</p></footer>
</body>
```

## 7. 圖片處理與 `<img>` 實務

```html
<img src="pic.png" alt="Logo 圖片" title="懸浮提示" width="100">
```

| 屬性 | 說明 |
| --- | --- |
| `src` | 圖片路徑（必填） |
| `alt` | 替代文字，裝飾圖可空值 |
| `title` | 顯示提示，非替代用途 |
| `width` / `height` | 可任一指定，等比例縮放 |

- 語意圖像用 <img> 搭配 alt，裝飾圖像請用 CSS。

```css
.banner {
  background-image: url("decor.jpg");
}
```

---

## 8. 非語意容器：`<div>` 與 `<span>`

| 元素 | 型態 | 用途 |
| --- | --- | --- |
| `<div>` | 區塊級 | 版面容器 |
| `<span>` | 行內級 | 精準選取範圍 |

```html
<!-- 錯誤嵌套 -->
<p>Hi <p>inner</p></p>

<!-- 正確方式 -->
<p>Hi <span>inner</span></p>
```

---

## 9. 實作

-  建立一組有 `reversed` + `start=11` 的 `<ol>`
-  練習重複 `id` 錯誤與瀏覽器 DevTools 檢查
-  以語意標籤建立「我的一天」頁面，加入三張圖片（含 `alt`, `title`）
-  設計多組 `<header>` + `<nav>` 的頁面結構
-  使用 W3C Cheatsheet 查 `<area>` 屬性

---

## 10. 實用資源

- [MDN - HTML Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes)
- [W3C Cheatsheet](https://www.w3.org/2009/cheatsheet/)
- [圖片替代文字指南](https://www.w3.org/WAI/tutorials/images/)
- [Can I Use](https://caniuse.com/)

---

## 11. 總結

- 屬性語法明確：布林屬性 / 全域 / 非全域
- 結構化語意標籤：提升 SEO、輔助技術可用性
- 圖片最佳實務：善用 `alt`，避免裝飾圖片干擾結構
- 非語意容器請慎用，盡量優先考慮語意標籤