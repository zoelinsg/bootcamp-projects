# Module 6: Basics of Page Layout

## 1. CSS 排版歷程

| 時期 | 技術 | 問題 |
| --- | --- | --- |
| 早期 | `<table>` 切圖 | HTML 與樣式混雜、不彈性 |
| 過渡期 | `float`, `absolute` | 清除浮動、結構易壞 |
| 現代 | **Flexbox** | 一維彈性排版 |
| 進階 | **Grid** | 二維格線排版 |

- Flexbox：元件級排版｜Grid：頁面級佈局

---

## 2. display 類型比較

| 特性 | block | inline | inline-block |
| --- | --- | --- | --- |
| 是否換行 | ✅ | ❌ | ❌ |
| 可設寬高 | ✅ | ❌ | ✅ |
| margin/padding 上下 | ✅ | ❌ | ✅ |
| 範例元素 | `div`, `p` | `span`, `a` | `img`, `input` |

### 水平置中方式

| 類型 | 方法 |
| --- | --- |
| inline | 父層使用 `text-align: center` |
| block | 指定寬度後加 `margin: auto` |
| 現代方案 | `display: flex; justify-content: center;` |

---

## 3. position 與 z-index

| 屬性 | 參考點 | 脫離文流 | 用途示例 |
| --- | --- | --- | --- |
| `static` | 無參考 | ❌ | 預設、不偏移 |
| `relative` | 自身原位 | ❌ | 微調位置（偏移不脫流） |
| `absolute` | 最近有定位的父元素 | ✅ | 浮動元件、標籤 |
| `fixed` | 視窗 | ✅ | 固定導覽列、回頂按鈕 |

```css
.banner { position: fixed; top: 0; left: 0; z-index: 100; }
```
- `z-index` 需搭配非 `static` 才有效，值愈高越前面

---

## 4. 尺寸 / Overflow / Box Model

```css
.container { width: 300px; overflow-y: auto; }
* { box-sizing: border-box; }
```
- `box-sizing: border-box`：寬高包含 padding + border，更易控版面
- 響應式設計建議使用 `min-` / `max-` 範圍限制取代固定尺寸

---

## 5. Flexbox 核心概念

### Flex 結構角色

| 角色 | 設定方式 | 說明 |
| --- | --- | --- |
| Container | `display: flex` | 父層啟用彈性排版 |
| Item | `flex: 1 1 auto` | 子層彈性控制 |

### Flex 屬性

| 屬性 | 功能 |
| --- | --- |
| `flex-grow` | 空間分配比例 |
| `flex-shrink` | 縮小比例 |
| `flex-basis` | 初始寬度（可取代 `width`） |
| `flex-flow` | 組合 `direction` + `wrap` 縮寫 |
| `justify-content` | 主軸（水平）對齊方式 |
| `align-items` | 交叉軸（垂直）對齊方式 |

```css
.card { flex: 1 1 240px; }
```

---

## 6. Holy Grail 三欄排版（Flex 實作）

```html
<body>
  <header>Header</header>
  <div class="fc">
    <aside>Left</aside>
    <main>Main</main>
    <section>Right</section>
  </div>
  <footer>Footer</footer>
</body>
```

```css
body { margin: 0; }
.fc {
  display: flex;
  flex-flow: row wrap;
  min-height: calc(100vh - 8rem);
}
.fc > * { flex: 1 1 20rem; }
main { flex: 2 1 40rem; }
```
-  min-height 確保 Footer 貼底，flex-basis 控初始寬度 

---

## 7. calc() 與排版運算

```css
main { height: calc(100vh - 100px); }
```
- 可混合單位 + - * /（空格分隔）
- 常用於扣除 Header / Footer 後的剩餘區域

---

## 8. 實作

- 使用 `flex` 將四段落排成四欄，第二欄設定 `flex: 2`
- 製作固定頂端 Navbar，捲動時不移動
- 表單套用 `box-sizing: border-box`，避免排版錯位
- 實作 Holy Grail 三欄版型，並在行動裝置變為單欄
- 比較 `margin-top` 與 `position: relative; top:` 的異同

---

## 9. 推薦資源

- [CSS-Tricks - Flexbox Guide](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
- [Flexbox Froggy 線上遊戲](https://flexboxfroggy.com/)
- [MDN - CSS Layout](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout)
- [Grid Garden 練習 Grid](https://cssgridgarden.com/)

---

## 10. 總結

- `display` / `position` 決定元素的排列與文流關係
- `box-sizing: border-box` 搭配相對單位是 RWD 關鍵
- Flexbox 是現代元件排版利器，建議深入熟悉 grow / shrink / basis
- Holy Grail 三欄排版使用 Flexbox 最簡潔，亦可用 Grid 一行達成
