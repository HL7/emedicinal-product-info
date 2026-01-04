## Objective
Standardize ePI content structure to ensure consistency, quality, and interoperability across jurisdictions. These recommendations supplement local regulatory requirements.

## Introduction
This guide defines standard formatting for ePI narrative content. Aligning technical structures reduces implementation complexity, lowers costs, and improves accessibility and AI-readiness. It consolidates best practices from HL7, W3C, and modern web standards.

<div class="markdown-alert markdown-alert-note">
<p class="markdown-alert-title">NOTE</p>
<p>This guide covers technical structure, XHTML compliance, and internal style attributes (e.g., text, tables, images). It does not include regulatory content requirements or external brand-specific styling.</p>
</div>

<div class="markdown-alert markdown-alert-important">
<p class="markdown-alert-title">IMPORTANT</p>
<p><strong>Do not include inline styling</strong> (e.g., fonts, colors, layouts) within the ePI document. Styling must remain separate from the ePI's XML or JSON structure in a style sheet (i.e., CSS, XSLT). The <strong>only exception</strong> is for basic inline formatting: <strong>bold</strong>, <u>underline</u>, <em>italics</em>, and text alignment.</p>
</div>

## Guidance
### Style vs. Formatting vs. Style Sheets
Separating content from style ensures better maintainability, reusability, and multi-channel delivery (web vs. print).

- **Inline Formatting:** Applied directly within the ePI (e.g., **Bold**, *Italics*, Hyperlinks).
- **Style Sheets (XSLT/CSS):** Managed externally to handle layout, transformations (XML to PDF), and professional aesthetics (fonts, colors, interactivity).

### ePI Structure (XML, JSON, XHTML)
By default, the structured elements of a FHIR document are based on Extensible Markup Language (XML) or JavaScript Object Notation (JSON).

However, there is an exception for Narrative text (E.g., paragraphs, lists, images, tables, hypertext links). Whether the ePI is XML or JSON, the narrative text is captured as EXtensible HyperText Markup Language (XHTML) or Markdown.

Markdown is a simplified standard for structuring plain text. In an ePI, Markdown is used in data fields that only require brief, basic text (E.g., Document title, section heading title).

XHTML is used in data fields that require full rich narrative text of varying lengths (E.g., paragraphs of text, tables, lists, images in the section content of a drug label).

For example, here is an ePI section structured with XML and the narrative as XHTML is within the `<div>` tag:

```xml
<section id="7c4f5a60-0d4e-ee11-be6e-000d3aaa06fe">
    <title value="1. What X is and what it is used for" />
    <code>
      <coding>
        <system value="https://spor.ema.europa.eu/v1/lists/200000029659/terms/" />
        <code value="200000029895" />
        <display value="1. What X is and what it is used for" />
      </coding>
    </code>
    <text>
      <status value="generated" />
      <div xmlns="http://www.w3.org/1999/xhtml">
        <p>The therapeutic indications in line with section 4.1 of the SmPC should be stated here. It should be stated in which age group the medicine is indicated, specifying the age limits, e.g. “X is used to treat {specify indication} in”.</p>
      </div>
    </text>
</section>
```

For example, here is an ePI section structured with JSON and the narrative as XHTML is within the `div` tag:

```json
{
  "title" : "1. What X is and what it is used for",
  "code" : {
    "coding" : [
      {
        "system" : "https://spor.ema.europa.eu/v1/lists/200000029659/terms/",
        "code" : "200000029895",
        "display" : "1. What X is and what it is used for"
      }
    ]
  },
  "text" : {
    "status" : "additional",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The therapeutic indications in line with section 4.1 of the SmPC should be stated here. It should be stated in which age group the medicine is indicated, specifying the age limits, e.g. “X is used to treat {specify indication} in</p></div>"
  }
}
```

### Accessibility
In most jurisdictions WCAG Level AA is recommended for use.

### Mobile-First Responsive Narratives
Modern ePI should be designed to render efficiently on a variety of devices, from small wearable screens to large desktop monitors. To ensure high readability and visual consistency across all viewports, implementers should follow "Mobile-First" principles:

- **Fluid Table Widths:** Tables should use percentage-based widths (e.g., `width: 100%;`) rather than fixed pixel widths to prevent horizontal scrolling on mobile devices.
- **Relative Font Sizes:** Use relative units like `em` or `rem` for font sizing to allow for user-scaling and responsive adjustments.
- **Scalable Media:** All images should be responsive (e.g., `max-width: 100%; height: auto;`) to fit the container viewport.

### Character set
The default standard for all content characters is Unicode Transformation Format 8-bit (UTF-8).

UTF-8 is a character encoding standard used to ensure text is presented consistently when exchanged across systems.

## Content Guidelines
### Narrative Text
All text must be contained within one of the following five tags:

- Paragraph `<p>`
- Ordered list `<ol>`
- Unordered list `<ul>`
- Table `<table>`
- Footer `<footer>`

Content Span `<span>`

### Paragraphs (`<p>`)
Paragraphs can contain inline tags like `<strong>`, `<em>`, `<sup>`, `<sub>`, and `<img>`. Use **`<strong>`** and *`<em>`* for semantic emphasis (improving accessibility) rather than `<b>` or `<i>`. 

**Note:**
- Do not nest lists or tables inside `<p>` tags.
- Use CSS or multiple `<p>` tags for spacing rather than `<br>` tags.

### In-line Style Attribute
The style attribute can be added to tags to apply inline formatting. E.g.,

`<p style="text-decoration: underline">Underlined Sub-heading</p>`

or

`<p>Example of how to <span style="text-decoration: underline">underline</span> specific text</p>`

The following is a list of classes that can be used together with the style attribute:

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 25%;">Class</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 40%;">Description</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Style</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">bold</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Bold Text</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ font-weight: bold }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">italics</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Italics Text</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ font-style: italic }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">underline</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Underlined Text</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ text-decoration: underline }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">strikethrough</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Strikethrough Text</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ text-decoration: line-through }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">left</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Left Aligned</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ text-align : left }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">right</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Right Aligned</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ text-align : right }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">center</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Center Aligned</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ text-align : center }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">justify</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Justified</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ text-align : justify }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">border-left</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Border on the left</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ border-left: 1px solid grey }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">border-right</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Border on the right</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ border-right: 1px solid grey }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">border-top</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Border on the top</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ border-top: 1px solid grey }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">border-bottom</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Border on the bottom</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ border-bottom: 1px solid grey }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">arabic</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List is ordered using Arabic numerals: 1, 2, 3</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: decimal }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">little-roman</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List is ordered using little Roman numerals: i, ii, iii</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: lower-roman }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">big-roman</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List is ordered using big Roman numerals: I, II, III</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: upper-roman }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">little-alpha</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List is ordered using little alpha characters: a, b, c</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: lower-alpha }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">big-alpha</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List is ordered using big alpha characters: A, B, C</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: upper-alpha }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">disc</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List bullets are simple solid discs</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: disc }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">circle</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List bullets are hollow discs</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type : circle }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">square</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List bullets are solid squares</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: square }</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">unlist</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">List with no bullets</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">{ list-style-type: none }</td>
        </tr>
    </tbody>
</table>

### Lists
Lists are defined using the Unordered List tag `<ul>` (i.e., bulleted list) or the Ordered List tag `<ol>` (i.e., numbered or alphabetical list).

`<ul>` and `<ol>` tags must only contain List Item `<li>` tags as children. List Item `<li>` tags can contain other tags as children; e.g., divider `<div>`, paragraph `<p>`, heading `<h1>` to `<h6>`, images `<img>`, and tables `<table>`.

For example, this shows how to multiple paragraphs in a single bullet.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">XML format</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Display Text Format</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">
                <pre>
&lt;ul&gt;
&lt;li&gt;
&lt;div&gt;    
&lt;p&gt;Bullet text with paragraphs&lt;/p&gt;
&lt;p&gt; next paragraph in the bullet &lt;/p&gt;
&lt;/div&gt;
&lt;/li&gt;
&lt;li&gt;Next bullet&lt;/li&gt;
&lt;/ul&gt;
                </pre>
            </td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">
                Bullet text with paragraphs<br/>
                next paragraph in the bullet<br/>
                Next bullet
            </td>
        </tr>
    </tbody>
</table>

Nested lists are made by adding another layer of `<ul>` or `<ol>` tags as children to a List.

For example, this shows how to create a nested list with a leading paragraph.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">XML format</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Display Text Format</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">
                <pre>
&lt;ol&gt;
&lt;li&gt;
Bullet text #1
&lt;/li&gt;
&lt;li&gt;
&lt;div&gt;&lt;p&gt;Bullet text #2&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Sub-bullet text #1&lt;/li&gt;
&lt;li&gt;Sub-bullet text #2&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;/li&gt;
&lt;/ol&gt;
                </pre>
            </td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">
                <ol>
                    <li>Bullet text #1</li>
                    <li>Bullet text #2
                        <ul>
                            <li>Sub-bullet text #1</li>
                            <li>Sub-bullet text #2</li>
                        </ul>
                    </li>
                </ol>
            </td>
        </tr>
    </tbody>
</table>

### Hyperlinks
The Anchor tag `<a>` and its attributes are used to represent hypertext links. E.g.,

[Visit W3Schools.com!](https://www.w3schools.com)

### Escape characters
The following characters are reserved in XML for specific purposes and must be escaped. E.g., Within the ePI’s XML, ampersand “&” cannot be used in narrative text. “&amp;” must be used in its place.

Web browsers and apps will always convert the escaped form “&amp;” back to the normal form “&”. The escaped form is only reserved for the XML content.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Special character</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Must be replaced by the escaped form</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Escaped form required in the XML</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Ampersand</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;amp;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Less-than</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;lt;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Greater-than</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;gt;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Quotes</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">"</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;quot;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Apostrophe</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">'</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;apos;</td>
        </tr>
    </tbody>
</table>

### Common Symbols
Symbols can be added as regular text as long as they are UTF-8 compliant or they can be replaced with named entities. Like the escape characters mentioned in Section 4.4, web browsers or applications convert named entities back to the normal symbol in the display.

The following table is a list of commonly use symbols. Refer to the HTML specification or W3C resources for a more comprehensive list.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Result</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Description</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Name</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Number</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&nbsp;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">non-breaking space</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;nbsp;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#160;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">less than</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;lt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#60;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">greater than</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#62;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&le;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">less than or equal to</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;"></td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#8804;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&ge;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">greater than or equal to</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;"></td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#8806;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">ampersand</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;amp;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#38;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&quot;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">double quotation mark</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;quot;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#34;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&apos;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">single quotation mark</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;apos;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#39;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&cent;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">cent</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;cent;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#162;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&pound;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">pound</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;pound;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#163;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&yen;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">yen</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;yen;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#165;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&euro;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">euro</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;euro;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#8364;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&copy;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">copyright</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;copy;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#169;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&reg;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">trademark</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;reg;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#174;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&deg;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">degree sign</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;deg;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&#176;</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&beta;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">beta</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&amp;beta;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;"></td>
        </tr>
    </tbody>
</table>

### Diacritical Marks
Diacritical marks work in a similar manner as symbols with named entities. The following table is a list of commonly use marks. Refer to the HTML specification or W3C resources for a more comprehensive list.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Mark</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Character</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Construct</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Result</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">`</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a&amp;#768;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">à</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">´</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a&amp;#769;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">á</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">^</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a&amp;#770;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">â</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">~</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">a&amp;#771;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">ã</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">`</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O&amp;#768;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Ò</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">´</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O&amp;#769;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Ó</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">^</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O&amp;#770;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Ô</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">~</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">O&amp;#771;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Õ</td>
        </tr>
    </tbody>
</table>

### Tables
The table tag `<table>` and its children (see table below) are used to structure a table.

Only `<thead>`, `<tbody>`, `<tfoot>`, `<caption>`, and `<colgroup>` tags are permitted as children of `<table>`.

The `<th>` and `<td>` tags may contain inline elements, paragraphs, headings, lists, and image tags as children. Only include text or content in `<caption>`, `<th>`, `<td>`, and `<tfoot>`. All other tags are only used for structure.

**Note:** Avoid using Tables for formatting and alignment. There are alternative best practice solutions that achieve the same objective in a standardized manner.

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 25%;">Tag</th>
            <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;table&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines a table</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;caption&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines a table caption or table title (Always keep the table title inside the table)</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;th&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines a header cell in a table</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;tr&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines a row in a table</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;td&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines a cell in a table</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;colgroup&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Specifies a group of one or more columns in a table for formatting</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;col&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Specifies column properties for each column within a &lt;colgroup&gt; element</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;thead&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Groups the header content in a table</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;tbody&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Groups the body content in a table</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;tfoot&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Groups the footer content in a table (Always keep the table footnotes inside the table)</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;rowspan&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines how many cells to merge across rows</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">&lt;colspan&gt;</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Defines how many cells to merge across columns</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Text alignment</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">Attribute applied to define text alignment in a table:<br>
                style="text-align: left; vertical-align: top;"<br>
                style="text-align: center; vertical-align: middle;"<br>
                style="text-align: right; vertical-align: bottom;"
            </td>
        </tr>
    </tbody>
</table>

**Example: Simple Table**

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 1</th>
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 2</th>
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">1</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">2</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">3</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">4</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">5</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">6</td>
        </tr>
    </tbody>
</table>

**Example: Merge cells across columns**

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 1</th>
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 2</th>
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;" colspan="2">12</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">3</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">4</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">5</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">6</td>
        </tr>
    </tbody>
</table>

**Example: Merge cells across rows**

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; margin-bottom: 20px;">
    <thead>
        <tr style="background-color: #003087; color: #ffffff;">
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 1</th>
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 2</th>
            <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Header 3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">1</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">2</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;" rowspan="2">36</td>
        </tr>
        <tr>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">4</td>
            <td style="padding: 10px; border: 1px solid #d0d0d0;">5</td>
        </tr>
    </tbody>
</table>

### Images
SVG (Scalable Vector Graphics) is the preferred format for ePI images due to its loss-less scalability across devices. JPEG and PNG formats are acceptable for legacy content, but SVG is the standard for all ePIs going forward.

All images must be embedded as Base64 objects within a Contained Binary resource to ensure the ePI is exchanged as a single file.

**Note:**
- Always include descriptive `alt` text for accessibility.
- Ensure colors meet WCAG Level AA contrast requirements.

### Audio and Video
It is best practice not to embed audio or video files within an ePI given their large size. Instead, the ePI should link to external copies of audio and video files.

**Note:** Check local regulations to confirm if audio and video files are allowed to be used with an ePI.

### Languages
Each language must be a separate ePI document. Text direction (e.g., RTL for Arabic, vertical for Japanese) is managed by the style sheet rather than the underlying content.

### Math Formulas
MathML is not currently supported in FHIR ePI. Recreate simple formulas using narrative tags (e.g., `a + b<sup>2</sup>`). Complex formulas should be embedded as images (see [Images](#images)).

## Appendices
### References
- [HL7 FHIR XHTML Styling specification - Narrative - FHIR v5.0.0](http://hl7.org/fhir/narrative.html)
- [W3Schools Online Web Tutorials](https://www.w3schools.com)
- [HTML specification v4.0 - HTML 4.0 Specification](https://www.w3.org/TR/html4/)
- [HL7 FHIR narrative text specification - Narrative - FHIR v5.0.0](http://hl7.org/fhir/narrative.html)
- [Mathematical Markup Language (MathML) Version 3.0 2nd Edition](https://www.w3.org/TR/MathML/)
- [Scalable Vector Graphics (SVG) 2 specification](https://www.w3.org/TR/SVG2/struct.html)
- [XHTML™ 1.0 in XML Schema](https://www.w3.org/TR/xhtml1-schema/)
- [Jordan Food and Drug Administration’s (JFDA) HTML Validator guidance - Leaflet · Debug](http://www.jfda.jo/EchoBusV3.0/SystemAssets/Leaflet.html)

### Named entities
- [W3C Schools HTML ISO-8859-1 Reference](https://www.w3schools.com/charsets/ref_html_8859.asp)
- ISO/IEC 8859-1:1998 - Information technology — 8-bit single-byte coded graphic character sets — Part 1: Latin alphabet No. 1
