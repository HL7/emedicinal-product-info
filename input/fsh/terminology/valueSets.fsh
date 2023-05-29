//=========================
ValueSet: VsCombinedDoseForm
Id: PharmaceuticalDoseForm
Title: "Combined Pharmaceutical Dose Form"
Description: "Combined Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $spor-combinedPharmaceuticalDoseForm-cs

//=========================
ValueSet: VsAdministrableDoseForm
Id: AdministrableDoseForm
Title: "Administrable Pharmaceutical Dose Form"
Description: "Administrable Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $AdministrableDoseForm

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* ^experimental = false
* codes from system $spor-route-cs

//==========================
ValueSet: VsUnitofMeasure
Id: unitofMeasure
Title: "Units of Measure"
Description: "Units of Measure"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/ucum-units // FHIR terminology

//==========================
ValueSet: VsUnitofPresentation
Id: unitofPresentation
Title: "Units of Presentation"
Description: "Units of Presentation"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/rmswi // to be reviewed

//==========================
ValueSet: VsMeddra
Id: meddra
Title: "MedDRA Terms for clinical diseases and symptoms"
Description: "MedDRA Terms for clinical diseases and symptoms"
* ^experimental = false
* codes from system $meddra

//==========================
ValueSet: VsCountry
Id: country
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* ^experimental = false
* codes from valueset http://terminology.hl7.org/ValueSet/v3-Country2
* urn:iso:std:iso:3166#FR "France"

//==========================
ValueSet: VsPropertyColor
Id: propertyColor
Title: "Color of the product"
Description: "Color of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54453 // to be reviewed

//==========================
ValueSet: VsPropertyFlavor
Id: propertyFlavor
Title: "Flavor of the product"
Description: "Flavor of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C73339 // to be reviewed

//==========================
ValueSet: VsPropertyScore
Id: propertyScore
Title: "Score on the product"
Description: "Score on the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed - request HL7 terminology team add this as a valueset

//==========================
ValueSet: VsPropertyShape
Id: propertyShape
Title: "Shape of the product"
Description: "Shape of the product"
* ^experimental = false
* $uri#https://ncithesaurus.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&ns=ncit&code=C54454 // to be reviewed

//==========================
ValueSet: VsPropertySurfaceForm
Id: propertySurfaceForm
Title: "Surface form of the product"
Description: "Surface form of the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed

//==========================
ValueSet: VsSubstance
Id: substance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* include codes from system http://fdasis.nlm.nih.gov

//==========================
ValueSet: VsContainerType
Id: containerType
Title: "Container Type"
Description: "Type of container"
* ^experimental = false
* $edqm#30001000 "Ampoule"
* $edqm#30004000 "Bag"
* $edqm#30006000 "Barrel"
* $edqm#30007000 "Blister"
* $edqm#30008000 "Bottle"
* $edqm#30009000 "Box"
* $edqm#30014000 "Cartridge"
* $edqm#30015500 "Container"
* $edqm#30018000 "Dart"
* $edqm#30018300 "Dose-dispenser cartridge"
* $edqm#30020000 "Dredging container"
* $edqm#30023000 "Dropper container"
* $edqm#30023005 "Fixed cryogenic vessel"
* $edqm#30024000 "Gas cylinder"
* $edqm#13156000 "Gas cylinder bundle"
* $edqm#30032000 "Jar"
* $edqm#30036005 "Mobile cryogenic vessel"
* $edqm#30038000 "Multidose container"
* $edqm#30039000 "Multidose container with airless pump"
* $edqm#30039400 "Multidose container with metering pump"
* $edqm#30039500 "Multidose container with pump"
* $edqm#13142000 "Pouch"
* $edqm#30048000 "Pour-on container"
* $edqm#30049000 "Pre-filled gastroenteral tube"
* $edqm#13063000 "Pre-filled injector"
* $edqm#13074000 "Pre-filled oral applicator"
* $edqm#13073000 "Pre-filled oral syringe"
* $edqm#30050000 "Pre-filled pen"
* $edqm#30051000 "Pre-filled syringe"
* $edqm#30052000 "Pressurised container"
* $edqm#30053500 "Roll-on container"
* $edqm#30054000 "Sachet"
* $edqm#30057000 "Single-dose container"
* $edqm#30060000 "Spray container"
* $edqm#30064500 "Straw"
* $edqm#30065000 "Strip"
* $edqm#30066000 "Tablet container"
* $edqm#13151000 "Tablet tube"
* $edqm#30067000 "Tube"
* $edqm#13059000 "Unit-dose blister"
* $edqm#30069000 "Vial"
* $edqm#13125000 "Wrapper"