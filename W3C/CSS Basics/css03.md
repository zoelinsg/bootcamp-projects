# Module 3: Specific HTML Element Targeting

## 1. Class 與 ID 選擇器

- **Class（類別）**
    - 多元素共用
    - HTML：`class="name"`
    - CSS：`.` 開頭

```css
.highlight {
  color: blue;
}
```

- **ID（唯一）**
    - 單元素專屬
    - HTML：`id="uniqueId"`
    - CSS：`#` 開頭

```css
#main {
  color: red;
}
```

---

## 2. 綜合範例

```css
.topSection {
  background-color: #3300cc;
  color: #cccccc;
}
.bottomSection {
  background-color: #cccccc;
  color: #3300cc;
}
#importantItem {
  text-decoration: underline;
  color: #99ff99;
}
#unimportantItem {
  color: gray;
}
```
- 在 HTML 中對應加上 `class` 與 `id`。

---

## 3. Pseudo-classes（偽類）

| 偽類 | 用途 |
| --- | --- |
| `:link` / `:visited` | 超連結初始/已訪問 |
| `:hover` | 滑鼠懸停 |
| `:focus` | 輸入框聚焦 |
| `:active` | 按下未放開 |

#### 範例：

```css
li:hover { background-color: yellow; }
input:focus { background-color: blue; }

```

---

## 4. 偽類互動練習

- `h1:hover` → 加底線
- `input:hover` → 邊框黃
- `input:focus` → 背景黃
- `button:hover` → 深綠底白字
- `button:active` → 淺綠底
- `li:hover` → 白底深綠字
- `li:active` → 淺綠底白字
- `a:link` → 白色
- `a:visited` → 淺綠

---

## 5. Contextual Selectors（上下文選擇器）

#### 語法：

```css
parent child { ... }
```

#### 範例：

```css
p img {
  width: 100px;
}
```

- 僅影響 `<p>` 內的圖片。

---

## 6. Cascading（層疊）規則

- 優先順序：
    1. ID
    2. Class / pseudo-class / 屬性
    3. 元素
- 同權重 → 後宣告覆蓋前宣告
- `!important` 可強制覆蓋：

```css
p {
  background-color: #B4DBC0 !important;
}
```

---

## 7. 圖片設計重點

| 格式 | 適用 |
| --- | --- |
| JPEG | 照片 |
| PNG | 圖形、透明背景 |
| GIF | 動圖（檔案較大） |
- 控制大小：

```css
img {
  width: 100px;
  height: 100px;
}
```

- 設定單一維度可保持比例
- `border-radius` 可製作圓形頭像
- 不建議用圖片取代文字（影響 SEO / A11y）

---

## 8. 表單設計原則

1. 留白（White space）
2. 邊框（Borders）
3. 標籤（Labels）對應輸入框
4. 適當輸入框大小
5. 偽類互動（:hover, :focus, :active）
6. 明顯送出按鈕

---

## 9. 實作 — Profile 頁面

- **HTML 要求：**

- `header` / `footer`
- 三大區塊：教育背景 / 工作經歷 / 喜好
- 每區 2 個子區塊（標題 + 內容）

- **CSS 要求：**

- ≥1 個 ID
- ≥2 種 class（各用於至少 2 元素）
- 1 個 `:hover`
- 1 個 `:active` 或其他偽類
- ≥3 次 contextual selector 使用

---

## 10. 總結

- Class：共用樣式；ID：單元素精準控制
- 偽類：增強互動效果
- 上下文選擇器：依結構套用樣式
- 層疊規則：權重與順序決定樣式覆蓋