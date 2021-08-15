### ePI Structure

All ePI documents are based on the same FHIR structure. The only exception is that each ePI document has unique section and sub-section headings. For example, the SmPC and PIL have the same FHIR document structure and have the same metadata but have different section headings and different narrative content.

The common ePI structure is as described below.

**Figure XX: The common structure for all ePI documents (REPLACE WITH A GRAPHIC)**
- Bundle
  - List
  - Composition
    - Binary
  - Medicinal Product
  - Organization

### Sections Description
#### Bundle resource
The Bundle is a container that gathers together a collection of resources into a single instance. The contained resources in the Bundle can be interpreted in two ways:

1. As a logical document: the bundle of contained resources is a single instance and can only be interpreted, changed or viewed as a whole. For example, the Bundle represents version 3 of a Patient Information Leaflet or version 2 of a SmPC.

2. As individual resources: Certain resoureces exist independently outside the Bundle and outside of the logical document. For example, the Medicinal Product Definition resource lives both as part of the logical document and as an independent resource. 

#### List resource
The list resource references other resources. In this context, the List contains:
1. Narrative description of the medicinal products it contains
2. An ordered collection of cross-references to the Medicinal Product Definition resources that the ePI document is about. The List is dynamic since the cross-references are added, removed or changed over time.

Althought some use cases involve pulling metadata, sections or narrative content from the Composition, the List resource is not published independently from the Bundle.

#### Composition resource
The Composition defines the basic structure and the human readable narrative content for the ePI document. For example, encoded section headings; narrative text (paragraphs, sentences); tables; and bulleted lists. The Composition taggs the language of the narrative content

All narrative content is in XHTML fragment with HTML 4.0 standard formatting (Refer to [section 2.4 Narrative](http://build.fhir.org/narrative.html#xhtml) of the FHIR specification for HTML 4.0 exceptions and exclusions). 

Althought some use cases involve pulling metadata, sections or narrative content from the Composition, the Composition resource is not published independently from the Bundle.

##### Binary resource
The Binary resource is used to handle images as Base64.

##### Structure of the Summary of Product Characteristics (SmPC) 

Summary of Product Characteristics (SmPC) is a document describing the properties and the officially approved conditions of use of a medicinal product. The SmPC is used by healthcare professionals, such as doctors, nurses and pharmacists, and explains how to use and prescribe a medicine safely and effectively.

The SmPC document template is made up of the following section and sub-section headings (Refer to the corresponding [Terminology](http://build.fhir.org/ig/hl7-eu/gravitate-health/terminology.html) section of this IG for section codes):

Section 1. Name of the medicinal product

Section 2. Qualitative and quantitative composition

Section 3. Pharmaceutical form

Section 4. Clinical particulars
- Section 4.1 Therapeutic indications
- Section 4.2 Posology and method of administration
- Section 4.3 Contraindications
- Section 4.4 Special warnings and precautions for use
- Section 4.5 Interactions with other medicinal products and other forms of interaction
- Section 4.6 Pregnancy and lactation
- Section 4.7 Effects on ability to drive and use machines
- Section 4.8 Undesirable effects

Section 4.9 Overdose

Section 5. Pharmacological properties
- Section 5.1 Pharmacodynamic properties
- Section 5.2 Pharmacokinetic properties
- Section 5.3 Preclinical safety data

Section 6. Pharmaceutical properties
- Section 6.1 List of excipients
- Section 6.2 Incompatibilities
- Section 6.3 Shelf life
- Section 6.4 Special precautions for storage
- Section 6.5 Nature and contents of container
- Section 6.6 Special precautions for disposal and other handling

Section 7. Marketing authorisation holder

Section 8. Marketing authorisation number(s)

Section 9. Date of first authorisation/renewal of the authorisation

Section 10. Date of revision of the text

Section 11. Dosimetry

Section 12. Instructions for preparation of radiopharmaceuticals

Legal category


##### Structure of the Patient Information Leaflet document template

Patient Information Leaflet (PIL):is included in the pack with a medicine. The PIL is written as a patient-friendly version of the SmPC.

The PIL document template is made up of the following section and sub-section headings (Refer to the [Terminology](http://build.fhir.org/ig/hl7-eu/gravitate-health/terminology.html) section of this IG for the corresponding section codes]):

Section 1. What is your medicine and what it is used for
-	What type of medicine is it?
-	What diseases or medical conditions is it approved to treat?

Section 2. Before you take or use your medicine
-	Do not take or use - situations where a medicine should not be taken or used.
-	Take special care - situations where the prescriber needs to be extra careful when prescribing a medicine.
-	Taking or using other medicines - if this medicine interacts or interferes with any other medicines, herbal or dietary supplements.
-	Taking or using your medicine with food and drink - if you should take the medicine with or without certain foods or drinks.
-	Pregnancy and breast-feeding - if you can use or take this medicine if you are pregnant, thinking of getting pregnant or are breast-feeding a baby.
-	Driving and using machines - if the medicine can affect your ability to drive or use any tools or machines.
-	Important information about some of the ingredients in your medicine.

Section 3. How to take or use your medicine
-	How to take or use the medicine.
-	How often it should be used or taken.
-	How long it should be used or taken for.
-	What to do if you take or use more than you should.
-	What to do if you forget a dose.
-	What might happen if you stop taking or using the medicine.

Section 4. Possible side effects
-	All medicines can cause side effects, although not everybody gets them. This section tells you about the side effects and what you should do if you get them.

Section 5. How to store your medicine
-	How to check the expiry date of the medicine.
-	How to store your medicine.
-	How to dispose of your medicine.

Section 6. Further Information
-	What your medicine contains - both the active and inactive ingredients.
-	The amount of active ingredient.
-	What the medicine looks like.
-	The pack size.
-	The name of the company that makes and sells the medicine.
-	The date the leaflet was approved by the authorities.
-	Any further information about the medicine.

#### Organization Resource
The Organization resource is used to describes contact and other information about the Market Authorization Holder (MAH) for the medicine the ePI documents are about. The MAH is also the author of the ePI documents.

The Organization resource can live independently from the document Bundle.

#### Medicinal Product Definition

The Medicinal Product Definition resource provides uniquely identifiable detail about the ePI's medicinal product(s). It describes the overall medicinal product as a whole unit (similar to a Stop Keeping Unit or SKU) as authorized by the national competent regulatory authority.

The Medicinal Product Definition resource can live independently from the document Bundle.
