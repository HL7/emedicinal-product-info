
This page lists the recommended ValueSets and CodeSystems needed to support each of the resources that make up a core ePI document.

## Value Sets / Code System
### List
status  / custom
mode    / FHIR
code    / custom
emptyReason / custom

### Bundle 
type    / FHIR

### Composition 
Status  / custom
type    / custom
category    / custom
section / custom
section.emptyReason / custom

### Organization 
Type    / Custom
telecom / FHIR
Address.Use     / FHIR
Address.Type    / FHIR 
Address.Country / ISO 3166 2 letter code

### Regulated Authorization 
type    / custom
region  / ISO 3166 2 letter code
status  / custom
case    / custom

### Medicinal Product Definition 
Type    / custom
Domain  / custom
Status
combinedPharmaceuticalDoseForm  / EDQM	
route   / EDQM
legalStatusOfSupply / custom
additionalMonitoringIndicator   / custom
pediatricUseIndicator   / custom
classification  / custom
marketingStatus / custom
packagedMedicinalProduct    / EDQM
name.type   / custom
namePart.type   / custom
countryLanguage.country / ISO 3166 2 letter code
countryLanguage.language    / ISO 639-1 2 letter code

### Administrable Product Definition 
status  / custom
administrableDoseForm   / EDQM
unitOfPresentation  / EDQM
property.colour / NCIT
property.flavour    / NCIT
property.score  / NCIT
property.shape  / NCIT
routeOfAdministration   / EDQM

### Manufactured Item Definition 
status  / custom
manufacturedDoseForm    / EDQM
unitOfPresentation  / EDQM
property.colour / NCIT
property.flavour    / NCIT
property.score  / NCIT
property.shape  / NCIT

### Ingredient 
status  / custom
Role    / custom
Function / custom 
Group   / custom
allergenIndicator   / FHIR
manufacturer.role   / Custom
substance.code  / G-SRS
quantity.unit   / UCUM
strength.basis  / FHIR (e.g., ACTIM, ACTIB, ACTIR)

### Substance Definition 
Grade
molecularWeight.amount
name.type       / custom
name.language   / ISO 639-1 2 letter code

### Packaged Product Definition 
type    / EDQM
status  / custom
quantity    / UCUM
legalStatusOfSupply  / custom
marketingStatus  / custom
material  / EDQM

### Clinical Use Definition 
type  / custom
status  / custom
diseaseSymptomProcedure	/ MedDRA

### Binary 
contentType / custom
