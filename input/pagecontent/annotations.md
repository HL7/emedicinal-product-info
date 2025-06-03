### Annotations (Track Changes & Comments)
The annotation model for both comments and track changes involves using the HTML anchor tag ('<a>') as start and end location markers for each comment, insertion and deletion point within the content of the Composition section. These markers then reference the details of annotation, which are held in a separate Annotations section within the Composition.

### Annotations Section
The annotation details, such as the author and date, the comment text and comment replies are all held within a “Annotations” section. The text of this section contains a <div class=”comments”> that holds all of the comments and comment replies, and a <div class=”trackChanges”> that holds the track change details.

Each track change has a <div> within the div/@class=”trackChanges”.  The @class indicates the type of track change (Insert vs. Delete), and the @title holds the change identifier. <span> tags hold the change details, such as the author and date. The change identifier (div[@class=”delete” or @class=”insert”]/@id) is referenced by the change tag markers in the content. 

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

The comments are held within the div/@class=”comments” of the “Annotations” section. Each comment is within a div/@class="CommentContent", and the @title holds the comment identifier, which is referenced by the comment start and end markers in the content. <span> tags are used to hold the comment author and date, and the comment text is within HTML tags. 

```xml
<div class="CommentContent" title="comment01">
       <span class="CommentAuthor" title="Author1"></span>
       <span class="CommentDate" title=" 2025-05-22T13:18:00Z"></span>
       <p>comment text here</p>
</div>
```

### Track change markers
The start and end markers of track changes are indicated by the <a> tag that has an id and a class to identify the type of track change anchor it is (insert vs. delete, start vs. end). For example:

```xml
<a id="ins01" class="InsertStart"/>

<a id="del01" class="DeleteStart"/>
```

The @id is a unique identifier that ties together the start tag, the end tag, and the change details. 
An <a> tag is also used to mark the end of the range. The ending <a> tag has an href attribute that corresponds to the start <a> id value, as well as a class to identify the type of track change tag it is. For example:

```xml
<a href="ins01" class="InsertEnd"/>

<a href="del01" class="DeleteEnd"/>
```

### Comment markers
The start and end markers of comments are indicated by the <a> tag that has an id and a class to identify the type of anchor it is. For example:

```xml
<a id="comment01" class="CommentStart"/>
```

The @id is a unique identifier that ties together the start tag, the end tag, and the change details. 

An <a> tag is also used to mark the end of the comment. The ending <a> tag has an href attribute that corresponds to the start <a> id value, as well as a class to identify the type of track change tag it is. For example:

```xml
<a href=" comment01" class=" CommentEnd"/>
```