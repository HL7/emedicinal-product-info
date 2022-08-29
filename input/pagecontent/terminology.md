
This page lists the recommended or preferred ValueSets and CodeSystems needed to complete an ePI document. 

## Code Systems
| Source | URI |
|--|--|--|
| ISO Country | urn:iso:std:iso:3166:-2 |
| ISO Language | urn:ietf:bcp:47 |
| UCUM | http://unitsofmeasure.org |
| MED-RT | http://va.gov/terminology/medrt |
| WHO ATC | https://www.whocc.no/atc_ddd_index |
| MedDRA | TBD |
| UNII | http://fdasis.nlm.nih.gov |
| NCI Thesaurus | TBD |
| Health Canada Controlled Vocabulary List | 2.16.840.1.113883.2.20.6 |
| EDQM Standard Terms |  |
| EMA SPOR-RMS | https://spor.ema.europa.eu/rmswi |
| EMA SPOR-OMS | https://spor.ema.europa.eu/omswi  |
| LOINC | http://loinc.org; 2.16.840.1.113883.6.1 |
| G-SRS | https://gsrs.ncats.nih.gov/ginas/app/beta |
| HL7 RoleClass | http://terminology.hl7.org/CodeSystem/v3-RoleClass |

## Value Sets per resource
### List
status - FHIR terminology
mode -  FHIR terminology
code -  custom

### Bundle 
type - FHIR terminology

### Composition 
Status - FHIR terminology
type - EMA SPOR-RMS; LOINC
category -  EMA SPOR-RMS; LOINC
section - EMA SPOR-RMS; LOINC
section.emptyReason - custom

### Organization 
Type -  EMA SPOR-RMS; NCI Thesaurus
telecom.code - FHIR terminology
Address.Use  -  FHIR terminology
Address.Type -  FHIR terminology 
Address.Country - ISO 3166 2 letter country code

### Regulated Authorization 
type -  EMA SPOR-RMS; NCI Thesaurus
region - ISO 3166 2 letter country code
status - EMA SPOR-RMS; NCI Thesaurus
case -  EMA SPOR-RMS; NCI Thesaurus

### Medicinal Product Definition 
Type -  EMA SPOR-RMS; NCI Thesaurus
Domain - EMA SPOR-RMS
Status - EMA SPOR-RMS; NCI Thesaurus
combinedPharmaceuticalDoseForm - EDQM Standard Terms	
route  - EDQM Standard Terms
legalStatusOfSupply - custom
additionalMonitoringIndicator  - custom
pediatricUseIndicator  - custom
classification - WHO; MED-RT
marketingStatus - EMA SPOR-RMS; NCI Thesaurus
packagedMedicinalProduct -  EDQM Standard Terms
name.type  - EMA SPOR
namePart.type  - EMA SPOR
countryLanguage.country - ISO 3166 2 letter country code
countryLanguage.language -  ISO 639-1 2 letter language code

### Administrable Product Definition 
status - FHIR terminology
administrableDoseForm  - EDQM Standard Terms
unitOfPresentation - EDQM Standard Terms
property.colour - NCI Thesaurus SPL Color Terminology (Code C54453)
property.flavour - NCI Thesaurus SPL Flavor Terminology (Code C73339)
property.score - Health Canada Controlled Vocabulary List 2.16.840.1.113883.2.20.6.4
property.shape - NCI Thesaurus SPL Shape Terminology (Code C54454)
routeOfAdministration  - EDQM Standard Terms

### Manufactured Item Definition 
status - FHIR terminology
manufacturedDoseForm -  EDQM Standard Terms
unitOfPresentation - EDQM Standard Terms
property.colour - NCI Thesaurus SPL Color Terminology (Code C54453)
property.flavour - NCI Thesaurus SPL Flavor Terminology (Code C73339)
property.score - Health Canada Controlled Vocabulary List 2.16.840.1.113883.2.20.6.4
property.shape - NCI Thesaurus SPL Shape Terminology (Code C54454)

### Ingredient 
status - FHIR terminology
Role -  EMA SPOR
Function - EMA SPOR 
allergenIndicator  - FHIR terminology
manufacturer.role  - NCI Thesaurus SPL Business Operation Terminology (Code C73600)
substance.code - G-SRS UNII
quantity.unit  - UCUM
strength.basis - FHIR RoleClassIngredientEntity

### Substance Definition
name.type    -  EMA SPOR
name.language  - ISO 639-1 2 letter language code

### Packaged Product Definition 
type -  EDQM Standard Terms
status - EMA SPOR-RMS; NCI Thesaurus
quantity -  UCUM
legalStatusOfSupply - EMA SPOR-RMS; NCI Thesaurus
marketingStatus - EMA SPOR-RMS; NCI Thesaurus
material - EDQM Standard Terms

### Clinical Use Definition 
type - FHIR terminology
status - FHIR terminology
diseaseSymptomProcedure - MedDRA

### Binary 
contentType - FHIR terminology
