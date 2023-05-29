### How to build an ePI document
The following is an example of how to build a Summary of Product Characteristics (SmPC) as a Type 1, Type 2, and Type 3 ePI document. This example is meant as a demonstration to encourage a harmonized approach. Refer to national or regional health authority guidance for official rules about how to build an ePI document.  

![](https://github.com/HL7/emedicinal-product-info/blob/master/input/images/step-0.png)  

### Steps to create Type 1 ePI Dcoument  

#### Create Binary resource 
Convert each image used in the ePI to Base64 (e.g., images used as figures; the chemical structure of the active ingredient). 

Using the FHIR ePI Profile as a template, complete one Binary resource for each image in the ePI. Add the Base64 version of the image to the Binary resource. 

The Binary can also be used to create a cross-reference linking to an outside object like a video. 

Refer to [Binary Profile](http://hl7.org/fhir/binary.html) for detail. 

#### Create Composition resource 
The composition captures all section headings, sub-section headings and narrative text/narrative content (e.g., paragraphs, tables, bulleted lists) in the ePI.

Using the FHIR ePI Profile as a template, complete one Composition resource for each ePI document.

Reference the Composition resource to each Binary. The reference to the Binary is made from the narrative text of the Composition resource’s @text element. 

Reference the Composition resource to each Regulated Authorization from the @subject element. 

The section/@Title is the display text of the section heading and sub-section heading prescribed by the relevant national health authority. For example, ‘2. Qualitative and quantitative composition’ or ‘4.1 Therapeutic indications’ from the EMA’s Quality Review of Document (QRD) template for the SmPC. 

The section/@code is the code for the corresponding section heading or sub-section heading prescribed by the relevant national health authority. 

NOTE:  
ePI documents are meant to be separate and shall not be combined into one large composition. E.g., 
- one Composition for the healthcare practitioner document and a separate Composition  for the Patient Insert document;
- one Composition for each translation (e.g., one Composition for the French version of the ePI document and a separate Composition for the Spanish version of the ePI document).

Refer to [Composition Profile](https://build.fhir.org/ig/HL7/emedicinal-product-info/StructureDefinition-Composition-uv-epi.html) for detail.  

#### Create Bundle 
The bundle is used to gather together the resources needed to create a unique ePI document. E.g., one bundle for the health care practitioner ePI; a second bundle for the patient insert ePI; a third bundle for the pack label ePI document.

Using the Core ePI Profile as a template, complete one Bundle resource for each ePI document.  

Complete the Bundle resource by referencing it to only one Composition plus all other resources completed in Step 1. E.g., reference the Bundle to the patient insert composition and all other resources associated with that patient insert (e.g., the binaries, regulated authorizations, clinical uses, medicinal products,  packaged products, administrable products, manufactured items, organizations, ingredients, substances).

NOTE: 
- There is one bundle for each ePI document. E.g., one Bundle resource for each healthcare practitioner document, patient information document and their respective translations.
- As per the FHIR Document specification, there shall not be any loose resources; i.e., all resources contained in the Bundle must be referenced.

Refer to [Bundle Profile](https://build.fhir.org/ig/HL7/emedicinal-product-info/StructureDefinition-Bundle-uv-epi.html) for detail.  

#### Create List
The List of ePIs is used to keep track of all ePIs for a given medicinal product. E.g., the list will track the SmPC and all its versions; the Package Leaflet and all its versions.  

Complete the List resource by adding a reference to the ePI document Bundle for the ePI document created above.



