NOTE: 
- This model is meant as a demonstration. Refer to national or regional guidance for local rules about what resources are in or out of scope.

### Step 1: Create foundation resources  
Create the Core ePI document by completing and then bundling these FHIR resources in the order described below. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-0.png" alt="ePI Resource Relationships"/>
  <figcaption>Create Substance</figcaption>
</figure>


#### Create Organization resource(s) 
Using the Core ePI Profile as a template, complete one Organization resource for each organization associated with the authorized product(s) in this ePI. The following are examples of the type of organization typically associated with ePIs: Market Authorization Holder; health authority responsible for regulating the ePI content; manufacture, test, analysis, packaging).  

Refer to the [Organization profile](StructureDefinition-Organization-uv-epi.html) for detail. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-1.png" alt="Organization Relationships"/>
  <figcaption>Create Organization</figcaption>
</figure>


#### Create Substance Definition resource(s) 
Using the Core ePI Profile as a template, complete one SubstanceDefinition resource for each active ingredient associated with the authorized product(s) in this ePI.

Create a reference from the SubstanceDefinition to the Organization resource for the manufacturer or marketing authorization holder that was created in the Step 5.1.1 Create Organization resource(s)]. 

Refer to the [SubstanceDefinition Profile](StructureDefinition-SubstanceDefinition-uv-epi.html) for detail. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-2.png" alt="Substance Relationships"/>
  <figcaption>Create Substance</figcaption>
</figure>


#### Create Manufactured Item Definition resource(s) 
The manufactured item describes the medicinal product as the dosage form contained in its primary package. For example, a powder in a vial and a diluent in another vial are packaged together in a kit. The powder is one manufactured item and the diluent is a second manufactured item.  
 
Using the FHIR ePI Profile as a template, complete one ManufacturedItemDefinition resource for each manufactured item associated with the authorized product(s) in this ePI.  
 
Create a reference from each ManufacturedItemDefinition resource to the corresponding Organization resource (e.g., reference to the manufacturer; reference to the marketing authorization holder). 

Refer to [ManufacturedItemDefinition Profile](StructureDefinition-ManufacturedItemDefinition-uv-epi.html) for detail. 

(add two examples, one for a product with no transformation (tablet) and one with transformation). 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-3.png" alt="Manufactured Item Relationships"/>
  <figcaption>Create Manufactured Item</figcaption>
</figure>


#### Create Ingredient resource(s) 
Using the Core ePI Profile as a template, complete one Ingredient resource for each active ingredient and each excipient that make up each manufactured item associated with the authorized product(s) in this ePI. 

Create a reference from the relevant Ingredient resources to the corresponding ManufacturedItemDefinition resource (e.g., reference the ingredients that make up the powder to the powder's manufactured item, and reference the ingredients that make up the diluent to the diluent's manufactured item). 

Create a reference from the relevant Ingredient resources to the corresponding Organization resource (e.g., reference to the Organization that manufactures that ingredient). 

Create a reference from the relevant Ingredient resources to the corresponding Substance Definition resource (e.g., reference the active ingredient to the corresponding substance so there is a link to capture molecular structure, molecular formula, and molecular weight.). 


Refer to [Ingredient](StructureDefinition-Ingredient-uv-epi.html) for detail. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-4.png" alt="Ingredient Relationships"/>
  <figcaption>Create Ingredient</figcaption>
</figure>


#### Create Medicinal Product Definition resource(s) 
Using the FHIR ePI Profile as a template, complete one MedicinalProductDefinition resource for each presentation of the medicinal product(s) associated with the authorized product(s) in this ePI. 
 
For example, the following three presentations require three separate medicinal products:

|Medicinal Product Identifier (MPID)| Invented Name | Strength | Dosage Form | Route of Administration | Primary Packaging  | Pack Size |
|--|--|--|--|--|--|--|
| 100 | Drug X | 25 mg | Gastro -resistant tablet | Oral use | Blister (PVC/PVDC - alu) | 42 tablets |
| 101 | Drug X | 50 mg | Gastro -resistant tablet | Oral use | Blister (PVC/PVDC - alu) | 90 tablets |
| 102 | Drug X | 50 mg | Gastro -resistant tablet | Oral use | Blister (PVC/PVDC - alu) | 100 tablets |

There are no references from the medicinal product to other resources. Instead, other resources will refer to the medicinal product.

Refer to [MedicinalProductDefinition Profile](StructureDefinition-MedicinalProductDefinition-uv-epi.html) for detail.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-5.png" alt="Medicinal Product Relationships"/>
  <figcaption>Create Medicinal Product</figcaption>
</figure>


#### Create Administrable Product Definition resource(s) 
The administrable product describes the medicinal product in the dosage form ready for administration to the patient (after any mixing of multiple components or transformations has been performed). This is different from the manufactured item which described the medicinal product as the dosage form in the primary packaging and before any mixing or transformation. For example, a powder in a vial and a diluent in a vial are packaged together. The combined solution, made by mixing the powder and diluent, is the administrable product since that is the dosage form ready for administration to the patient.  
 
Using the Core ePI Profile as a template, complete one PharmaceuticalProductDefinition resource for each pharmaceutical product associated with the authorized product(s) in this ePI.  
 
Create a reference from each PharmaceuticalProductDefinition resource to the corresponding MedicinalProductDefinition resource. 

Create a reference from each PharmaceuticalProductDefinition resource to the corresponding ManufacturedItemDefinition resource. 

Refer to [AdministrableProductDefinition Profile](StructureDefinition-AdministrableProductDefinition-uv-epi.html) for detail. 

(add two examples, one for a product with no transformation (tablet) and one with transformation). 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-6.png" alt="Administrable Product Relationships"/>
  <figcaption>Create Administrable Product</figcaption>
</figure>


#### Create Packaged Product Definition resource(s) 

Using the Core ePI Profile as a template, complete one PackagedProductDefinition resource for each presentation associated with the authorized product(s) in this ePI. 

Create a reference from each PackagedProductDefinition resource to the corresponding MedicinalProductDefinition resource for this package. 

Create a reference from each PackagedProductDefinition resource to the corresponding Organization resource for the manufacturer or marketing authorization holder. 

Refer to [PackagedProductDefinition Profile](StructureDefinition-PackagedProductDefinition-uv-epi.html) for detail. 
 
<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-7.png" alt="Packaging Relationships"/>
  <figcaption>Create Packaged Product</figcaption>
</figure>


#### Create Clinical Use Definition resource(s) – Contraindication 
Using the Core ePI Profile as a template, complete one ClinicalUseDefinition resource for each contraindication.  

Create a reference from the ClinicalUseDefinition (contraindication) to the corresponding MedicinalProduct. 

Refer to [ClinicalUseDefinition Profile](StructureDefinition-ClinicalUseDefinition-contraindication-uv-epi.html) for detail. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-8-12.png" alt="Contraindication Relationships"/>
  <figcaption>Create Clinical Use</figcaption>
</figure>


#### Create Clinical Use Definition resource(s) - Indication 
Using the Core ePI Profile as a template, complete one ClinicalUseDefinition resource for each Indication. 

Create a reference from each ClinicalUseDefinition (Indication) to the corresponding MedicinalProduct. 

Refer to [ClinicalUseDefinition Profile](StructureDefinition-ClinicalUseDefinition-contraindication-uv-epi.html) for detail.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-8-12.png" alt="Indication Relationships"/>
  <figcaption>Create Clinical Use - Indication</figcaption>
</figure>


#### Create Clinical Use Definition resource - Interaction 
Using the Core ePI Profile as a template, complete one ClinicalUseDefinition resource for each Interaction. 

Create a reference each ClinicalUseDefinition (Interaction) to the corresponding MedicinalProduct. 

Refer to [ClinicalUseDefinition Profile](StructureDefinition-ClinicalUseDefinition-contraindication-uv-epi.html) for detail.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-8-12.png" alt="Interaction Relationships"/>
  <figcaption>Create Clinical Use - Interaction</figcaption>
</figure>


#### Create Clinical Use Definition resource - Undesirable Effect 
Using the Core ePI Profile as a template, complete one ClinicalUseDefinition resource for each Undesirable Effect. 

Create a reference from each ClinicalUseDefinition (Undesirable Effect) to the corresponding MedicinalProduct. 

Refer to [ClinicalUseDefinition Profile](StructureDefinition-ClinicalUseDefinition-contraindication-uv-epi.html) for detail.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-8-12.png" alt="Undesirable Effect  Relationships"/>
  <figcaption>Create Clinical Use - undesireable effect</figcaption>
</figure>


#### Create Clinical Use Definition resource - Warning 
Using the Core ePI Profile as a template, complete one ClinicalUseDefinition resource for each Warning. 

Create a reference from each ClinicalUseDefinition (Warning) to the corresponding MedicinalProduct. 

INSERT reference to the Profile page. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-8-12.png" alt="Warning Relationships"/>
  <figcaption>Create Clinical Use - warning</figcaption>
</figure>


#### Create Regulated Authorization resource 
Using the Core ePI Profile as a template, complete one RegulatedAuthorization resource for each medicinal product associated with this ePI. For example, if there are four medicinal products then there will be four RegulatedAuthorization resources. 

Create a reference from each RegulatedAuthorization resource to its corresponding MedicinalProductDefinition.

Create a reference from each RegulatedAuthorization resource to to the corresponding Organization resource for the marketing authorization holder and the health authority.

Refer to [RegulatedAuthorization Profile](StructureDefinition-RegulatedAuthorization-uv-epi.html) for detail.
 
NOTE:  
- Depending on the jurisdiction there will either be (1) one authorization per medicinal product (i.e., resulting in many RegulatedAuthorization resources); or (2) one authorization for all medicinal products (i.e., resulting in one RegulatedAuthorization resource). Refer to the regional profile for confirmation on which approach is required. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-13.png" alt="Authorization Relationships"/>
  <figcaption>Create Regulated Authorization</figcaption>
</figure>


#### Create Binary resource 
Convert each image used in the ePI to Base64 (e.g., images used as figures; the chemical structure of the active ingredient). 

Using the FHIR ePI Profile as a template, complete one Binary resource for each image in the ePI. Add the Base64 version of the image to the Binary resource. 

The Binary can also be used to create a cross-reference linking to an outside object like a video. 

Refer to [Binary Profile](http://build.fhir.org/binary.html) for detail. 

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-14.png" alt="Binary Relationships"/>
  <figcaption>Create Binary</figcaption>
</figure>


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

Refer to [Composition Profile](StructureDefinition-Composition-uv-epi.html) for detail.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-15.png" alt="Composition Relationships"/>
  <figcaption>Create Composition</figcaption>
</figure>


### Step 2: Create Bundle 
The bundle is used to gather together the resources needed to create a unique ePI document. E.g., one bundle for the health care practitioner ePI; a second bundle for the patient insert ePI; a third bundle for the pack label ePI document.

Using the Core ePI Profile as a template, complete one Bundle resource for each ePI document.  

Complete the Bundle resource by referencing it to only one Composition plus all other resources completed in Step 1. E.g., reference the Bundle to the patient insert composition and all other resources associated with that patient insert (e.g., the binaries, regulated authorizations, clinical uses, medicinal products,  packaged products, administrable products, manufactured items, organizations, ingredients, substances).

NOTE: 
- There is one bundle for each ePI document. E.g., one Bundle resource for each healthcare practitioner document, patient information document and their respective translations.
- As per the FHIR Document specification, there shall not be any loose resources; i.e., all resources contained in the Bundle must be referenced.

Refer to [Bundle Profile](StructureDefinition-Bundle-uv-epi.html) for detail.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-16.png" alt="Bundle Relationships"/>
  <figcaption>Create Bundle </figcaption>
</figure>


### Step 3: Create List (of ePIs)
The List of ePIs is ued to keep track of all ePIs for a given medicinal product. E.g., the list will track the SmPC and all its versions; the Package Leaflet and all its versions.

<figure>
  <img style="padding-top:0;padding-bottom:0" src="step-17.png" alt="List Relationships"/>
  <figcaption>Create List</figcaption>
</figure>

