### Purpose
To provide guidance on the technical and business conformance rules needed to create and exchange electronic Product Information (ePI) using HL7 FHIR and standard terminologies; and, as well as to create a common global approach for structuring medicinal product information and medicinal product labelling that is based on HL7 International standards. 

### Goals
The immediate goal of this specification is to expose ePI consumers and the vendor community to a set of profiles that identify the data elements, code systems and value sets commonly used in ePIs regardless of the jurisdiction. 

The strategic goal is to offer a better route for patients to access trustworthy, up-to-date medicinal product information that better meets their individual needs. 

### Objectives
Define a common and interoperable standard for exchanging medicinal product information across international healthcare jurisdictions. 

### Scope
#### In Scope
* ePI (information for healthcare practitioner, information for the patient, package label). 
Human pharmaceutical, radiopharmaceutical and biologic medicinal products (prescription and physician-administered). 
* Over the counter (non-prescription) drugs 
* Investigational and authorized medicinal products 
* Medical devices co-packed with a biopharmaceutical product (e.g., pre-filled syringe). 
* HL7 FHIR resources: 
  * List 
  * Bundle 
  * Composition 
  * Organization 
  * Regulated Authorization 
  * Medicinal Product Definition 
  * Administrable Product Definition 
  * Manufactured Item Definition 
  * Ingredient 
  * Substance Definition 
  * Packaged Product Definition 
  * Clinical Use Definition 
  * Binary 

#### Out of Scope
Self-care products, natural health products, medical devices, food and veterinary drugs. 

### ePI 
A medicine’s product information is a pivotal source of regulated and scientifically validated information that assists healthcare professionals in prescribing and dispensing the medicine and informs consumers about its safe and effective use. 

ePI is presented in three forms:  
1. Information for healthcare professionals
1. Information for patients
1. Information on the package label  

ePI goes by different names depending on the region of the world. For example,
* USA - Prescription Drug Label or Package Insert (USPI)
* Europe - Summary of Product Characteristics (SmPC) or Package Leaflet
* Japan - Package Insert (JPI)  

Since these documents are often represented as a PDF, they are unstructured electronic paper. As a result, they are difficult to search, and the content does not meet patient needs (e.g., larger fonts, accessibility support, multimedia, multiple languages). 

It is known that current procedures based on content represented as a PDF are not adequate to support electronic initiatives. To support new programs, the international community is adopting a new technology for exchanging medicinal product information between computer systems based on HL7 FHIR.  

HL7 FHIR is a next generation standards framework created by HL7. HL7 FHIR combines the best features of HL7's previous product lines while leveraging the latest web standards and applying a tight focus on implementation. 

Adoption of HL7 FHIR by regulators and industry is anticipated to stimulate the delivery of healthcare applications from innovative 3rd parties. A common standard for ePI exchange will allow the creation of aggregated cross-industry content which is a foundational element for creation of more personalized ePI directing patients to the most relevant content and facilitating integration with other datasets such as Electronic Health Records (EHR) and data from wearable devices and diagnostics which will ultimately lead to a step-change in patient centric solutions. 

### How to use this guide
The Base ePI Implementation Guide is a common baseline from which other HL7 FHIR ePI implementation guides can be derived. It is not expected to be implemented as is. It is meant to be a common starting point to build region specific profiles that support local requirements and local use cases. 

For example, the content of this implementation guide can be used to develop HL7 FHIR ePI profiles for the USA, European Union, and Japan that are interoperable and can be supported by the same vendor marketplace. 

Establishing a consistent set of rules across jurisdictions promotes interoperability; allows flexibility for standard evolution; and creates a uniform landscape for vendors to create solutions and services. 

#### Base ePI Profile 
The Base ePI Profile defines the minimum set of rules to create a compliant HL7 FHIR ePI. National ePI profiles are expected to comply with the Base ePI Profile. 

#### National ePI Profiles 
National profiles define the minimum mandatory elements, extensions and terminology requirements to create a compliant HL7 FHIR ePI for a given jurisdiction.  

Conformance to a national ePI profile is tied to the regulatory mandates of the health authority for that jurisdiction.  
