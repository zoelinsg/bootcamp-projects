# Module 5: More HTML and CSS

## 1. 表格核心概念
| 避免用 table 排版 | 表格正確用途 |
| --- | --- |
| 彈性差、維護成本高 | 呈現結構化資料（如財報、課表） |
| RWD 困難、動態更新不便 | 與 CSS 分工：樣式獨立 |
| A11y 互動不佳 | `<thead>` / `<tbody>` / `<tfoot>` 提升可讀性 |

## 2. 表格元素與語意結構
| 類別 | 標籤 | 功用 |
| --- | --- | --- |
| 容器 | `<table>` | 整體表格 |
| 標題 | `<caption>` | 表格用途敘述 |
| 區段 | `<thead>` / `<tbody>` / `<tfoot>` | 表頭 / 主體 / 結尾 |
| 欄群 | `<colgroup>` / `<col>` | 批量設定欄樣式 |
| 列 | `<tr>` | 行 |
| 儲存格 | `<th>` / `<td>` | 表頭 / 資料格 |

#### 常用屬性：
| 屬性 | 作用 | 範例 |
| --- | --- | --- |
| `colspan` / `rowspan` | 橫跨欄 / 行 | `<td colspan="3">` |
| `scope` | 定義範圍（row / col） | `<th scope="col">` |
| `headers` | 關聯 header id | `<td headers="h-price">` |

## 3. CSS 表格樣式技巧
- 邊框與合併：
```css
table, th, td { border: 1px solid #333; }
table { border-collapse: collapse; }
```
- 寬高與內距：
```css
th, td { width: 25%; padding: .75rem 1rem; }
```
- 對齊：
```css
th { text-align: center; vertical-align: middle; }
td { text-align: left; vertical-align: top; }
```
- 行距 / 間距：
```css
table { border-spacing: 12px 6px; border-collapse: separate; }
```
- 斑馬紋與 hover：
```css
tr:nth-child(even) { background: #f8f8f8; }
tr:hover { background: #fffbe6; }
```
- 滾動：
```css
.table-wrapper { overflow-x: auto; }
```

## 4. HTML5 多媒體
- **Audio**
```html
<audio controls preload="metadata">
  <source src="sound.mp3" type="audio/mpeg">
  <source src="sound.ogg" type="audio/ogg">
</audio>
```
- **Video + Track**
```html
<video controls width="320" height="240" poster="cover.jpg">
  <source src="demo.mp4" type="video/mp4">
  <source src="demo.webm" type="video/webm">
  <track src="demo.vtt" kind="captions" srclang="en" label="English" default>
</video>
```

## 5. `<iframe>` 內嵌內容
```html
<iframe src="https://example.com" title="示範頁" sandbox allowfullscreen></iframe>
```
| 屬性 | 用途 |
| --- | --- |
| `src` / `name` | 來源 / 目標命名 |
| `sandbox` | 安全限制 |
| `allowfullscreen` | 全螢幕允許 |

## 6. 圖片地圖
| 類型 | 運作 | 範例 |
| --- | --- | --- |
| `ismap` | 伺服器解析座標 | `<a href="map.cgi"><img ismap></a>` |
| `usemap` | `<area>` 定義區域 | `<img usemap="#m"><map><area …></map>` |

## 7. 背景、邊框與陰影
| 屬性 | 範例 |
| --- | --- |
| `background` | `url(bg.svg) no-repeat center / cover` |
| `border-radius` | `8px` |
| `box-shadow` | `0 2px 4px rgba(0,0,0,.2)` |
| `text-shadow` | `1px 1px 2px #666` |

## 8. 偽類 / 互動選擇器回顧
- `a:visited`, `li:hover`, `li:active`
- `tr:nth-child(even)`：斑馬條紋
- `cursor: pointer`：可點擊提示

## 9. 實作
1. 3×3 表格，首行 `<th>` + 灰底斑馬紋
2. `.table-wrapper` 外層 + 水平滾動
3. 音樂播放器（`autoplay + muted`）
4. 帶字幕影片播放器
5. `<iframe>` 嵌入網站 + sandbox
6. `usemap` 圖片三塊可點區域

## 10. 參考資源
- [MDN Tables](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables)
- [WHATWG Audio/Video](https://html.spec.whatwg.org/multipage/media.html)
- [MDN iframe](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
- [W3C area 元素](https://www.w3.org/wiki/HTML/Elements/area)

## 11. 總結
- 表格適用於資料呈現，不用於版面排版
- CSS 可用 `border-collapse`、`:nth-child`、`hover` 提升可讀性
- HTML5 多媒體元素提供跨格式播放，需注意 UX
- `<iframe>` 與圖片地圖需兼顧安全與可及性
