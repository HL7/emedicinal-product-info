The following page provides basic tips and recommendations to help implementers get started.

## Prerequisites

**Structured/component authoring tool** that can produce compliant FHIR ePI Bundles (**Required**).  

**Style sheet(s)** (XSLT, CSS) that transform the FHIR ePI from XML or JSON into a human-readable HTML (**Required**).  
  Implementing organizations are free to use the open-source style sheet included in this IG as is, modify it to suit their needs, or develop their own. 

**FHIR R5-compatible server** with a RESTful API to act as a central ePI repository and enable interoperability with other systems (**optional**, but strongly recommended). For example:  
- <u>Open-source/self-hosted options</u>: HAPI FHIR, Firely Server, Spark FHIR, LinuxForHealth FHIR Server.  
- <u>Commercial/managed cloud options</u>: AWS HealthLake, Google Cloud Healthcare API, Microsoft Azure Health Data Services, Smile CDR.

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

1. **Choose a use case**  
   e.g., typical human medicinal product, vaccine, advanced therapy product, or a specific national variant.

2. **Select an ePI type**
   

3. **Review the rendered human-readable ePI examples**  
   These are styled HTML examples of ePIs. The examples are meant to be simple and can be augmented to incorporate more advanced features where needed.  

   [ePI Type 1 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

   [ePI Type 2 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

   [ePI Type 3 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

   [ePI Type 4 HTML Example](https://build.fhir.org/ig/HL7/emedicinal-product-info/examples.html)

4. **Examine the underlying FHIR XML or JSON ePI**  
  These are examples of the ePI in its raw XML and JSON format. 

   [ePI Type 1 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

   [ePI Type 2 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

   [ePI Type 3 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

   [ePI Type 4 XML example](https://build.fhir.org/ig/HL7/emedicinal-product-info/Bundle-examples.html)

1. **Study the profiles used for that ePI type**  
   Profiles are the rules/constraints that this IG puts on top of core FHIR resources to make them suitable for ePI (e.g., which fields are required, what codes are allowed, cardinalities).  
   Refer to the [Artefacts Summary](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html) page for the ePI Type 1 to 4 profiles.

2. **Build your own ePI**  
   Use your component authoring tool to build from one of the ePI examples or build from scratch.

3. **Validate your ePI** 
   Validation checks that your Bundle follows all the rules defined in this Implementation Guide (required fields, correct codes, structure).  
   Run HL7's official [FHIR validator](https://validator.fhir.org) with the ePI IG package or use the validator included with your Component Authoring tool.