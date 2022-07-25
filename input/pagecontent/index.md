NEW Implementation Guide is under development. New content soon to come

### Introduction

#### Purpose
To provide guidance on the technical and business conformance rules needed to create and exchange electronic Product Information (ePI) using FHIR and standard terminologies; 
and 
To create a common global approach for structuring medicinal product information and medicinal product labelling that is based on HL7 International standards. 

#### Goals
The immediate goal of this specification is to expose ePI consumers and vendor community to a set of profiles that identify the data elements, code systems and value sets commonly used in ePIs regardless of the jurisdiction. 

The strategic goal is to offer a better route for patients to access trustworthy, up-to-date medicinal product information that better meets their individual needs. 

#### Objectives
Define a common and interoperable standard for exchanging medicinal product information across international healthcare jurisdictions. 

#### Scope
##### In Scope
ePI (information for healthcare practitioner, information for the patient, package label). 
Human pharmaceutical, radiopharmaceutical and biologic medicinal products (prescription and physician-administered). 
Over the counter (non-prescription) drugs 
Investigational and authorized medicinal products 
Medical devices co-packed with a biopharmaceutical product (e.g., pre-filled syringe). 
FHIR resources: 
List 
Bundle 
Composition 
Organization 
Regulated Authorization 
Medicinal Product Definition 
Administrable Product Definition 
Manufactured Item Definition 
Ingredient 
Substance Definition 
Packaged Product Definition 
Clinical Use Definition 
Binary 

##### Out of Scope
Self-care products, natural health products, medical devices, food and veterinary drugs. 

### How to use this guide
The Core ePI Implementation Guide is a common baseline from which other FHIR ePI implementation guides can be derived. It is not expected to be implemented as is. It is meant to be a common starting point to build region specific profiles that support local requirements and local use cases. 

For example, the content of this implementation guide can be used to develop FHIR ePI profiles for the USA, European Union, and Japan that are interoperable and can be supported by the same vendor marketplace. 

Establishing a consistent set of rules across jurisdictions promotes interoperability; allows flexibility for standard evolution; and creates a uniform landscape for vendors to create solutions and services. 

##### Core ePI Profile 
The Core ePI Profile defines the minimum set of rules to create a compliant FHIR ePI. National ePI profiles are expected to comply with the Core ePI Profile. 

##### National ePI Profiles 
National profiles define the minimum mandatory elements, extensions and terminology requirements to create a compliant FHIR ePI for a given jurisdiction.  
Conformance to a national ePI profiles is tied to the regulatory mandates of the health authority for that jurisdiction. ####

### Status 
This implementation guide is based on FHIR v5.0.0-snapshot1: R5 Snapshot #1 and is intended to be a balloted draft standard for trial use. It is subject to a formal review and approval process. 

This guide is a living document that includes instructions and profiles that will evolve as it undergoes review by the FHIR community and through testing feedback. 

Additional changes by HL7 are expected because FHIR is an evolving standard. Developments will be assessed for impact; updates will be planned and communicated publicly in advance to allow time for a stakeholders to adapt to the new version. 

### Governance 
The Core FHIR ePI Profile was defined by representatives from Gravitate Health, HL7’s Vulcan Accelerator, the European Medicines Agency (EMA), the US Food and Drug Administration (FDA), and the Pharmaceuticals and Medical Devices Agency (PMDA).  

The national FHIR ePI profiles were defined by representatives from the health authority for the corresponding jurisdiction, representatives from Gravitate Health, and HL7’s Vulcan Accelerator. 
On behalf of the international community and health authorities, this guide is maintained by HL7’s Biomedical Research and Regulation (BR&R) Working Group.  

This guide will be reviewed annually for active use, obsolescence, and potential need for change. When a change is identified, HL7’s BR&R will make efforts to communicate to stakeholders or potential users in advance of any action.  

### Authors and Contributors

| Role | Name | Organization |
|:--------|:-------|:--------|:--------|
| Co-Lead   | Craig Anderson | Pfizer |
| Co-Lead   | Catherine Chronaki | HL7 Europe |
| Technical Lead  |Jens Kristian Villadsen | Trifork |
| Technical Leads | Giorgio Cangioli | HL7 Europe |
| Contributors | | |
{: rules="groups"}
