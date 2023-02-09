### The purpose of semantic annotation

This section describes the way in which sections of the Composition's text can be marked as being about or related to a certain coded concept. This concept may be represented by a resource in the ePI bundle, but the definition of the target concept does not assume this.

Applications may use this marking to provide additional functionality. The G-Lens from the [Gravitate Health](https://www.gravitatehealth.eu/) project for example might highlight or suppress marked sections based on the patient's health record, if it contains information related to the linked concepts.

The annotation is similar to the [narrativeLink](http://hl7.org/fhir/2022Sep/extension-narrativelink.html) extension but is different in that the text is not a single, direct representation of the structured resource.

### Linking structured resources to text with the htmlElementLink extension

The semantic anotation should be implemented with the htmlElementLink extension described below.

The example defines a single concept with an ICD-10 and a SNOMED CT code (for the purpose of the example it is assumed that the codes point to the same real-world concept in the two code systems). This gives the definition the flexibility to be used directly in systems that have access to any of the two code systems.

The concept is associated with the string value 'theConcept', which is used in class attributes on some elements in the HTML text of the section. The meaning of the extension is that the HTML elements marked with this class contain text that is relevant for the coded concept.

    <Composition xmlns="http://hl7.org/fhir">
      <extension url="http://hl7.org/fhir/uv/emedicinal-product-info/htmlElementLink">
        <extension url="elementClass">
          <valueString value="theConcept"/>
        </extension>
        <extension url="concept">
          <valueCodeableConcept>
            <coding>
              <system value="http://hl7.org/fhir/sid/icd-10"/>
              <code value="X13.7"/>
            </coding>
            <coding>
              <system value="http://snomed.info/sct"/>
              <code value="1290023401004"/>
            </coding>
          </valueCodeableConcept>
        </extension>
      </extension>
      <section>
        <text>
          <div xmlns="http://www.w3.org/1999/xhtml">
            <div class="theConcept">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing</p>
              <p>Nulla ac ex vitae velit commodo sodales. Nam viverra efficitur porta.</p>
            </div>
            <div>
              <p>Praesent condimentum dolor in molestie malesuada. Sed molestie nisi sed</p>
              <p class="theConcept">Quisque suscipit porttitor purus, at sagittis risus pulvinar vel. Nulla a mollis arcu. Nam nec</p>
            </div>
          </div>
        </text>
      </section>
    </Composition>

### Focusing Section 

#### Introduction to Focusing

What is focusing?
Focusing allows the user to tag an attribute to a section of text. The section can be defined at the paragraph or bullet level. Multiple attributes can be tagged to the same section of text; however, all attributes must be applicable e.g., Attribute X and Attribute Y, rather than Attribute X or Attribute Y.  So, for example, you can have Adult and Female, but you cannot have Adult or Female. 
Note: Within a given attribute, you can have multiple values (e.g., the text could apply to both Adult and Adolescent).

Why is focusing useful/important?
Engagement of patients in their own health can only be achieved with access to actionable, understandable, relevant, reliable, and evidence-based information that meets their specific needs, health context, and literacy level. Therefore, focusing will be beneficial in improving the patient’s understanding of the product information as the focusing could be used to identify the information that is relevant/applicable to the patient. 

#### Focus Attributes 

The following attributes are identified as the key focus points of the product information. Some attribute options may vary between countries (e.g., Age to be considered an Adult). For information on these, refer to the Country Appendixes. 

#### Text with No Attribute

Any text that does not contain an Attribute should not have a Focus assigned. 

#### Assigning a Focus Attribute

Assign an Attribute to a section that contains that Attribute e.g., assign an Attribute of INDICATION to a paragraph that contains information about that Indication. 
Assign Multiple Attributes to a section if ALL Attributes are applicable to that section of text e.g., assign an Attribute of FEMALE and ADULT to a paragraph relating to Pregnancy. 
There may be exceptions, such as assigning an Attribute of a Drug Class, rather than the individual medicines within that Drug Class e.g., assign an Attribute of Selective Serotonin Re-uptake Inhibitors (SSRI) as a Drug Class, rather than every SSRI within that Drug Class, where every medicine within that Drug Class is Contraindicated. 

##### Examples

**Multiple Values within One Attribute, and Multiple Attributes **

INSERT TABLE

| Text | Focus Attribute |
|--|--|
| Pregnancy, breast-feeding and fertility | Age = Adult or Adolescent |
| You should not use PRODUCT X if you are pregnant. You should avoid becoming pregnant while taking PRODUCT X.  | Age = Adult or Adolescent, and Gender = Female |
| Discuss contraception with your doctor if there is any possibility that you or your partner may become pregnant.   | Age = Adult or Adolescent |
| If you are pregnant or breast-feeding, think you may be pregnant, or are planning to have a baby, ask your doctor or pharmacist for advice before taking this medicine.  | Age = Adult or Adolescent, and Gender = Female |
| Women of childbearing potential who are receiving this medicinal product, or their male partners should use adequate contraceptive methods (e.g., double-barrier contraception such as condom and diaphragm).  | Age = Adult or Adolescent |
| These methods should be used during therapy and for at least 3 weeks after completing therapy for females.  | Age = Adult or Adolescent, and Gender = Female |
| These methods should be used during therapy and for at least 14 weeks for males.  | Age = Adult or Adolescent, and Gender = Male |
| Breast-feeding<br/>You should not breast-feed while taking PRODUCT X. It is not known if PRODUCT X is excreted in breast milk. | Age = Adult or Adolescent, and Gender = Female, and Breastfeeding = Breastfeeding |
| Fertility<br/>ACTIVE INGREDIENT X may decrease fertility in men. Therefore, men may consider sperm preservation before taking PRODUCT X. | Age = Adult or Adolescent, and Gender = Male |

**No Attribute Text**

| Text | Focus Attribute |
|--|--|
| Posology<br/> The recommended dose is 125 mg of ACTIVE INGREDIENT X once daily for 21 consecutive days followed by 7 days off treatment (Schedule 3/1) to comprise a complete cycle of 28 days. The treatment with PRODUCT X should be continued as long as the patient is deriving clinical benefit from therapy or until unacceptable toxicity occurs.| (Since this applies to everyone, the focus attribute is left blank) | (Since this applies to everyone, the focus attribute is left blank) |
| When coadministered with ACTIVE INGREDIENT X, the aromatase inhibitor should be administered according to the dose schedule reported in the Summary of Product Characteristics.  | Concomitant Medicines/Contraindications = Aromatase inhibitor |
| When coadministered with ACTIVE INGREDIENT X, the recommended dose of ACTIVE INGREDIENT Y is 500 mg administered intramuscularly. Please refer to the Summary of Product Characteristics of ACTIVE INGREDIENT Y.  | Concomitant Medicines/Contraindications = ACTIVE INGREDIENT Y |
| Patients should be encouraged to take their dose at approximately the same time each day. If the patient vomits or misses a dose, an additional dose should not be taken that day. The next prescribed dose should be taken at the usual time. | (Since this applies to everyone, the focus attribute is left blank) |

**Bullet Points**

| Text | Focus Attribute |
|--|--|
| PRODUCT X may increase side effects associated with the following medicines: |  |
| •	Alfentanil and other short acting opiates such as fentanyl (painkillers used for surgical procedures). | Concomitant Medicines/Contraindications = Short acting opiates |
| •	Medicines for high blood pressure called beta-blockers such as atenolol, propranolol, labetolol. | Concomitant Medicines/Contraindications = Beta-blockers  |
| •	Metformin, used to treat diabetes. | Concomitant Medicines/Contraindications = Metformin |
| •	Ciclosporin, sirolimus and tacrolimus used in transplant patients. | Concomitant Medicines/Contraindications = Ciclosporin, sirolimus, tacrolimus |



