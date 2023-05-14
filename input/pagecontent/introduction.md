### Purpose
To provide guidance on the technical and business conformance rules needed to create and exchange electronic Product Information (ePI) using FHIR and standard terminologies; and, as well as to create a common global approach for structuring medicinal product information and medicinal product labelling that is based on HL7 International standards. 

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
* FHIR resources: 
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

It is known that current procedures based on content represented as a PDF are not adequate to support electronic initiatives. To support new programs, the international community is adopting a new technology for exchanging medicinal product information between computer systems based on FHIR.  

FHIR is a next generation standards framework created by HL7. FHIR combines the best features of HL7's previous product lines while leveraging the latest web standards and applying a tight focus on implementation. 

Adoption of FHIR by regulators and industry is anticipated to stimulate the delivery of healthcare applications from innovative 3rd parties. A common standard for ePI exchange will allow the creation of aggregated cross-industry content which is a foundational element for creation of more personalized ePI directing patients to the most relevant content and facilitating integration with other datasets such as Electronic Health Records (EHR) and data from wearable devices and diagnostics which will ultimately lead to a step-change in patient centric solutions. 

### Gravitate Health 
The Gravitate Health project is a public – private partnership with 39 members from Europe and the US, co-led by University of Oslo (coordinator) and Pfizer (industry lead), funded by the Innovative Medicines Initiative (IMI) – a joint undertaking of the European Commission, the European Federation of Pharmaceutical Industries and Associations (EFPIA), IMI2 Associated Partners. 

### HL7 Vulcan Accelerator 
HL7 FHIR® accelerators have been a successful catalyst for standards development and adoption. 

The vision for an Accelerator dedicated to connecting clinical research and healthcare was solidified in September 2019 by a group of invested representatives from government agencies, academia, technology companies, standards development organizations, patients, and industry consortiums.  The Vulcan Accelerator serves the needs of the clinical and translational research communities through the implementation of HL7 FHIR standardized data exchange. 

Vulcan’s goal is to create an ecosystem where research stakeholders collaborate on common use cases with the purpose of simplifying the research communities exchange of data using common standards with health records. Vulcan consists of organizations who represent the entire research stakeholder community including vendors, sponsors, CROs, consulting companies, sites, patient organizations, government agencies and growing. 

### HL7 Biomedical Research and Regulation (BR&R) 
BR&R creates and promotes standards to facilitate biomedical research and any subsequent regulatory evaluation of the safety, efficacy and quality of medical products that may arise from research. 

The BR&R workgroup areas of interest encompass clinical and translational research, both regulated and non-regulated, and the subsequent regulatory submissions and information exchanges to bring new products to market and to ensure safe use throughout the product lifecycle.  
This Work Group facilitates the development of common standards and the maintenance and enhancement of the research-focused domain analysis model for clinical research information management across a variety of organizations, including national and international government agencies and regulatory bodies, private researchers and research organizations, sponsored research, CROs and other interested entities. 

### How to use this guide
The Core ePI Implementation Guide is a common baseline from which other FHIR ePI implementation guides can be derived. It is not expected to be implemented as is. It is meant to be a common starting point to build region specific profiles that support local requirements and local use cases. 

For example, the content of this implementation guide can be used to develop FHIR ePI profiles for the USA, European Union, and Japan that are interoperable and can be supported by the same vendor marketplace. 

Establishing a consistent set of rules across jurisdictions promotes interoperability; allows flexibility for standard evolution; and creates a uniform landscape for vendors to create solutions and services. 

#### Core ePI Profile 
The Core ePI Profile defines the minimum set of rules to create a compliant FHIR ePI. National ePI profiles are expected to comply with the Core ePI Profile. 

#### National ePI Profiles 
National profiles define the minimum mandatory elements, extensions and terminology requirements to create a compliant FHIR ePI for a given jurisdiction.  

Conformance to a national ePI profile is tied to the regulatory mandates of the health authority for that jurisdiction.  
