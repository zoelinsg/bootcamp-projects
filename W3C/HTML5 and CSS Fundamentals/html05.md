# Module 5: More HTML and CSS

## 1. 表格語意結構
| 錯誤用途 | 正確用途 |
| --- | --- |
| 拿來排版 | 呈現結構化資料（課表、報表） |
| 難維護、RWD 差 | 搭配 CSS 控樣式分離 |
| 可及性不佳 | 使用 `<thead>`, `<tbody>` 提升語意 |

### 常見標籤
| 標籤 | 用途 |
| --- | --- |
| `<table>` | 表格容器 |
| `<caption>` | 表格說明，第一子元素 |
| `<thead>` | 表頭 |
| `<tbody>` | 主體內容 |
| `<tfoot>` | 表尾 |
| `<colgroup>` | 欄樣式批次設定 |
| `<tr>` | 表格列 |
| `<th>` / `<td>` | 表頭 / 資料格 |

### 常見屬性
- `colspan`, `rowspan`：合併欄列
- `scope`：指定 `<th>` 所屬 row / col
- `headers`：關聯多個 `<th>`，利於輔助工具解讀

## 2. 表格樣式技巧（CSS）
```css
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  border: 1px solid #333;
  padding: 0.75rem 1rem;
  text-align: left;
}

tr:nth-child(even) {
  background: #f8f8f8;
}

tr:hover {
  background: #fffbe6;
}

.table-wrapper {
  overflow-x: auto;
}
```
- 建議搭配 .table-wrapper 實現水平捲動，提升可讀性與 RWD 支援

## 3. HTML5 多媒體整合
### `<audio>` 音訊播放器
```html
<audio controls preload="metadata">
  <source src="sound.mp3" type="audio/mpeg">
  <source src="sound.ogg" type="audio/ogg">
</audio>
```

- 屬性重點：
  - `controls`：顯示控制介面
  - `autoplay`, `muted`, `loop`：播放行為控制
  - `preload`：載入策略（`none`, `metadata`, `auto`）

### `<video>` 搭配字幕 `<track>`
```html
<video controls width="320" height="240" poster="cover.jpg">
  <source src="demo.mp4" type="video/mp4">
  <track src="demo.vtt" kind="captions" srclang="en" label="English" default>
</video>
```
- .vtt 字幕需與影片同源或後端支援 CORS 

## 4. `<iframe>` 內嵌內容
```html
<iframe src="https://example.com" title="展示頁" sandbox allowfullscreen></iframe>
```
| 屬性 | 功能 |
| --- | --- |
| `src` / `name` | 指定來源與命名 |
| `sandbox` | 限制功能 |
| `allowfullscreen` | 全螢幕播放 |
- 有些網站禁止被嵌入，請測試是否受 X-Frame-Options 限制 

## 5. 圖片地圖 `ismap` vs. `usemap`
| 類型 | 描述 | 範例 |
| --- | --- | --- |
| `ismap` | 傳送座標至伺服器解析 | `<a href="map.cgi"><img ismap>` |
| `usemap` | 客戶端區域點擊 | `<img usemap="#m"><map>...</map>` |
- 常見 `<area shape>`：`rect`, `circle`, `poly`, `default`

## 6. 背景、邊框與陰影
```css
.card {
  background: url(bg.svg) no-repeat center / cover;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0,0,0,.2);
  text-shadow: 1px 1px 2px #666;
}
```
- 請用 padding 控制內距，避免使用固定 width/height，確保響應性排版 

## 7. 偽類與互動選擇器
- `a:visited`, `li:hover`, `li:active`
- `tr:nth-child(even)`：製作斑馬條紋
- `cursor: pointer`：改善互動提示

## 8. 實作
- 建立 3×3 表格，首列使用 `<th>`，加上灰底斑馬紋
- 外層加 `.table-wrapper`，實現橫向捲動
- 製作 `<audio>` 播放器，含兩組來源並使用 `autoplay + muted`
- 加上 `.vtt` 字幕的 `<video>` 播放器
- 嵌入一頁 `<iframe>`，設定 `sandbox` 限制功能
- 使用 `usemap` 為圖片設三塊可點區域，連結不同網址

## 9. 推薦資源
- [MDN - Tables](https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables)
- [WHATWG - Audio/Video](https://html.spec.whatwg.org/multipage/media.html)
- [MDN - iframe](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
- [W3C - area](https://www.w3.org/wiki/HTML/Elements/area)

## 10. 總結
- 表格用於**資料結構呈現**，非排版用途
- CSS 控制表格樣式與可讀性（斑馬紋、hover、padding）
- HTML5 多媒體支援多格式與字幕，注意使用者體驗與載入策略
- `<iframe>`、圖片地圖有安全與可用性考量，須搭配 A11y 思維

