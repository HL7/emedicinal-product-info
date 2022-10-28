CodeSystem: CodeSystemGravitate
Id: gravitate
Title: "Gravitate Health Project Code System"
Description: "Gravitate Health Project Code System. Coded concepts defined for internal project use."
* ^experimental = false
* ^caseSensitive = false
//* ^url = http://hl7.eu/fhir/ig/gravitate-health/CodeSystem/gravitate

* #flavor "Flavor" "Placeholder for the Flavor concept"
* #surfaceform "Surface form" "Placeholder for the Surface form concept"

CodeSystem: CodeSystemUvEPIRrmswi
Title: "Referentials Management Services CodeSystem"
Description: "Items from https://spor.ema.europa.eu/rmswi"
* ^experimental = false
* ^caseSensitive = false
//* ^url = https://spor.ema.europa.eu/rmswi

* #00000072072 "active"
* #100000000012
* #100000072062
* #100000072082
* #100000072084 "Medicinal product subject to medical prescription"
* #100000073543 "Pre-filled pen"
* #100000073578 "Gingival use"
* #100000073633
* #100000073646 "Oral solution"
* #100000073864
* #100000109093
* #100000155527  "Chemical Medicinal Product"
* #100000155538
* #200000002135
* #200000002145 "Spoonful"
* #200000003204  "Glass type I"
* #100000073496 "Blister"
* #220000000001 "Full name"
* #220000000002 "Invented name part"
* #220000000003 "Scientific name part"
* #220000000004 "Strength part"
* #220000000005 "Pharmaceutical dose form part"
* #220000000033
* #220000000034
* #30007000 "Blister"
* #200000003222 "PolyVinyl Chloride"
* #200000003215 "High Density PolyEthylene"
* #100000073497 "Bottle"
* #10219000 "Tablet"
* #15054000 "Tablet"
* #20053000 "Oral use"
* #100000116155 "Granules and solvent for oral suspension"
* #100000073619 "oral use"


// Not in SPOR.. added beacuse used in the composition example....
* #100000155538-0
* #100000155538-1
* #100000155538-2
* #100000155538-3
* #100000155538-4
* #100000155538-5
* #100000155538-6

* #100000073504 "Child-resistant closure"
* #200000003529 "Cardboard"
* #200000002152

// Not in SPOR. Added because part of the List
* #200000001111 "List of Products"
* #200000001112 "List of ePI documents"


CodeSystem: CodeSystemUvEPIRomswi
Title: "Organization Management Services CodeSystem"
Description: "Items from https://spor.ema.europa.eu/omswi"
* ^experimental = false
* ^caseSensitive = false
//* ^url = https://spor.ema.europa.eu/omswi
* #1
* #2

CodeSystem: CodeSystemUvEPIRpmswi
Title: "Products Management Services CodeSystem"
Description: "Items from https://spor.ema.europa.eu/pmswi"
* ^experimental = false
* ^caseSensitive = false
// * ^url = https://spor.ema.europa.eu/pmswi
* #1
* #2

CodeSystem: CodeSystemUvEPIRsmswi
Title: "Substances Management Services CodeSystem"
Description: "Items from https://spor.ema.europa.eu/smswi"
* ^experimental = false
* ^caseSensitive = false
//* ^url = https://spor.ema.europa.eu/smswi
* #1
* #2

//either use codes from https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C73600
//or refer to https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C73600 as a codesystem
//CodeSystem: CodeSystemUvEPIOrganizationType
//Title: "Type of organization"
//Description: "Type of organization"
//* ^experimental = false
//* ^caseSensitive = false
//* ^url = https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C73600
//* #1
//* #2
