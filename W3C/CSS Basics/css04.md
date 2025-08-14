# Module 4: Layout and Positioning

## 1. Box Model 基本觀念

- HTML 元素皆為矩形框
- 四個部分：
    1. **Content**（內容）
    2. **Padding**（內距，含背景色）
    3. **Border**（邊框：顏色 / 粗細 / 樣式）
    4. **Margin**（外距，元素間距）
- **Margin Collapsing**：上下 margin 相遇時取較大值
- 🔗 [W3C Box Model 定義](https://www.w3.org/TR/CSS22/box.html)

---

## 2. 對齊設定

```css
h1 {
  text-align: center;
  line-height: 1.2;
}
```
- `text-align`：left / center / right / justify（建議用 `start` / `end`）
- `line-height`：控制行高，可垂直置中

---

## 3. 寬高與限制

```css
p { width: 30%; }
img { width: 100%; max-width: 1024px; }
```
- 單位：百分比、px
- 限制：`min-width` / `max-width`、`min-height` / `max-height`

---

## 4. 元素置中技巧

```css
div {
  width: 50%;
  margin-left: auto;
  margin-right: auto;
}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
```
- `margin: auto` 可水平置中（需有固定寬度）
- 🔗 [Centering 技巧](https://www.w3.org/Style/Examples/007/center)

---

## 5. 排版練習條件

- `header` / `footer` 靠邊
- `h1` 50% 寬，水平垂直置中（高 75px）
- `header p` 高 50px，top 對齊且置中
- `section` 75% 寬，min 500px
- `h2` 30% 寬，置中 + padding 30px
- `article` 40% 寬，文字 justify，含邊距與 padding
- `#leftP` margin-left: 10% of section
- `#rightP` margin-left: 50% of section
- `footer` padding 10px，margin-top 30px，置中

---

## 6. Float 與 Clear

```css
h1 { width: 20em; float: right; }
p { clear: both; }
```
- `float`：元素靠左或右浮動，內容環繞
- `clear`：阻止浮動影響後續元素
    - 🔗 [float 文檔](https://drafts.csswg.org/css2/#propdef-float)
    - 🔗 [clear 文檔](https://drafts.csswg.org/css2/#propdef-clear)

---

## 7. Float 進階應用

- 適合橫向排列（如兩欄式）
- 常用於導航列、圖片繞排
- 排版策略：
    1. margin / padding
    2. float
    3. position（relative）
    4. absolute / flex / grid

---

## 8. Position 屬性

- `static`：預設
- `relative`：相對原位置偏移
- `fixed`：固定於視窗
- `absolute`：脫離文流，依最近定位父元素定位
- **Box offset**：`top` / `left` / `right` / `bottom`（需非 static 才生效）

---

## 9. 模組任務 — Web 履歷頁

**HTML / CSS 要求：**

- 頁面寬 75% 並置中
- 三個元素寬度用百分比
- 至少一個 `text-align` 非 left
- 四個 float 元素
- 一次 clear 避免干擾
- `position` + top/left 控制兩區塊位置

---

## 10. 總結

- 掌握元素位置與間距控制
- 設計可響應的版面結構
- 運用 float / clear / position 進行排版
- 置中技巧與尺寸限制運用
