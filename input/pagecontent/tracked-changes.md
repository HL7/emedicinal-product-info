<style>
  .tc-page *, .tc-page *::before, .tc-page *::after { box-sizing: border-box; margin: 0; padding: 0; }
  .tc-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #111827; }
  .tc-page .hero { text-align: center; padding: 48px 20px 36px; border-bottom: 1px solid #e5e7eb; margin-bottom: 40px; }
  .tc-page .hero .eyebrow { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.2em; color:#003087; margin-bottom:14px; }
  .tc-page .hero h3 { font-size:2em; font-weight:800; color:#111827; margin-bottom:12px; line-height:1.2; }
  .tc-page .hero h3 span { background: linear-gradient(135deg,#003087,#2563eb); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
  .tc-page .hero p { font-size:.95em; color:#6b7280; max-width:560px; margin:0 auto; line-height:1.6; }
  .tc-page .section-title { font-size:1.1em; font-weight:700; color:#111827; margin: 36px 0 14px; display:flex; align-items:center; gap:8px; }
  .tc-page .section-title::after { content:''; flex:1; height:1px; background:#e5e7eb; margin-left:8px; }
  .tc-page .flow { display:grid; grid-template-columns:1fr 1fr 1fr; gap:0; margin-bottom:36px; }
  .tc-page .flow-step { background:#fff; border:1px solid #e5e7eb; padding:20px; text-align:center; }
  .tc-page .flow-step:first-child { border-radius:10px 0 0 10px; }
  .tc-page .flow-step:last-child { border-radius:0 10px 10px 0; }
  .tc-page .flow-step .step-num { display:inline-flex; align-items:center; justify-content:center; width:30px; height:30px; background:#003087; color:#fff; border-radius:50%; font-size:.75em; font-weight:800; margin-bottom:10px; }
  .tc-page .flow-step .step-title { font-weight:700; color:#111827; font-size:.88em; margin-bottom:6px; }
  .tc-page .flow-step p { font-size:.78em; color:#6b7280; line-height:1.5; }
  .tc-page .annot-grid { display:grid; grid-template-columns:1fr 1fr 1fr; gap:14px; margin-bottom:36px; }
  .tc-page .annot-card { border-radius:10px; padding:20px; }
  .tc-page .annot-card.insert { background:#ecfdf5; border:1px solid #a7f3d0; }
  .tc-page .annot-card.delete { background:#fef2f2; border:1px solid #fecaca; }
  .tc-page .annot-card.comment { background:#eff6ff; border:1px solid #bfdbfe; }
  .tc-page .annot-card .atype { font-size:.68em; font-weight:800; text-transform:uppercase; letter-spacing:.1em; margin-bottom:8px; }
  .tc-page .annot-card.insert .atype { color:#065f46; }
  .tc-page .annot-card.delete .atype { color:#991b1b; }
  .tc-page .annot-card.comment .atype { color:#1e40af; }
  .tc-page .annot-card .atitle { font-weight:700; font-size:.95em; margin-bottom:6px; color:#111827; }
  .tc-page .annot-card p { font-size:.81em; line-height:1.55; }
  .tc-page .annot-card.insert p { color:#065f46; }
  .tc-page .annot-card.delete p { color:#991b1b; }
  .tc-page .annot-card.comment p { color:#1e40af; }
  .tc-page .marker-table { width:100%; border-collapse:collapse; font-size:.83em; margin-bottom:36px; background:#fff; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .tc-page .marker-table thead { background:#f0f4ff; }
  .tc-page .marker-table th { text-align:left; padding:12px 16px; font-weight:700; color:#374151; font-size:.78em; text-transform:uppercase; letter-spacing:.06em; border-bottom:1px solid #e5e7eb; }
  .tc-page .marker-table td { padding:11px 16px; border-bottom:1px solid #f3f4f6; color:#374151; vertical-align:top; }
  .tc-page .marker-table tr:last-child td { border-bottom:none; }
  .tc-page .marker-class { font-family:monospace; font-size:.82em; font-weight:700; }
  .tc-page .insert-cls { color:#065f46; }
  .tc-page .delete-cls { color:#991b1b; }
  .tc-page .comment-cls { color:#1e40af; }
  .tc-page .code-two-col { display:grid; grid-template-columns:1fr 1fr; gap:14px; margin-bottom:36px; }
  .tc-page .code-block { background:#f8fafc; border:1px solid #e5e7eb; border-radius:10px; overflow:hidden; }
  .tc-page .code-block .code-header { background:#f1f5f9; padding:10px 16px; display:flex; align-items:center; gap:8px; border-bottom:1px solid #e5e7eb; }
  .tc-page .code-block .code-label { font-size:.72em; font-weight:700; text-transform:uppercase; letter-spacing:.1em; }
  .tc-page .code-block .code-label.xml { color:#065f46; }
  .tc-page .code-block .code-label.css { color:#1d4ed8; }
  .tc-page .code-block pre { padding:16px; font-size:.75em; color:#1e293b; line-height:1.7; overflow-x:auto; font-family:'Courier New', Courier, monospace; }
  .tc-page .tag { color:#0369a1; }
  .tc-page .attr { color:#7c3aed; }
  .tc-page .val { color:#b45309; }
  .tc-page .comment-code { color:#6b7280; font-style:italic; }
  .tc-page .prop { color:#0369a1; }
  .tc-page .css-val { color:#b45309; }
  .tc-page code { font-family:monospace; font-size:.88em; background:#f0f4ff; color:#2563eb; padding:1px 5px; border-radius:3px; }
</style>

<div class="tc-page">

  <div class="hero">
    <div class="eyebrow">Technical Details · Annotation Model</div>
    <h3>Auditable <span>Document Evolution</span></h3>
    <p>A structured approach for embedding tracked changes and reviewer comments directly inside FHIR Composition narratives — enabling transparent regulatory collaboration.</p>
  </div>

  <div class="section-title">How It Works</div>
  <div class="flow">
    <div class="flow-step">
      <div class="step-num">1</div>
      <div class="step-title">Mark the Range</div>
      <p>Anchor tags (<code>&lt;a&gt;</code>) mark the start and end of each insertion, deletion, or comment within the Composition narrative.</p>
    </div>
    <div class="flow-step" style="border-left:none; border-right:none;">
      <div class="step-num">2</div>
      <div class="step-title">Store the Details</div>
      <p>A separate <strong>Annotations section</strong> in the Composition holds the author, date, and text for every change and comment marker.</p>
    </div>
    <div class="flow-step">
      <div class="step-num">3</div>
      <div class="step-title">Render Visually</div>
      <p>CSS classes (<code>InsertStart</code>, <code>DeleteStart</code>) let viewers render insertions in green and deletions in red automatically.</p>
    </div>
  </div>

  <div class="section-title">Annotation Types</div>
  <div class="annot-grid">
    <div class="annot-card insert">
      <div class="atype">✅ Insertion</div>
      <div class="atitle">Proposed New Content</div>
      <p>Marks content being added. Rendered with a green highlight and no strikethrough. Uses <code>InsertStart</code> / <code>InsertEnd</code> anchor classes.</p>
    </div>
    <div class="annot-card delete">
      <div class="atype">❌ Deletion</div>
      <div class="atitle">Proposed Removal</div>
      <p>Marks content proposed for removal. Rendered in red with a strikethrough. Uses <code>DeleteStart</code> / <code>DeleteEnd</code> anchor classes.</p>
    </div>
    <div class="annot-card comment">
      <div class="atype">💬 Comment</div>
      <div class="atitle">Reviewer Discussion</div>
      <p>Wraps content associated with a reviewer note or thread. Uses <code>CommentStart</code> / <code>CommentEnd</code> anchor classes.</p>
    </div>
  </div>

  <div class="section-title">Common Annotation Markers</div>
  <table class="marker-table">
    <thead>
      <tr>
        <th>Marker Class</th>
        <th>Tag Type</th>
        <th>Purpose</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="marker-class insert-cls">InsertStart / InsertEnd</span></td>
        <td><code>&lt;a id&gt;</code> / <code>&lt;a href&gt;</code></td>
        <td>Marks the beginning and end of newly proposed content.</td>
      </tr>
      <tr>
        <td><span class="marker-class delete-cls">DeleteStart / DeleteEnd</span></td>
        <td><code>&lt;a id&gt;</code> / <code>&lt;a href&gt;</code></td>
        <td>Marks content proposed for removal.</td>
      </tr>
      <tr>
        <td><span class="marker-class comment-cls">CommentStart / CommentEnd</span></td>
        <td><code>&lt;a id&gt;</code> / <code>&lt;a href&gt;</code></td>
        <td>Wraps content associated with a specific reviewer comment or discussion thread.</td>
      </tr>
    </tbody>
  </table>

  <div class="section-title">XML Code Examples</div>
  <div class="code-two-col">
    <div class="code-block">
      <div class="code-header"><span class="code-label xml">XML — Annotations Section</span></div>
      <pre><span class="comment-code">&lt;!-- Delete annotation --&gt;</span>
<span class="tag">&lt;div</span> <span class="attr">class=</span><span class="val">"Delete"</span> <span class="attr">title=</span><span class="val">"del01"</span><span class="tag">&gt;</span>
  <span class="tag">&lt;span</span> <span class="attr">class=</span><span class="val">"Author"</span>
       <span class="attr">title=</span><span class="val">"FDA Reviewer"</span><span class="tag">/&gt;</span>
  <span class="tag">&lt;span</span> <span class="attr">class=</span><span class="val">"Date"</span>
       <span class="attr">title=</span><span class="val">"2024-11-25T10:00:00Z"</span><span class="tag">/&gt;</span>
<span class="tag">&lt;/div&gt;</span>

<span class="comment-code">&lt;!-- Insert annotation --&gt;</span>
<span class="tag">&lt;div</span> <span class="attr">class=</span><span class="val">"Insert"</span> <span class="attr">title=</span><span class="val">"ins01"</span><span class="tag">&gt;</span>
  <span class="tag">&lt;span</span> <span class="attr">class=</span><span class="val">"Author"</span>
       <span class="attr">title=</span><span class="val">"Company 1"</span><span class="tag">/&gt;</span>
  <span class="tag">&lt;span</span> <span class="attr">class=</span><span class="val">"Date"</span>
       <span class="attr">title=</span><span class="val">"2025-01-28T10:00:00Z"</span><span class="tag">/&gt;</span>
<span class="tag">&lt;/div&gt;</span></pre>
    </div>
    <div class="code-block">
      <div class="code-header"><span class="code-label xml">XML — Change Markers in Content</span></div>
      <pre><span class="comment-code">&lt;!-- Start/End of an insertion --&gt;</span>
<span class="tag">&lt;a</span> <span class="attr">id=</span><span class="val">"ins01"</span>
   <span class="attr">class=</span><span class="val">"InsertStart"</span><span class="tag">/&gt;</span>
... new proposed text ...
<span class="tag">&lt;a</span> <span class="attr">href=</span><span class="val">"ins01"</span>
   <span class="attr">class=</span><span class="val">"InsertEnd"</span><span class="tag">/&gt;</span>

<span class="comment-code">&lt;!-- Start/End of a deletion --&gt;</span>
<span class="tag">&lt;a</span> <span class="attr">id=</span><span class="val">"del01"</span>
   <span class="attr">class=</span><span class="val">"DeleteStart"</span><span class="tag">/&gt;</span>
... text being removed ...
<span class="tag">&lt;a</span> <span class="attr">href=</span><span class="val">"del01"</span>
   <span class="attr">class=</span><span class="val">"DeleteEnd"</span><span class="tag">/&gt;</span></pre>
    </div>
  </div>

  <div class="section-title">Visual Rendering (CSS)</div>
  <div class="code-block" style="margin-bottom:36px;">
    <div class="code-header"><span class="code-label css">CSS — Track Change Styles</span></div>
    <pre><span class="comment-code">/* Proposed insertions — green highlight */</span>
<span class="prop">.InsertStart + * </span>{
    <span class="prop">background-color</span>: <span class="css-val">#e6ffed</span>;
    <span class="prop">border-bottom</span>: <span class="css-val">2px solid #22863a</span>;
}
<span class="comment-code">/* Proposed deletions — red strikethrough */</span>
<span class="prop">.DeleteStart + * </span>{
    <span class="prop">background-color</span>: <span class="css-val">#ffeef0</span>;
    <span class="prop">color</span>: <span class="css-val">#cb2431</span>;
    <span class="prop">text-decoration</span>: <span class="css-val">line-through</span>;
}
<span class="comment-code">/* Hide markers in final rendered view */</span>
<span class="prop">.InsertStart, .InsertEnd,
.DeleteStart, .DeleteEnd,
.CommentStart, .CommentEnd </span>{
    <span class="prop">display</span>: <span class="css-val">none</span>;
}</pre>
  </div>

</div>
