**UNDER CONSTRUCTION**
#### Technical Section

Semantic Annotation should be implemented with the [narrativeLink](http://hl7.org/fhir/2022Sep/extension-narrativelink.html) extension. The [Linking between Data and Narrative](http://hl7.org/fhir/2022Sep/narrative.html#linking) section of the Narrative datatype gives a basic example of use.

The extension has to be declared in the structured resource, and scoped to the Composition using the `fullUrl` in the `valueUrl` of the extension:

    <Ingredient xmlns="http://hl7.org/fhir">
      <extension url="http://hl7.org/fhir/StructureDefinition/narrativeLink">
        <valueUrl value="http://ema.europa.eu/fhir/Composition/123456#lactoseMonohydrateTag"/>
      </extension>
      ...
      <substance>
        <code>
          <concept>
            <coding>
              <system value="https://gsrs.ncats.nih.gov/ginas/app/beta"/>
              <code value="EWQ57Q8I5X"/>
              <display value="Lactose Monohydrate"/>
            </coding>
          </concept>
        </code>
      </substance>
    </Ingredient>

The ID part can then be used in the HTML code of the extension to mark a section of text:

    <div xmlns="http://www.w3.org/1999/xhtml">
      <p>Text of the section with <span id="lactoseMonohydrateTag">some information about the ingredient</span>.</p>
    </div>

The same ID attribute can only be used on one HTML element in the same document. If there are several text sections that should be marked, the extension must be duplicated with a different ID value:

    <Ingredient xmlns="http://hl7.org/fhir">
      <extension url="http://hl7.org/fhir/StructureDefinition/narrativeLink">
        <valueUrl value="http://ema.europa.eu/fhir/Composition/123456#lactoseMonohydrateTag1"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/narrativeLink">
        <valueUrl value="http://ema.europa.eu/fhir/Composition/123456#lactoseMonohydrateTag2"/>
      </extension>
      ...
      <substance>
        <code>
          <concept>
            <coding>
              <system value="https://gsrs.ncats.nih.gov/ginas/app/beta"/>
              <code value="EWQ57Q8I5X"/>
              <display value="Lactose Monohydrate"/>
            </coding>
          </concept>
        </code>
      </substance>
    </Ingredient>

    <div xmlns="http://www.w3.org/1999/xhtml">
      <div>
        <p>Text of the section with <span id="lactoseMonohydrateTag1">some information about the ingredient</span>.</p>
      </div>
      <div>
        <p>Another section that describes <span id="lactoseMonohydrateTag2">some other aspect related to the ingredient</span>.</p>
      </div>
    </div>

### 1.	Focusing Section 

#### 1.1	Introduction to Focusing

What is focusing?
Focusing allows the user to tag an attribute to a section of text. The section can be defined at the paragraph or bullet level. Multiple attributes can be tagged to the same section of text; however, all attributes must be applicable e.g., Attribute X and Attribute Y, rather than Attribute X or Attribute Y.  So, for example, you can have Adult and Female, but you cannot have Adult or Female. 
Note: Within a given attribute, you can have multiple values (e.g., the text could apply to both Adult and Adolescent).

Why is focusing useful/important?
Engagement of patients in their own health can only be achieved with access to actionable, understandable, relevant, reliable, and evidence-based information that meets their specific needs, health context, and literacy level. Therefore, focusing will be beneficial in improving the patient’s understanding of the product information as the focusing could be used to identify the information that is relevant/applicable to the patient. 

#### 1.2	Focus Attributes 

The following attributes are identified as the key focus points of the product information. Some attribute options may vary between countries (e.g., Age to be considered an Adult). For information on these, refer to the Country Appendixes. 

#### 1.3	Text with No Attribute

Any text that does not contain an Attribute should not have a Focus assigned. 

#### 1.4	Assigning a Focus Attribute

Assign an Attribute to a section that contains that Attribute e.g., assign an Attribute of INDICATION to a paragraph that contains information about that Indication. 
Assign Multiple Attributes to a section if ALL Attributes are applicable to that section of text e.g., assign an Attribute of FEMALE and ADULT to a paragraph relating to Pregnancy. 
There may be exceptions, such as assigning an Attribute of a Drug Class, rather than the individual medicines within that Drug Class e.g., assign an Attribute of Selective Serotonin Re-uptake Inhibitors (SSRI) as a Drug Class, rather than every SSRI within that Drug Class, where every medicine within that Drug Class is Contraindicated. 

##### 1.4.1	Examples

Multiple Values within One Attribute, and Multiple Attributes 

INSERT TABLE


No Attribute Text

INSERT TABLE


Bullet Points

INSERT TABLE
