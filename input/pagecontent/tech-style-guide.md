<html>
<head>
    <meta charset="UTF-8" />
    <title>Technical Style Guide Recommendations</title>
</head>
<body>
    <h2>Objective</h2>
    <p>To provide standardized instructions for structuring ePI content; and ensure the consistency, clarity and quality of ePIs across organizations, jurisdictions, and regulators. These recommendations are subject to local regulatory rules. Refer to local regulatory guidance for actual requirements.</p>

    <h2>Introduction</h2>
    <p>A Technical Style Guide defines the standard format and structure for writing technical documents within or across organizations. This is of great value to the international ePI project because the associated technologies and standards (e.g., XML, HTML, style sheets) are highly flexible and offer a wide array of options.</p>
    <p>The risk of divergence is therefore high if all organizations and regulators across jurisdictions chose to structure their ePIs in different ways. Although still compliant with FHIR, the resulting divergence could complicate global implementation and maintenance. This results in an unnecessary increase in software development and maintenance costs and process inefficiencies.</p>
    <p>Through standardization, we ensure ePI content is more consistent, accessible, easier to maintain, interoperable across systems, is more search engine friendly, and more friendly for artificial intelligence.</p>
    <p>The content of this guide is not novel. It consolidates a selection of common best practices from Health Level 7 (HL7), web development, and web standards for convenience.</p>

    <h2>Scope</h2>
    <h3>In-scope</h3>
    <ul>
        <li>XML and JSON structure, formatting, attributes, and elements</li>
        <li>HTML and XHTML structure, formatting, attributes, and elements</li>
        <li>Chapters 7-11 (except section 4 of chapter 9) and 15 of the HTML 4.0 standard</li>
        <li>Text, tables, images, and internally contained style attributes</li>
    </ul>
    <h3>Out of scope</h3>
    <ul>
        <li>Regulatory content requirements</li>
        <li>Content style (e.g., Font, font colour, font size)</li>
        <li>External style attributes from a style sheet</li>
    </ul>

    <h2>Guidance</h2>
    <h3>ePI Structure (XML, JSON, XHTML)</h3>
    <p>By default, the structured elements of a FHIR document are based on Extensible Markup Language (XML) or JavaScript Object Notation (JSON).</p>
    <p>However, there is an exception for Narrative text (E.g., paragraphs, lists, images, tables, hypertext links). Whether the ePI is XML or JSON, the narrative text is captured as EXtensible HyperText Markup Language (XHTML) or Markdown.</p>
    <p>Markdown is a simplified standard for structuring plain text. In an ePI, Markdown is used in data fields that only require brief, basic text (E.g., Document title, section heading title).</p>
    <p>XHTML is used in data fields that require full rich narrative text of varying lengths (E.g., paragraphs of text, tables, lists, images in the section content of a drug label).</p>
    <p>For example, here is an ePI section structured with XML (Red) and narrative as XHTML (Blue):</p>
    <pre>
&lt;section id="7c4f5a60-0d4e-ee11-be6e-000d3aaa06fe"&gt;
    &lt;title value="1. What X is and what it is used for" /&gt;
    &lt;code&gt;
      &lt;coding&gt;
        &lt;system value="https://spor.ema.europa.eu/v1/lists/200000029659/terms/" /&gt;
        &lt;code value="200000029895" /&gt;
        &lt;display value="1. What X is and what it is used for" /&gt;
      &lt;/coding&gt;
    &lt;/code&gt;
    &lt;text&gt;
      &lt;status value="generated" /&gt;
      &lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;
        &lt;p&gt;The therapeutic indications in line with section 4.1 of the SmPC should be stated here. It should be stated in which age group the medicine is indicated, specifying the age limits, e.g. “X is used to treat {specify indication} in”.&lt;/p&gt;
      &lt;/div&gt;
    &lt;/text&gt;
&lt;/section&gt;
    </pre>
    <p>For example, here is an ePI section structured with JSON (Red) and the narrative as XHTML (Blue):</p>
    <pre>
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
    "div" : "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;The therapeutic indications in line with section 4.1 of the SmPC should be stated here. It should be stated in which age group the medicine is indicated, specifying the age limits, e.g. “X is used to treat {specify indication} in&lt;/p&gt;&lt;/div&gt;"
  }
}
    </pre>

    <h3>Style vs. Inline Text Formatting vs. Style Sheet</h3>
    <p>Text style refers to visual characteristics applied to the whole document to achieve an overall look and feel. E.g., Font type, Font size, Font colour, Table borders, Table cell shading, type of bullets.</p>
    <p>Inline text formatting refers to visual characteristics applied to specific portions of text within the document. E.g., <b>Bold</b>, <i>italic</i>, superscript, subscript, hypertext link.</p>
    <p>Inline text lives within a ePI document. Styles are applied from outside the document using a Style Sheet. A style sheet is made up of one or both of the following:</p>
    <ul>
        <li>Extensible Stylesheet Language Transformations (XSLT) is used to transform content from one document format to another (e.g., convert XML to user friendly PDF); move content around (e.g., move Section 2 before Section 1); or transform content (e.g., transform this number format from “10000000” to “10,000,000” or “1x10<sup>7</sup>”).</li>
        <li>Cascading Style Sheet (CSS) is used to style the content after transformation. E.g., make all text in the document Aptos font; font size 11pt; black font colour. The CSS can also be used to add interactive elements like expand/collapse buttons; column filters on large tables.</li>
    </ul>
    <p>Keeping style and content separate is a key benefit of structured content. Keeping them separate in an ePI document ensures the following:</p>
    <ul>
        <li><b>Maintenance:</b> Easier to update a single central style sheet, that applies a global change to all ePIs across a portfolio, rather than updating each ePI individually.</li>
        <li><b>Reusability:</b> Style sheets can be reused across multiple document types to apply a consistent appearance across an organization. E.g., reuse a common house table style across labeling, CMC, and Clinical documents.</li>
        <li><b>Context:</b> Different style sheets can be used to serve different objectives. e.g., transform an ePI into an accessibility friendly webpage with high contrast mode; or use another style sheet to transform the ePI into a print friendly PDF with pagination and page breaks.</li>
    </ul>

    <h3>Accessibility</h3>
    <p>In most jurisdictions WCAG Level AA is recommended for use.</p>

    <h3>Character set</h3>
    <p>The default standard for all content characters is Unicode Transformation Format 8-bit (UTF-8).</p>
    <p>UTF-8 is a character encoding standard used to ensure text is presented consistently when exchanged across systems.</p>

    <h2>Content Guidelines</h2>
    <h3>Narrative Text</h3>
    <p>All text must be contained within one of the following five tags:</p>
    <ul>
        <li>Paragraph &lt;p&gt;</li>
        <li>Ordered list &lt;ol&gt;</li>
        <li>Unordered list &lt;ul&gt;</li>
        <li>Table &lt;table&gt;</li>
        <li>Footer &lt;footer&gt;</li>
    </ul>
    <p>Content Span &lt;span&gt;</p>

    <h3>Paragraphs</h3>
    <p>The paragraph tag &lt;p&gt; can contain text and inline formatting tags as children. E.g.,</p>
    <ul>
        <li>Parse <b>&lt;strong&gt;</b> (instead of Bold &lt;b&gt;)</li>
        <li>Emphasis <i>&lt;em&gt;</i> (instead of Italics &lt;i&gt;)</li>
        <li>Superscript &lt;sup&gt;</li>
        <li>Subscript &lt;sub&gt;</li>
        <li>Image &lt;img&gt;</li>
        <li>Content Span &lt;span&gt;</li>
    </ul>
    <p>The <b>&lt;strong&gt;</b> and <i>&lt;em&gt;</i> tags are used to give semantic meaning to text.</p>
    <p><b>&lt;strong&gt;</b> is used to indicate that the text has strong importance or emphasis. It typically renders the text in bold.</p>
    <p><i>&lt;em&gt;</i> This tag is used to emphasize text, usually rendering it in italics.</p>
    <p>The bold tag &lt;b&gt; and italics tag &lt;i&gt; are only used to convey the appearance of text and do not convey any semantic meaning.</p>
    <p>Developers can use the semantic meaning behind <b>&lt;strong&gt;</b> and <i>&lt;em&gt;</i> tags to deliver benefits like the following:</p>
    <ul>
        <li><b>Improve Accessibility:</b> Accessibility services, like screen readers, are already designed to understand the structure and importance of content within semantic tags.</li>
        <li><b>Consistent Styling:</b> Semantic tags can be targeted with style sheets to apply styling consistently across web browsers and devices (mobile, desktop, wearable).</li>
        <li><b>Better User Experience:</b> Developers can reuse known and effective best practices to create intuitive and user-friendly experiences.</li>
    </ul>
    <p><b>Note:</b></p>
    <ul>
        <li>The Paragraph tag &lt;p&gt; cannot contain lists or tables as children.</li>
        <li>Use Paragraph tags instead of Line Break &lt;br&gt; tags. Line Breaks and white space between content blocks (e.g., paragraphs, tables) should be handled by the style sheet as needed.</li>
    </ul>

    <h3>In-line Style Attribute</h3>
    <p>The style attribute can be added to tags to apply inline formatting. E.g.,</p>
    <p>&lt;p style="text-decoration: underline"&gt;Underlined Sub-heading&lt;/p&gt;</p>
    <p>or</p>
    <p>&lt;p&gt;Example of how to &lt;span style="text-decoration: underline"&gt;underline&lt;/span&gt; specific text&lt;/p&gt;</p>
    <p>The following is a list of classes that can be used together with the style attribute:</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">Class</th>
                <th style="border: 1px solid black;">Description</th>
                <th style="border: 1px solid black;">Style</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">bold</td>
                <td style="border: 1px solid black;">Bold Text</td>
                <td style="border: 1px solid black;">{ font-weight: bold }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">italics</td>
                <td style="border: 1px solid black;">Italics Text</td>
                <td style="border: 1px solid black;">{ font-style: italic }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">underline</td>
                <td style="border: 1px solid black;">Underlined Text</td>
                <td style="border: 1px solid black;">{ text-decoration: underline }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">strikethrough</td>
                <td style="border: 1px solid black;">Strikethrough Text</td>
                <td style="border: 1px solid black;">{ text-decoration: line-through }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">left</td>
                <td style="border: 1px solid black;">Left Aligned</td>
                <td style="border: 1px solid black;">{ text-align : left }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">right</td>
                <td style="border: 1px solid black;">Right Aligned</td>
                <td style="border: 1px solid black;">{ text-align : right }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">center</td>
                <td style="border: 1px solid black;">Center Aligned</td>
                <td style="border: 1px solid black;">{ text-align : center }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">justify</td>
                <td style="border: 1px solid black;">Justified</td>
                <td style="border: 1px solid black;">{ text-align : justify }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">border-left</td>
                <td style="border: 1px solid black;">Border on the left</td>
                <td style="border: 1px solid black;">{ border-left: 1px solid grey }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">border-right</td>
                <td style="border: 1px solid black;">Border on the right</td>
                <td style="border: 1px solid black;">{ border-right: 1px solid grey }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">border-top</td>
                <td style="border: 1px solid black;">Border on the top</td>
                <td style="border: 1px solid black;">{ border-top: 1px solid grey }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">border-bottom</td>
                <td style="border: 1px solid black;">Border on the bottom</td>
                <td style="border: 1px solid black;">{ border-bottom: 1px solid grey }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">arabic</td>
                <td style="border: 1px solid black;">List is ordered using Arabic numerals: 1, 2, 3</td>
                <td style="border: 1px solid black;">{ list-style-type: decimal }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">little-roman</td>
                <td style="border: 1px solid black;">List is ordered using little Roman numerals: i, ii, iii</td>
                <td style="border: 1px solid black;">{ list-style-type: lower-roman }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">big-roman</td>
                <td style="border: 1px solid black;">List is ordered using big Roman numerals: I, II, III</td>
                <td style="border: 1px solid black;">{ list-style-type: upper-roman }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">little-alpha</td>
                <td style="border: 1px solid black;">List is ordered using little alpha characters: a, b, c</td>
                <td style="border: 1px solid black;">{ list-style-type: lower-alpha }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">big-alpha</td>
                <td style="border: 1px solid black;">List is ordered using big alpha characters: A, B, C</td>
                <td style="border: 1px solid black;">{ list-style-type: upper-alpha }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">disc</td>
                <td style="border: 1px solid black;">List bullets are simple solid discs</td>
                <td style="border: 1px solid black;">{ list-style-type: disc }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">circle</td>
                <td style="border: 1px solid black;">List bullets are hollow discs</td>
                <td style="border: 1px solid black;">{ list-style-type : circle }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">square</td>
                <td style="border: 1px solid black;">List bullets are solid squares</td>
                <td style="border: 1px solid black;">{ list-style-type: square }</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">unlist</td>
                <td style="border: 1px solid black;">List with no bullets</td>
                <td style="border: 1px solid black;">{ list-style-type: none }</td>
            </tr>
        </tbody>
    </table>

    <h3>Lists</h3>
    <p>Lists are defined using the Unordered List tag &lt;ul&gt; (i.e., bulleted list) or the Ordered List tag &lt;ol&gt; (i.e., numbered or alphabetical list).</p>
    <p>&lt;ul&gt; and &lt;ol&gt; tags must only contain List Item &lt;li&gt; tags as children. List Item &lt;li&gt; tags can contain other tags as children; e.g., divider &lt;div&gt;, paragraph &lt;p&gt;, heading &lt;h1&gt; to &lt;h6&gt;, images &lt;img&gt;, and tables &lt;table&gt;.</p>
    <p>For example, this shows how to multiple paragraphs in a single bullet.</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">XML format</th>
                <th style="border: 1px solid black;">Display Text Format</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">
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
                <td style="border: 1px solid black;">
                    Bullet text with paragraphs<br/>
                    next paragraph in the bullet<br/>
                    Next bullet
                </td>
            </tr>
        </tbody>
    </table>
    <p>Nested lists are made by adding another layer of &lt;ul&gt; or &lt;ol&gt; tags as children to a List.</p>
    <p>For example, this shows how to create a nested list with a leading paragraph.</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">XML format</th>
                <th style="border: 1px solid black;">Display Text Format</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">
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
                <td style="border: 1px solid black;">
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

    <h3>Hyperlinks</h3>
    <p>The Anchor tag &lt;a&gt; and its attributes are used to represent hypertext links. E.g.,</p>
    <p><a href="https://www.w3schools.com">Visit W3Schools.com!</a></p>

    <h3>Escape characters</h3>
    <p>The following characters are reserved in XML for specific purposes and must be escaped. E.g., Within the ePI’s XML, ampersand “&amp;” cannot be used in narrative text. “&amp;” must be used in its place.</p>
    <p>Web browsers and apps will always convert the escaped form “&amp;” back to the normal form “&amp;”. The escaped form is only reserved for the XML content.</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">Special character</th>
                <th style="border: 1px solid black;">Must be replaced by the escaped form</th>
                <th style="border: 1px solid black;">Escaped form required in the XML</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">Ampersand</td>
                <td style="border: 1px solid black;">&amp;</td>
                <td style="border: 1px solid black;">&amp;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">Less-than</td>
                <td style="border: 1px solid black;">&lt;</td>
                <td style="border: 1px solid black;">&lt;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">Greater-than</td>
                <td style="border: 1px solid black;">&gt;</td>
                <td style="border: 1px solid black;">&gt;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">Quotes</td>
                <td style="border: 1px solid black;">"</td>
                <td style="border: 1px solid black;">&quot;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">Apostrophe</td>
                <td style="border: 1px solid black;">'</td>
                <td style="border: 1px solid black;">&apos;</td>
            </tr>
        </tbody>
    </table>

    <h3>Common Symbols</h3>
    <p>Symbols can be added as regular text as long as they are UTF-8 compliant or they can be replaced with named entities. Like the escape characters mentioned in Section 4.4, web browsers or applications convert named entities back to the normal symbol in the display.</p>
    <p>The following table is a list of commonly use symbols. Refer to the HTML specification or W3C resources for a more comprehensive list.</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">Result</th>
                <th style="border: 1px solid black;">Description</th>
                <th style="border: 1px solid black;">Name</th>
                <th style="border: 1px solid black;">Number</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">&nbsp;</td>
                <td style="border: 1px solid black;">non-breaking space</td>
                <td style="border: 1px solid black;">&nbsp;</td>
                <td style="border: 1px solid black;">&#160;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;</td>
                <td style="border: 1px solid black;">less than</td>
                <td style="border: 1px solid black;">&lt;</td>
                <td style="border: 1px solid black;">&#60;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&gt;</td>
                <td style="border: 1px solid black;">greater than</td>
                <td style="border: 1px solid black;">&gt;</td>
                <td style="border: 1px solid black;">&#62;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&le;</td>
                <td style="border: 1px solid black;">less than or equal to</td>
                <td style="border: 1px solid black;"></td>
                <td style="border: 1px solid black;">&#8804;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&ge;</td>
                <td style="border: 1px solid black;">greater than or equal to</td>
                <td style="border: 1px solid black;"></td>
                <td style="border: 1px solid black;">&#8806;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&amp;</td>
                <td style="border: 1px solid black;">ampersand</td>
                <td style="border: 1px solid black;">&amp;</td>
                <td style="border: 1px solid black;">&#38;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&quot;</td>
                <td style="border: 1px solid black;">double quotation mark</td>
                <td style="border: 1px solid black;">&quot;</td>
                <td style="border: 1px solid black;">&#34;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&apos;</td>
                <td style="border: 1px solid black;">single quotation mark</td>
                <td style="border: 1px solid black;">&apos;</td>
                <td style="border: 1px solid black;">&#39;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&cent;</td>
                <td style="border: 1px solid black;">cent</td>
                <td style="border: 1px solid black;">&cent;</td>
                <td style="border: 1px solid black;">&#162;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&pound;</td>
                <td style="border: 1px solid black;">pound</td>
                <td style="border: 1px solid black;">&pound;</td>
                <td style="border: 1px solid black;">&#163;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&yen;</td>
                <td style="border: 1px solid black;">yen</td>
                <td style="border: 1px solid black;">&yen;</td>
                <td style="border: 1px solid black;">&#165;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&euro;</td>
                <td style="border: 1px solid black;">euro</td>
                <td style="border: 1px solid black;">&euro;</td>
                <td style="border: 1px solid black;">&#8364;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&copy;</td>
                <td style="border: 1px solid black;">copyright</td>
                <td style="border: 1px solid black;">&copy;</td>
                <td style="border: 1px solid black;">&#169;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&reg;</td>
                <td style="border: 1px solid black;">trademark</td>
                <td style="border: 1px solid black;">&reg;</td>
                <td style="border: 1px solid black;">&#174;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&deg;</td>
                <td style="border: 1px solid black;">degree sign</td>
                <td style="border: 1px solid black;">&deg;</td>
                <td style="border: 1px solid black;">&#176;</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&beta;</td>
                <td style="border: 1px solid black;">beta</td>
                <td style="border: 1px solid black;">&beta;</td>
                <td style="border: 1px solid black;"></td>
            </tr>
        </tbody>
    </table>

    <h3>Diacritical Marks</h3>
    <p>Diacritical marks work in a similar manner as symbols with named entities. The following table is a list of commonly use marks. Refer to the HTML specification or W3C resources for a more comprehensive list.</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">Mark</th>
                <th style="border: 1px solid black;">Character</th>
                <th style="border: 1px solid black;">Construct</th>
                <th style="border: 1px solid black;">Result</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">`</td>
                <td style="border: 1px solid black;">a</td>
                <td style="border: 1px solid black;">a&#768;</td>
                <td style="border: 1px solid black;">à</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">´</td>
                <td style="border: 1px solid black;">a</td>
                <td style="border: 1px solid black;">a&#769;</td>
                <td style="border: 1px solid black;">á</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">^</td>
                <td style="border: 1px solid black;">a</td>
                <td style="border: 1px solid black;">a&#770;</td>
                <td style="border: 1px solid black;">â</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">~</td>
                <td style="border: 1px solid black;">a</td>
                <td style="border: 1px solid black;">a&#771;</td>
                <td style="border: 1px solid black;">ã</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">`</td>
                <td style="border: 1px solid black;">O</td>
                <td style="border: 1px solid black;">O&#768;</td>
                <td style="border: 1px solid black;">Ò</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">´</td>
                <td style="border: 1px solid black;">O</td>
                <td style="border: 1px solid black;">O&#769;</td>
                <td style="border: 1px solid black;">Ó</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">^</td>
                <td style="border: 1px solid black;">O</td>
                <td style="border: 1px solid black;">O&#770;</td>
                <td style="border: 1px solid black;">Ô</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">~</td>
                <td style="border: 1px solid black;">O</td>
                <td style="border: 1px solid black;">O&#771;</td>
                <td style="border: 1px solid black;">Õ</td>
            </tr>
        </tbody>
    </table>

    <h3>Tables</h3>
    <p>The table tag &lt;table&gt; and its children (see table below) are used to structure a table.</p>
    <p>Only &lt;thead&gt;, &lt;tbody&gt;, &lt;tfoot&gt;, &lt;caption&gt;, and &lt;colgroup&gt; tags are permitted as children of &lt;table&gt;.</p>
    <p>The &lt;th&gt; and &lt;td&gt; tags may contain inline elements, paragraphs, headings, lists, and image tags as children. Only include text or content in &lt;caption&gt;, &lt;th&gt;, &lt;td&gt;, and &lt;tfoot&gt;. All other tags are only used for structure.</p>
    <p><b>Note:</b> Avoid using Tables for formatting and alignment. There are alternative best practice solutions that achieve the same objective in a standardized manner.</p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <th style="border: 1px solid black;">Tag</th>
                <th style="border: 1px solid black;">Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">&lt;table&gt;</td>
                <td style="border: 1px solid black;">Defines a table</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;caption&gt;</td>
                <td style="border: 1px solid black;">Defines a table caption or table title (Always keep the table title inside the table)</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;th&gt;</td>
                <td style="border: 1px solid black;">Defines a header cell in a table</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;tr&gt;</td>
                <td style="border: 1px solid black;">Defines a row in a table</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;td&gt;</td>
                <td style="border: 1px solid black;">Defines a cell in a table</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;colgroup&gt;</td>
                <td style="border: 1px solid black;">Specifies a group of one or more columns in a table for formatting</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;col&gt;</td>
                <td style="border: 1px solid black;">Specifies column properties for each column within a &lt;colgroup&gt; element</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;thead&gt;</td>
                <td style="border: 1px solid black;">Groups the header content in a table</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;tbody&gt;</td>
                <td style="border: 1px solid black;">Groups the body content in a table</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;tfoot&gt;</td>
                <td style="border: 1px solid black;">Groups the footer content in a table (Always keep the table footnotes inside the table)</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;rowspan&gt;</td>
                <td style="border: 1px solid black;">Defines how many cells to merge across rows</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">&lt;colspan&gt;</td>
                <td style="border: 1px solid black;">Defines how many cells to merge across columns</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">Text alignment</td>
                <td style="border: 1px solid black;">Attribute applied to define text alignment in a table:<br>
                    style="text-align: left; vertical-align: top;"<br>
                    style="text-align: center; vertical-align: middle;"<br>
                    style="text-align: right; vertical-align: bottom;"
                </td>
            </tr>
        </tbody>
    </table>

    <p><b>Example: Simple Table</b></p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <td style="border: 1px solid black;">Header 1</td>
                <td style="border: 1px solid black;">Header 2</td>
                <td style="border: 1px solid black;">Header 3</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">1</td>
                <td style="border: 1px solid black;">2</td>
                <td style="border: 1px solid black;">3</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">4</td>
                <td style="border: 1px solid black;">5</td>
                <td style="border: 1px solid black;">6</td>
            </tr>
        </tbody>
    </table>

    <p><b>Example: Merge cells across columns</b></p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <td style="border: 1px solid black;">Header 1</td>
                <td style="border: 1px solid black;">Header 2</td>
                <td style="border: 1px solid black;">Header 3</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;" colspan="2">12</td>
                <td style="border: 1px solid black;">3</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">4</td>
                <td style="border: 1px solid black;">5</td>
                <td style="border: 1px solid black;">6</td>
            </tr>
        </tbody>
    </table>

    <p><b>Example: Merge cells across rows</b></p>
    <table style="border: 1px solid black;">
        <thead>
            <tr>
                <td style="border: 1px solid black;">Header 1</td>
                <td style="border: 1px solid black;">Header 2</td>
                <td style="border: 1px solid black;">Header 3</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border: 1px solid black;">1</td>
                <td style="border: 1px solid black;">2</td>
                <td style="border: 1px solid black;" rowspan="2">36</td>
            </tr>
            <tr>
                <td style="border: 1px solid black;">4</td>
                <td style="border: 1px solid black;">5</td>
            </tr>
        </tbody>
    </table>

    <h3>Images</h3>
    <p>The preferred format for images is Scalable Vector Graphics (SVG). SVG is an XML based format that can be scaled to any size without losing quality. SVG is ideal for graphics that need to look sharp at any size. This is ideal for ePI since graphics need to be resized for different size screens (wearable, mobile, desktop); or resized to suit printed cartons, paper leaflets, and instructions for use.</p>
    <p>All images must be embedded within the ePI’s XML as Base64 objects. This allows an ePI to be exchanged as a single XML or JSON file. Each image is managed as a single Base64 object in a single Contained Binary resource within the ePI. E.g.,</p>
    <pre>
&lt;contained&gt;
 &lt;Binary&gt;
     &lt;id value="companylogo" /&gt;
     &lt;contentType value="image/svg+xml" /&gt;
     &lt;data value="Base64 data goes here" /&gt;
 &lt;/Binary&gt;
&lt;/contained&gt;
    </pre>
    <p>The image tag &lt;img&gt; is then placed in the content to show where the image is supposed to go. E.g.,</p>
    <pre>
&lt;text&gt;
    &lt;status value="generated" /&gt;
    &lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;
        &lt;p&gt;&lt;img src="#companylogo" alt="Company logo" /&gt;Product Name&lt;/p&gt;
    &lt;/div&gt;
&lt;/text&gt;
    </pre>
    <p><b>Note:</b></p>
    <ul>
        <li>Include a brief but meaningful description of the image using the “alt” attribute in the image tag &lt;img&gt; to facilitate accessibility features like screen reading.</li>
        <li>Colours should meet the WCAG Level AA for contrast.</li>
    </ul>

    <h3>Audio and Video</h3>
    <p>It is best practice not to embed audio or video files within an ePI given their large size. Instead, the ePI should link to external copies of audio and video files.</p>
    <p><b>Note:</b> Check local regulations to confirm if audio and video files are allowed to be used with an ePI.</p>

    <h3>Languages</h3>
    <p>Each language should be a separate ePI document. E.g., one ePI for English and a separate ePI for its French translation.</p>
    <p>The style sheet will be used to control the direction of text. E.g., the XML may show Arabic text as left to right but the style sheet will convert the content to correctly show as right to left; Japanese will appear as left to right but the style sheet can convert the content to show as top to bottom or right to left pages.</p>

    <h3>Math formulas</h3>
    <p>Mathematical Markup Language (MathML) or similar structured mathematical notations are not compliant with the FHIR specification at this time. Simple formulas can be recreated in the narrative. For example, (a + b)<sup>2</sup> could be expressed as:</p>
    <p>&lt;p&gt;a + b<sup>2</sup>&lt;/p&gt;</p>
    <p>Complex formulas must be incorporated into the ePI as an image and then referenced in the text using the image tag &lt;img&gt; (Refer to section 5.4 for guidance on images).</p>

    <h2>Appendices</h2>
    <h3>References</h3>
    <ul>
        <li><a href="http://hl7.org/fhir/narrative.html">HL7 FHIR XHTML Styling specification - Narrative - FHIR v5.0.0</a></li>
        <li><a href="https://www.w3schools.com">W3Schools Online Web Tutorials</a></li>
        <li><a href="https://www.w3.org/TR/html4/">HTML specification v4.0 - HTML 4.0 Specification</a></li>
        <li><a href="http://hl7.org/fhir/narrative.html">HL7 FHIR narrative text specification - Narrative - FHIR v5.0.0</a></li>
        <li><a href="https://www.w3.org/TR/MathML/">Mathematical Markup Language (MathML) Version 3.0 2nd Edition</a></li>
        <li><a href="https://www.w3.org/TR/SVG2/struct.html">Scalable Vector Graphics (SVG) 2 specification</a></li>
        <li><a href="https://www.w3.org/TR/xhtml1-schema/">XHTML™ 1.0 in XML Schema</a></li>
        <li><a href="http://www.jfda.jo/EchoBusV3.0/SystemAssets/Leaflet.html">Jordan Food and Drug Administration’s (JFDA) HTML Validator guidance - Leaflet · Debug</a></li>
    </ul>

    <h3>Named entities</h3>
    <ul>
        <li><a href="https://www.w3schools.com/charsets/ref_html_8859.asp">W3C Schools HTML ISO-8859-1 Reference</a></li>
        <li>ISO/IEC 8859-1:1998 - Information technology — 8-bit single-byte coded graphic character sets — Part 1: Latin alphabet No. 1</li>
    </ul>
</body>
</html>
