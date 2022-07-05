Instance: ibrancetabletsauth
InstanceOf: RegulatedAuthorizationUvEpi
Description: "Regulated Authorization"
Usage: #example

* identifier.system = "urn:oid:2.16.840.1.113883.3.150"
* identifier.value = "NDA212436"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: Ibrance (palbociclib)

* type = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C73594
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#us
* region.text = "United States"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2002-03-30T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(PfizerLaboratoriesDivPfizerInc)
