### Lifecycle Management 
Changing the content of a resource requires both the @date attribute, @last updated, and @version in the parent Bundle containing the changed resource to be updated. No need to update the other resources in the bundle unless they have also been updated. 

Managing the resources discretely. 

Managing the resources as a document in a Bundle. 

Managing the document as a static Bundle versions that are manually updated vs managing a dynamic Bundle that is automatically updated anytime one of its leaf resources is updated. 

### Case sensitivity 
All data elements associated with controlled vocabularies are case sensitive. Refer to local guidance for case sensitivity rules.

### Display names 
All display names are language specific and shall match the language of the document. French display name for French documents and English display names for English documents. 

NOTE:  
- The display name shall be present for all code systems unless disallowed by the schema.  

### Images  
Images are converted into Base64 encoding and incorporated into the Binary resource. 

Images are rendered by the style sheet as provided, with no resizing or adjustments to resolution made by the style sheet. Only include images that are clear and easy to read. 

All images require a meaningful description in the text element to allow screen reader software to describe the image to visually impaired audiences. Images should also have descriptive, yet simple, file names. This helps search engines find the image. 

Colours should meet the WCAG AA accessibility level for contrast. 

When authoring the ePI take into consideration the fact that it will be viewed on different screen sizes. Small screens may require more steps to access the same amount of information than on desktop or laptop screens. 

Alternative text (or alt text) is text that describes an image. It makes it possible for people using assistive technologies to access the information conveyed by an image. It also helps search engines better understand the purpose of the image. 

Recommendations for authors when writing alternative text for images: 
- describe the image as if describing it to someone over the phone.
- use as few words as possible.
- limit the text to around 140 characters (including spaces).
- use the text that is embedded in the image only if it provides enough context; otherwise, write different text that includes more information.
- don't use "image of..." or "graphic of..." to describe the image; screen readers do this already.

### Section headings 
All ePI section and sub-section headings are managed as controlled vocabularies. They shall have a code and display name. 

NOTE:  
- Section and sub-section headings are region specific. Refer to the Annex for region specific details on section headings. 

### Accessibility 
Web Content Accessibility Guidelines (WCAG) explains how to make web content more accessible to people with disabilities. Accessibility involves a wide range of disabilities, including visual, auditory, physical, speech, cognitive, language, learning, and neurological disabilities. Although these guidelines cover a wide range of issues, they are not able to address the needs of people with all types, degrees, and combinations of disability. These guidelines also make Web content more usable by older individuals with changing abilities due to aging and often improve usability for users in general. 

WCAG covers web sites, applications, and other digital content. It is developed by the World Wide Web Consortium (W3C) Web Accessibility Initiative (WAI). WCAG is an international standard. 

There are three levels of conformance: 
- Level A is the minimum level.
- Level AA includes all Level A and AA requirements. Many organizations strive to meet Level AA.
- Level AAA includes all Level A, AA, and AAA requirements.

FHIR ePIs are encouraged to fulfill the success criteria for the WCAG 2.1, Level AA standard. 

NOTE:  
- Refer to the World Wide Web Consortium’s (W3C) Web Content Accessibility Guidelines (WCAG) 2.1 for further information about Level AA success criteria. 

### Semi-structured Text 
As per the FHIR specification, narrative text in FHIR is encoded with xhtml. The narrative SHALL contain only the basic html formatting elements and attributes described in chapters 7-11 (except section 4 of chapter 9) and 15 of the HTML 4.0 standard, <a> elements (either name or href), images and internally contained style attributes. 

For convenience, this section outlines HTML elements commonly used by ePIs. However, refer to the HTML v4.0 standard for details on compliant formatting. 

NOTE:  
- Rendering systems can ignore or override any of the ePI’s internal or external styles. 
- The XHTML content SHALL NOT contain a head, a bodyelement, external stylesheet references, deprecated elements, scripts, forms, base/link/xlink, frames, iframes, objects or event related attributes (e.g. onClick).   This is to ensure that the content of the narrative is contained within the resource and that there is no active content. Such content would introduce security issues. 

### Paragraphs 
The P element is used to define paragraphs. 

The BR element is used to define line breaks.  

NOTE:  
- All text is within a P element with the exception of tables and lists. 
- Authors are advised to use style sheets to control text flow. Particularly around images and other objects. 

### Bold, Italics, Underline 
The B element is used to define bold text. 

The I element is used to define italicized text. 

The U element is used to define underlined text.  

### Colours and Shading 
Use the paragraph style attribute to Coloured paragraph text. 

Use the paragraph style attribute for shading paragraphs or adding a background to paragraph text. 
[INSERT a list of standardized class attributes and meanings] 

NOTE: 
- There needs to be a special reason to colour text. [look up in EMA guidance for standard text] 

### Lists 
The UL element is used to create an unordered list. 

The OL element is sued to create an ordered list 

### Symbols and special characters 
For XML, the following characters must be escaped to prevent validation errors. 

Special characters that need to be escaped in XML:

| Special Characters | Escape String |
|--|--|
| " | &quot; |
| ' | &apos; |
| < | &lt; |
| > | &gt; |
| & | &amp; |
 
### Superscript and subscript 
Enclose text the sup element for superscript and enclose text within the sub element for subscript. 

### Table formatting 
The TABLE element is used to create a table.  

The THEAD element is used to designate an entire row or rows as the table header. 

The TFOOT element is used to define the table footer. 

The TR element is used to define table rows. 

The TH element is used to define header cells. 

The TD element is used to define non-header cells. 

The COLSPAN elements are used to merge columns. 

The ROWSPAN elements are used to merge rows. 
The @frame attribute specifies which of the table’s outside borders are visible:  
- void: No sides. This is the default value.
- above: The top side only.
- below: The bottom side only.
- hsides: The top and bottom sides only.
- vsides: The right and left sides only.
- lhs: The left-hand side only.
- rhs: The right-hand side only.
- box: All four sides.
- border: All four sides.

The @rules attribute specifies which of the table’s internal borders are visible:  
- none: No rules. This is the default value.
- groups: Rules will appear between row groups (see THEAD, TFOOT, and TBODY) and column groups (see COLGROUP and COL) only.
- rows: Rules will appear between rows only.
- cols: Rules will appear between columns only.
- all: Rules will appear between all rows and columns.

The table/@ID attribute is used to give the table a unique identifier. For example, <tbody ID="t1">. Use the linkHtml/@href attribute to create cross-reference links to this table. 

NOTE: 
- Authors are encouraged to create a table header [update this text to say table needs table header so screen reader knows how to read the table properly]
- Best practice recommendation is not to use tables for formatting
- Authors are encouraged to use the CAPTION element to provide a short description of the table. A longer description may also be provided via the SUMMARY attribute for people using speech or Braille-based applications.
- Authors should use style sheets to control content layout rather than tables.
- Authors should use style sheets to control the following: borders; width; colours and shading; emphasis and alignment of table header text; emphasis and alignment of table titles.

### Additional Monitoring Indicators
Recommendations on how to handle: 

Black triangle 

Black box warnings 

### Hypertext links and cross-referencing 
To create hypertext links from text to text within the ePI’s Composition resource: 

Add an id to a block of text or table: 

```
<div id="a1"> 
<p>sample text</p> 
</div> 
And a link to the sample text: 
<p><a href="#a1">refer to sample text</a></p> 
To create hypertext links from text to content outside of the ePI document use the following format: 
<A href="http://www.w3.org/">W3C Web site</A> 
```

### Linking between data and narrative text 
In some contexts, it is useful to link between the two representations of the same content: structured data, and human readable narrative. This can be used to assert that the text is a representation of the data, or specifically that the data is derived from some particular text. This specification defines the extensions narrativeLink and originalText to establish these links. 

Refer to [section 2.4.0.5 of the FHIR Narrative](http://build.fhir.org/narrative.html#linking) for further detail. 

### Stylesheets 
The ePI’s XHTML SHALL not reference any external stylesheets. This is to ensure there is no active content that could introduce security issues. 
