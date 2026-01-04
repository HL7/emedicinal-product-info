The annotation model for both comments and track changes involves using the HTML anchor tag `<a>` as start and end location markers for each comment, insertion and deletion point within the content of the Composition section. These markers then reference the details of annotation, which are held in a separate Annotations section within the Composition.

### Annotations Section
The annotation details, such as the author and date, the comment text and comment replies are all held within a “Annotations” section. The text of this section contains a `<div class=”comments”>` that holds all of the comments and comment replies, and a `<div class=”trackChanges”>` that holds the track change details.

Each track change has a `<div>` within the `div/@class=”trackChanges”`.  The `@class` indicates the type of track change (Insert vs. Delete), and the `@title` holds the change identifier. `<span>` tags hold the change details, such as the author and date. The change identifier (`div[@class=”delete” or @class=”insert”]/@id`) is referenced by the change tag markers in the content. 

```xml
<div class="Delete" title="del01">
       <span class="Author" title="FDA Reviewer"/>
       <span class="Date" title="2024-11-25T10:00:00Z"/>
       <p>None</p>
</div> 

<div class="Insert" title="ins01">
       <span class="Author" title="Company 1"/>
       <span class="Date" title="2025-01-28T10:00:00Z"/>
       <p>None</p>
</div>
```

The comments are held within the `div/@class=”comments”` of the “Annotations” section. Each comment is within a `div/@class="CommentContent"`, and the `@title` holds the comment identifier, which is referenced by the comment start and end markers in the content. `<span>` tags are used to hold the comment author and date, and the comment text is within HTML tags. 

```xml
<div class="CommentContent" title="comment01">
       <span class="CommentAuthor" title="Author1"></span>
       <span class="CommentDate" title=" 2025-05-22T13:18:00Z"></span>
       <p>comment text here</p>
</div>
```

### Track change markers
The start and end markers of track changes are indicated by the `<a>` tag that has an id and a class to identify the type of track change anchor it is (insert vs. delete, start vs. end). For example:

```xml
<a id="ins01" class="InsertStart"/>

<a id="del01" class="DeleteStart"/>
```

The `@id` is a unique identifier that ties together the start tag, the end tag, and the change details. 
An `<a>` tag is also used to mark the end of the range. The ending `<a>` tag has an href attribute that corresponds to the start `<a>` id value, as well as a class to identify the type of track change tag it is. For example:

```xml
<a href="ins01" class="InsertEnd"/>

<a href="del01" class="DeleteEnd"/>
```

### Comment markers
The start and end markers of comments are indicated by the `<a>` tag that has an id and a class to identify the type of anchor it is. For example:

```xml
<a id="comment01" class="CommentStart"/>
```

The `@id` is a unique identifier that ties together the start tag, the end tag, and the change details. 

An `<a>` tag is also used to mark the end of the comment. The ending `<a>` tag has an href attribute that corresponds to the start `<a>` id value, as well as a class to identify the type of track change tag it is. For example:

```xml
<a href=" comment01" class=" CommentEnd"/>
```

### Common Annotation Markers

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 40%;">Marker Class</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>InsertStart / InsertEnd</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Marks the beginning and end of newly proposed content.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>DeleteStart / DeleteEnd</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Marks content proposed for removal.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>CommentStart / CommentEnd</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Wraps content associated with a specific reviewer comment or discussion thread.</td>
    </tr>
  </tbody>
</table>

### Implementation Guidance

#### Visual Rendering (CSS)

To visually differentiate track changes in a web-based ePI viewer, the following CSS selectors can be used to target the HTML markers:

```css
/* Styling for proposed insertions */
.InsertStart + * {
    background-color: #e6ffed;
    border-bottom: 2px solid #22863a;
    text-decoration: none;
}
/* Styling for proposed deletions */
.DeleteStart + * {
    background-color: #ffeef0;
    color: #cb2431;
    text-decoration: line-through;
}
/* Base style for markers (usually hidden in final view) */
.InsertStart, .InsertEnd, .DeleteStart, .DeleteEnd, .CommentStart, .CommentEnd {
    display: none;
}
```

#### Auditability & Practitioner Linking

While the native XHTML within a FHIR Composition stores the author name as a string (e.g., `<span class="Author" title="FDA Reviewer"/>`), implementers SHOULD link these annotations to formal FHIR `Practitioner` or `Organization` resources for a full audit trail.

1.  **Identifier Mapping**: Ensure the `title` attribute in the XHTML corresponds to an `identifier` or `name` in a related FHIR resource.
2.  **Provenance**: Use the `Provenance` resource to track the lifecycle of the Composition, linking specific versions to the individuals responsible for the track changes.

```xml
<Provenance>
    <agent>
        <who>
            <Practitioner>
                <identifier>
                    <system value="http://example.com/practitioners"/>
                    <value value="12345"/>
                </identifier>
            </Practitioner>
        </who>
    </agent>
</Provenance>
```
