# Module 6: Basics of Page Layout

## 1. CSS 排版歷程
| 世代 | 主流技術 | 常見痛點 |
| --- | --- | --- |
| 早期 | `table` 切圖 | HTML 與樣式耦合 |
| 過渡 | `absolute` / `float` | 清除浮動、結構脆弱 |
| 現代 | **Flexbox** | 一維彈性排版 |
| 進階 | **Grid** | 二維行列佈局 |
- 結論：Flexbox → 元件級排版；Grid → 頁面級佈局 

## 2. display 類型比對
| 特性 | Block | Inline | Inline-Block |
| --- | --- | --- | --- |
| 是否換行 | ✅ | ❌ | ❌ |
| 可設寬高 | ✅ | ❌ | ✅ |
| margin/padding 上下 | ✅ | ❌ | ✅ |
| 範例 | `div`, `p` | `span`, `a` | `img`, `input` |
- **水平置中**
| 元素類型 | 方法 |
| --- | --- |
| Inline | 父層 `text-align: center` |
| Block | 固定寬度 + `margin: auto` |
| 現代 | Flex → `justify-content: center` |

## 3. position 與 z-index
| position | 參考座標 | 脫離文流 | 用途 |
| --- | --- | --- | --- |
| `static` | 無 | ❌ | 預設 |
| `relative` | 自身原位 | ❌ | 偏移 |
| `absolute` | 最近定位祖先 | ✅ | 浮動元件、徽章 |
| `fixed` | 視窗 | ✅ | 固定導覽列 |
- **z-index**：非 `static` 元素有效；數值越高越前
```css
.banner { position: fixed; top: 0; left: 0; z-index: 100; }
```

## 4. 尺寸 / Overflow / Box Model
- `width`, `height`, `min-`, `max-` → 響應式先設範圍
- Overflow：
```css
.container { width: 300px; overflow-y: auto; }
```
- `box-sizing: border-box` → 寬高含 padding / border
```css
* { box-sizing: border-box; }
```

## 5. Flexbox 核心觀念
| 角色 | 設定 | 說明 |
| --- | --- | --- |
| Flex Container | `display: flex` | 啟用彈性排版 |
| Flex Item | `flex: 1 1 auto` | 彈性配置 |
- **主屬性**
| 屬性 | 功能 |
| --- | --- |
| `flex-grow` | 多餘空間分配比例 |
| `flex-shrink` | 壓縮比例 |
| `flex-basis` | 初始大小 |
- **父層常用**
| 屬性 | 功能 |
| --- | --- |
| `flex-flow` | 方向 + 換行 |
| `justify-content` | 主軸對齊 |
| `align-items` | 交叉軸對齊 |

## 6. Holy Grail 三欄（Flex）
#### HTML：
```html
<header>Header</header>
<div class="fc">
  <aside>Left</aside>
  <main>Main</main>
  <section>Right</section>
</div>
<footer>Footer</footer>
```

#### CSS：
```css
.fc {
  display: flex;
  flex-flow: row wrap;
  min-height: calc(100vh - 8rem);
}
.fc > * { flex: 1 1 20rem; }
main { flex: 2 1 40rem; }
```

## 7. calc() 技巧
```css
main { height: calc(100vh - 100px); }
```
- 可混合單位，支援 `+ - * /`（需留空格）
- 常用於扣除固定 Header / Footer 高度

## 8. 實作
- 四欄段落，第二欄 `flex: 2`
- 固定 Navbar（`position: fixed`）
- 表單使用 `border-box` 避免溢出
- Holy Grail 改為手機單欄
- 比較 `margin-top` 與 `position: relative; top:`

## 9. 參考資源
- [Flexbox Guide – CSS-Tricks](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
- [Flexbox Froggy](https://flexboxfroggy.com/)
- [MDN Layout](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout)
- [Grid Garden](https://cssgridgarden.com/)

## 10. 總結
- `display` / `position` 定義元素在文流中的行為
- `box-sizing: border-box` + 相對單位有助 RWD
- Flexbox → 元件排版首選，掌握 grow / shrink / basis
- Holy Grail 用 Flex 寫法簡潔，Grid 亦可快速完成