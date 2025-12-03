The following page provides basic tips and recommendations to help implementers get started.

## Prerequisites

**Structured/component authoring tool** (**Required**)  
  
  These tools are used to create the complete set of FHIR resources that make up a valid ePI document. 
  
  They should support full rich text editing, product and document metadata, controlled terminology, component management, lifecycle management (including branched versioning), template management, and style sheet management.

**Style sheet** (**Required**)
   
  Stylesheets (CSS, XSLT) convert the machine-readable FHIR ePIs from XML or JSON into the nicely formatted patient/physician leaflet displayed in browsers or apps.  
  
  Implementing organizations are free to use the open-source stylesheet included in this IG as is, modify it, or develop their own.

**FHIR R5-compatible server** (**Optional**, but strongly recommended)
     
  A server is a central storage and retrieval system that holds ePIs, allows searching, versioning, and sharing with other systems via standard FHIR operations.  
  
  For examples,  
  Open-source/self-hosted: HAPI FHIR, Firely Server, Spark FHIR, LinuxForHealth FHIR Server  
  
  Commercial/managed cloud: AWS HealthLake, Google Cloud Healthcare API, Microsoft Azure Health Data Services, Smile CDR

## Recommended People Skills

Technical staff are recommended to have familiarity with the following:
- FHIR R5 core specification
- FHIR ePI Implementation Guide
- Reading and editing XML or JSON
- FHIR profiling, Structure Definitions, and the FHIR validator
- Style sheets (CSS, XSLT) 
- FHIR R5 servers
- RESTful APIs
- Structured / component authoring tools

Regulatory / Business staff are recommended to have familiarity with the following:
- FHIR ePI Implementation Guide and national regulatory guidance on ePI
- Structured / component authoring tools
- Metadata concepts for medicinal products (e.g., ingredients, strength, packaging, indications), documents (e.g., version, identifiers, language), and organizations (e.g., address, role)
- Controlled terminology (e.g., dose form, units of measure, route of administration)

## Quick Start Steps

1. **Choose a use case and ePI Type**  
   Review the available use cases and corresponding ePI types here: [Use Cases](https://build.fhir.org/ig/HL7/emedicinal-product-info/branches/master/en/usecases.html). Select the use case most fitting to your organization's needs and note what ePI Type is required to support that use case.

2. **Review the rendered human-readable ePI examples**  
   These are styled HTML examples of ePIs. The examples are meant to be simple and can be augmented to incorporate more advanced features if needed. 
   
   Review the HTML example that corresponds to your selected use case and ePI Type:  

   [ePI Type 1 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

   [ePI Type 2 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

   [ePI Type 3 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

   [ePI Type 4 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

3. **Examine the underlying FHIR XML or JSON ePI**  
  These are examples of the ePI in its raw XML and JSON format. Review the XML (or JSON) example that corresponds to your selected use case and ePI Type:  

   [ePI Type 1 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

   [ePI Type 2 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

   [ePI Type 3 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

   [ePI Type 4 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

1. **Review the profiles used for that ePI type**  
   Profiles are the rules/constraints that this IG puts on top of core FHIR resources to make them suitable for ePI (e.g., which fields are required, what codes are allowed, cardinalities).  
   Refer to the [Artefacts Summary](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html) page for the ePI Type 1 to 4 profiles.

2. **Build your own ePI**  
   Use your component authoring tool to build from one of the ePI examples or build from scratch.

3. **Validate your ePI** 
   Validation checks that your Bundle follows all the rules defined in this Implementation Guide (required fields, correct codes, structure).  
   Run HL7's official [FHIR validator](https://validator.fhir.org) with the ePI IG package or use the validator included with your Component Authoring tool.