
//=========================
ValueSet: VsAdministrableDoseForm
Id: administrableDoseForm
Title: "Administrable Pharmaceutical Dose Form"
Description: "Administrable Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $administrable-dose-form

//=========================
ValueSet: VsManufacturedDoseForm
Id: manufacturedDoseForm
Title: "Manufactured Dose Form"
Description: "Manufactured Dose Form"
* ^experimental = false
* codes from system $manufactured-dose-form

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* ^status = #draft
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002 International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* include codes from system $sct where concept descendent-of #284009009


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
* codes from system $unit-of-presentation

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
// * urn:iso:std:iso:3166#EU "European Union"

//==========================
ValueSet: VsPropertyColor
Id: propertyColor
Title: "Color of the product"
Description: "Color of the product"
* ^experimental = false
* $ncithesaurus#C48323	"BLACK"
* $ncithesaurus#C48324	"GRAY"
* $ncithesaurus#C48325	"WHITE"
* $ncithesaurus#C48326	"RED"
* $ncithesaurus#C48327	"PURPLE"
* $ncithesaurus#C48328	"PINK"
* $ncithesaurus#C48329	"GREEN"
* $ncithesaurus#C48330	"YELLOW"
* $ncithesaurus#C48331	"ORANGE"
* $ncithesaurus#C48332	"BROWN"
* $ncithesaurus#C48333	"BLUE"
* $ncithesaurus#C48334	"TURQUOISE"


//==========================
ValueSet: VsPropertyFlavor
Id: propertyFlavor
Title: "Flavor of the product"
Description: "Flavor of the product"
* ^experimental = false
* $ncithesaurus#C100097 "GINGER"
* $ncithesaurus#C73360 "ALMOND"
* $ncithesaurus#C73361 "ANISE"
* $ncithesaurus#C73362 "APPLE"
* $ncithesaurus#C73363 "APRICOT"
* $ncithesaurus#C73364 "BANANA"
* $ncithesaurus#C73365 "BERRY"
* $ncithesaurus#C73366 "BLACKBERRY"
* $ncithesaurus#C73367 "BLUEBERRY"
* $ncithesaurus#C73368 "BUBBLE GUM"
* $ncithesaurus#C73369 "BURGUNDY"
* $ncithesaurus#C73370 "BUTTER PECAN"
* $ncithesaurus#C73371 "BUTTERMINT"
* $ncithesaurus#C73372 "BUTTERSCOTCH"
* $ncithesaurus#C73373 "CARAMEL"
* $ncithesaurus#C73374 "CHEESE"
* $ncithesaurus#C73375 "CHERRY"
* $ncithesaurus#C73376 "CHOCOLATE"
* $ncithesaurus#C73377 "CINNAMON"
* $ncithesaurus#C73378 "CITRUS"
* $ncithesaurus#C73379 "COCONUT"
* $ncithesaurus#C73380 "COFFEE"
* $ncithesaurus#C73381 "COLA"
* $ncithesaurus#C73382 "COTTON CANDY"
* $ncithesaurus#C73383 "CRANBERRY"
* $ncithesaurus#C73384 "CREME DE MENTHE"
* $ncithesaurus#C73385 "CURACAO"
* $ncithesaurus#C73386 "CUSTARD"
* $ncithesaurus#C73387 "EGG NOG"
* $ncithesaurus#C73388 "FIG"
* $ncithesaurus#C73389 "FRUIT"
* $ncithesaurus#C73390 "FRUIT PUNCH"
* $ncithesaurus#C73391 "GRAPE"
* $ncithesaurus#C73392 "GRAPEFRUIT"
* $ncithesaurus#C73393 "GUARANA"
* $ncithesaurus#C73394 "HONEY"
* $ncithesaurus#C73395 "KIWI"
* $ncithesaurus#C73396 "LEMON"
* $ncithesaurus#C73397 "LICORICE"
* $ncithesaurus#C73398 "LIME"
* $ncithesaurus#C73399 "LIVER"
* $ncithesaurus#C73400 "MANGO"
* $ncithesaurus#C73402 "MEAT"
* $ncithesaurus#C73403 "MENTHOL"
* $ncithesaurus#C73404 "MINT"
* $ncithesaurus#C73405 "ORANGE BANANA"
* $ncithesaurus#C73406 "ORANGE"
* $ncithesaurus#C73407 "PEACH"
* $ncithesaurus#C73408 "PEPPERMINT"
* $ncithesaurus#C73409 "PINEAPPLE"
* $ncithesaurus#C73410 "PLUM"
* $ncithesaurus#C73411 "POMEGRANATE"
* $ncithesaurus#C73412 "RAISIN"
* $ncithesaurus#C73413 "RASPBERRY"
* $ncithesaurus#C73414 "ROOT BEER"
* $ncithesaurus#C73415 "RUM"
* $ncithesaurus#C73416 "SPEARMINT"
* $ncithesaurus#C73417 "STRAWBERRY"
* $ncithesaurus#C73418 "TANGERINE"
* $ncithesaurus#C73419 "TROPICAL FRUIT PUNCH"
* $ncithesaurus#C73420 "TUTTI FRUTTI"
* $ncithesaurus#C73421 "VANILLA"
* $ncithesaurus#C73422 "WALNUT"
* $ncithesaurus#C73423 "WATERMELON"
* $ncithesaurus#C73424 "WINTERGREEN"
* $ncithesaurus#C73433 "MAQUE TREE"
* $ncithesaurus#C79134 "FISH"
* $ncithesaurus#C82400 "MARSHMALLOW"
* $ncithesaurus#C87298 "BOYSENBERRY"
* $ncithesaurus#C92709 "CHICKEN"
* $ncithesaurus#C92710 "MALT"



//==========================
ValueSet: VsPropertyShape
Id: propertyShape
Title: "Shape of the product"
Description: "Shape of the product"
* ^experimental = false
* $ncithesaurus#C48335	"BULLET"
* $ncithesaurus#C48336	"CAPSULE"
* $ncithesaurus#C48337	"CLOVER"
* $ncithesaurus#C48338	"DIAMOND"
* $ncithesaurus#C48339	"DOUBLE CIRCLE"	
* $ncithesaurus#C48340	"FREEFORM"	
* $ncithesaurus#C48341	"GEAR"
* $ncithesaurus#C48342	"HEPTAGON (7 sided)"	
* $ncithesaurus#C48343	"HEXAGON (6 sided)"	
* $ncithesaurus#C48344	"OCTAGON (8 sided)"	
* $ncithesaurus#C48345	"OVAL"		
* $ncithesaurus#C48346	"PENTAGON"		
* $ncithesaurus#C48347	"RECTANGL"
* $ncithesaurus#C48348	"ROUND"
* $ncithesaurus#C48349	"SEMI-CIR"
* $ncithesaurus#C48350	"SQUARE"
* $ncithesaurus#C48351	"TEAR"
* $ncithesaurus#C48352	"TRAPEZOI"
* $ncithesaurus#C48353	"TRIANGLE"

//==========================
ValueSet: VsSubstance
Id: substance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* include codes from system http://fdasis.nlm.nih.gov

//=========================
ValueSet: VsPackagedProductIdSystems
Id: packagedProductIdSystems
Title: "PackagedProductDefinition identifier systems"
Description: "PackagedProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed

//=========================
ValueSet: VsAdmProductIdSystems
Id: admProductIdSystems
Title: "AdministrableProductDefinition identifier systems"
Description: "AdministrableProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed
* $uri#https://www.who-umc.org/phpid "IDMP PhPID" // to be reviewed

//=========================
ValueSet: VsManufacturedItemIdSystems
Id: manufacturedItemIdSystems
Title: "ManufacturedItemDefinition identifier systems"
Description: "ManufacturedItemDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed



//=========================
ValueSet: VsEpiType
Id: epiType
Title: "ePI document types"
Description: "ePI document types"
* ^experimental = false
* $loinc#34390-5	"HUMAN OTC DRUG LABEL"
* $loinc#34391-3	"HUMAN PRESCRIPTION DRUG LABEL"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"


//==========================
ValueSet: VsAtcClassification
Id: atcClassification
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system"
* ^experimental = false
* codes from system $atc 
* ^copyright = "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/"



//==========================
ValueSet: VsContainerType
Id: containerType
Title: "Container Type"
Description: "Type of container"
* ^copyright = "This artifact includes content from EDQM Standard Terms. EDQM Standard Terms are copyright European Directorate for the Quality of Medicines. Terms & Conditions in https://www.edqm.eu/en/standard-terms-database"
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


//==========================
ValueSet: VsPackageMaterial
Id: packageMaterial
Title: "Package Material"
Description: "Package Material"
* ^experimental = false
* codes from system EmaSporMaterial //"SPOR Organization (EU)" // to be reviewed

//==========================
ValueSet: VsSectionCode
Id: sectionCode
Title: "Section Codes"
Description: "Section Codes"
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

* $loinc#34086-9 "ABUSE SECTION"
* $loinc#60555-0 "ACCESSORIES"
* $loinc#34084-4 "ADVERSE REACTIONS SECTION"
* $loinc#69761-5 "ALARMS"
* $loinc#34091-9 "ANIMAL PHARMACOLOGY & OR TOXICOLOGY SECTION"
* $loinc#60556-8 "ASSEMBLY OR INSTALLATION INSTRUCTIONS"
* $loinc#34066-1 "BOXED WARNING SECTION"
* $loinc#60557-6 "CALIBRATION INSTRUCTIONS"
* $loinc#34083-6 "CARCINOGENESIS & MUTAGENESIS & IMPAIRMENT OF FERTILITY SECTION"
* $loinc#34090-1 "CLINICAL PHARMACOLOGY SECTION"
* $loinc#60558-4 "CLEANING, DISINFECTING, AND STERILIZATION INSTRUCTIONS"
* $loinc#34092-7 "CLINICAL STUDIES SECTION"
* $loinc#90374-0 "CLINICAL TRIALS EXPERIENCE SECTION"
* $loinc#69760-7 "COMPATIBLE ACCESSORIES"
* $loinc#60559-2 "COMPONENTS"
* $loinc#34070-3 "CONTRAINDICATIONS SECTION"
* $loinc#34085-1 "CONTROLLED SUBSTANCE SECTION"
* $loinc#34087-7 "DEPENDENCE SECTION"
* $loinc#34089-3 "DESCRIPTION SECTION"
* $loinc#69758-1 "DIAGRAM OF DEVICE"
* $loinc#69763-1 "DISPOSAL AND WASTE HANDLING"
* $loinc#34068-7 "DOSAGE & ADMINISTRATION SECTION"
* $loinc#43678-2 "DOSAGE FORMS & STRENGTHS SECTION"
* $loinc#34074-5 "DRUG & OR LABORATORY TEST INTERACTIONS SECTION"
* $loinc#42227-9 "DRUG ABUSE AND DEPENDENCE SECTION"
* $loinc#34073-7 "DRUG INTERACTIONS SECTION"
* $loinc#50742-6 "ENVIRONMENTAL WARNING SECTION"
* $loinc#77291-3 "FEMALES & MALES OF REPRODUCTIVE POTENTIAL SECTION"
* $loinc#50743-4 "FOOD SAFETY WARNING SECTION"
* $loinc#34072-9 "GENERAL PRECAUTIONS SECTION"
* $loinc#34082-8 "GERIATRIC USE SECTION"
* $loinc#50740-0 "GUARANTEED ANALYSIS OF FEED SECTION"
* $loinc#71744-7 "HEALTH CARE PROVIDER LETTER SECTION"
* $loinc#69719-3 "HEALTH CLAIM SECTION"
* $loinc#88829-7 "HEPATIC IMPAIRMENT SUBSECTION"
* $loinc#34069-5 "HOW SUPPLIED SECTION"
* $loinc#88830-5 "IMMUNOGENICITY"
* $loinc#51727-6 "INACTIVE INGREDIENT SECTION"
* $loinc#34067-9 "INDICATIONS & USAGE SECTION"
* $loinc#50744-2 "INFORMATION FOR OWNERS/CAREGIVERS SECTION"
* $loinc#34076-0 "INFORMATION FOR PATIENTS SECTION"
* $loinc#59845-8 "INSTRUCTIONS FOR USE SECTION"
* $loinc#60560-0 "INTENDED USE OF THE DEVICE"
* $loinc#34079-4 "LABOR & DELIVERY SECTION"
* $loinc#34075-2 "LABORATORY TESTS SECTION"
* $loinc#77290-5 "LACTATION SECTION"
* $loinc#43679-0 "MECHANISM OF ACTION SECTION"
* $loinc#49489-8 "MICROBIOLOGY SECTION"
* $loinc#43680-8 "NONCLINICAL TOXICOLOGY SECTION"
* $loinc#34078-6 "NONTERATOGENIC EFFECTS SECTION"
* $loinc#34080-2 "NURSING MOTHERS SECTION"
* $loinc#60561-8 "OTHER SAFETY INFORMATION"
* $loinc#34088-5 "OVERDOSAGE SECTION"
* $loinc#55106-9 "OTC - ACTIVE INGREDIENT SECTION"
* $loinc#50569-3 "OTC - ASK DOCTOR SECTION"
* $loinc#50568-5 "OTC - ASK DOCTOR/PHARMACIST SECTION"
* $loinc#50570-1 "OTC - DO NOT USE SECTION"
* $loinc#50565-1 "OTC - KEEP OUT OF REACH OF CHILDREN SECTION"
* $loinc#53414-9 "OTC - PREGNANCY OR BREAST FEEDING SECTION"
* $loinc#55105-1 "OTC - PURPOSE SECTION"
* $loinc#53413-1 "OTC - QUESTIONS SECTION"
* $loinc#50566-9 "OTC - STOP USE SECTION"
* $loinc#50567-7 "OTC - WHEN USING SECTION"
* $loinc#51945-4 "PACKAGE LABEL.PRINCIPAL DISPLAY PANEL"
* $loinc#88436-1 "PATIENT COUNSELING INFORMATION"
* $loinc#68498-5 "PATIENT MEDICATION INFORMATION SECTION"
* $loinc#34081-0 "PEDIATRIC USE SECTION"
* $loinc#43681-6 "PHARMACODYNAMICS SECTION"
* $loinc#66106-6 "PHARMACOGENOMICS SECTION"
* $loinc#43682-4 "PHARMACOKINETICS SECTION"
* $loinc#90375-7 "POSTMARKETING EXPERIENCE SECTION"
* $loinc#42232-9 "PRECAUTIONS SECTION"
* $loinc#42228-7 "PREGNANCY SECTION"
* $loinc#43683-2 "RECENT MAJOR CHANGES SECTION"
* $loinc#34093-5 "REFERENCES SECTION"
* $loinc#53412-3 "RESIDUE WARNING SECTION"
* $loinc#100382-1 "REMS ADDRESSED RISK"
* $loinc#87523-7 "REMS ADMINISTRATIVE INFORMATION"
* $loinc#87526-0 "REMS APPLICANT REQUIREMENTS"
* $loinc#82344-3 "REMS COMMUNICATION"
* $loinc#82348-4 "REMS ELEMENTS"
* $loinc#82345-0 "REMS ELEMENTS TO ASSURE SAFE USE"
* $loinc#82349-2 "REMS GOALS"
* $loinc#82350-0 "REMS IMPLEMENTATION SYSTEM"
* $loinc#82346-8 "REMS MATERIAL"
* $loinc#82598-4 "REMS MEDICATION GUIDE"
* $loinc#87525-2 "REMS PARTICIPANT REQUIREMENTS"
* $loinc#87524-5 "REMS REQUIREMENTS"
* $loinc#82347-6 "REMS SUMMARY"
* $loinc#82352-6 "REMS TIMETABLE FOR SUBMISSION ASSESSMENTS"
* $loinc#88828-9 "RENAL IMPAIRMENT SUBSECTION"
* $loinc#69759-9 "RISKS"
* $loinc#60562-6 "ROUTE, METHOD AND FREQUENCY OF ADMINISTRATION"
* $loinc#50741-8 "SAFE HANDLING WARNING SECTION"
* $loinc#48779-3 "SPL INDEXING DATA ELEMENTS SECTION"
* $loinc#48780-1 "SPL PRODUCT DATA ELEMENTS SECTION"
* $loinc#42231-1 "SPL MEDGUIDE SECTION"
* $loinc#42230-3 "SPL PATIENT PACKAGE INSERT SECTION"
* $loinc#42229-5 "SPL UNCLASSIFIED SECTION"
* $loinc#69718-5 "STATEMENT OF IDENTITY SECTION"
* $loinc#44425-7 "STORAGE AND HANDLING SECTION"
* $loinc#60563-4 "SUMMARY OF SAFETY AND EFFECTIVENESS"
* $loinc#34077-8 "TERATOGENIC EFFECTS SECTION"
* $loinc#69762-3 "TROUBLESHOOTING"
* $loinc#43684-0 "USE IN SPECIFIC POPULATIONS SECTION"
* $loinc#54433-8 "USER SAFETY WARNINGS SECTION"
* $loinc#50745-9 "VETERINARY INDICATIONS SECTION"
* $loinc#43685-7 "WARNINGS AND PRECAUTIONS SECTION"
* $loinc#34071-1 "WARNINGS SECTION"

 //==========================
ValueSet: VsIngredientRole
Id: ingredientRole
Title: "Ingredient Role; e.g., inactive, active base, active moiety"
Description: "Ingredient Role; e.g., inactive, active base, active moiety"
* ^experimental = false
* codes from system $ingredient-role




/* //==========================
ValueSet: VsDataCarrierIdSystem
Id: dataCarrierIdSystem
Title: "Data Carrier Identifiers"
Description: "Listing of identifiers for Data Carriers"
* ^experimental = false
* $uri#https://www.gs1.org/gtin "Global Trade Item Number" //  */


/* //=========================
ValueSet: VsMedProductIdSystems
Id: VsMedProductIdSystems
Title: "MedicinalProductDefinition identifier systems"
Description: "MedicinalProductDefinition Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "EU MP ID system (placeholder)" // to be reviewed
 */
//=========================
/* ValueSet: VsOrganizationIdSystems
Id: organizationIdSystems
Title: "Organization identifier systems"
Description: "Organization Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed */

/* //==========================
ValueSet: VsLegalStatusOfSupply
Id: legalStatusOfSupply
Title: "Legal Status for the Supply"
Description: "Legal Status for the Supply"
* ^experimental = false
* codes from system $spor-legalStatusForSupply-cs */

/* //==========================
ValueSet: VsMarketingStatus
Id: marketingStatus
Title: "Marketing Status"
Description: "Marketing Status"
* ^experimental = false
* codes from system $spor-marketingStatus-cs */

/* //==========================
ValueSet: VsAuthorizationStatus
Id: authorizationStatus
Title: "Authorization Status"
Description: "Authorization Status"
* ^experimental = false
* codes from system $spor-regulatoryEntitlementStatus-cs // to be reviewed */

//==========================
/* ValueSet: VsPackagingType
Id: secondaryPrimaryPackType
Title: "Pack Type"
Description: "Pack Type"
* ^experimental = false
* codes from system $spor-packType-cs */





/* //==========================
ValueSet: VsCaseIdSystem
Id: caseIdSystem
Title: "Case System Identifiers"
Description: "Case System Identifiers"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed */

/* //==========================
ValueSet: VsRegulatoryActivityType
Id: regulatoryActivityType
Title: "Regulatory Activity Type"
Description: "Regulatory Activity Type; e.g., MAA"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed */
/* 
//==========================
ValueSet: VsGeneralStatus
Id: generalStatus
Title: "General Status used across ePI resources"
Description: "General Status used across ePI resources"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed
 */

/* //==========================
ValueSet: VsProprietaryNamePart
Id: proprietaryNamePart
Title: "Proprietary Name of the medicinal product"
Description: "Proprietary Name of the medicinal product"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi */

/* //==========================
ValueSet: VsNonproprietaryNamePart
Id: nonproprietaryNamePart
Title: "Non-proprietary Name of the active ingredient(s)"
Description: "Non-proprietary Name of the active ingredient(s)"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi */

/* //==========================
ValueSet: VsStrengthPart
Id: strengthPart
Title: "Strength of the medicinal product name"
Description: "Strength of the medicinal product name"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed
* codes from system https://spor.ema.europa.eu/rmswi */

/* //==========================
ValueSet: VsPharmaceuticalDoseFormPart
Id: pharmaceuticalDoseFormPart
Title: "Pharmaceutical Dose Form of the medicinal product"
Description: "Pharmaceutical Dose Form of the medicinal product"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/rmswi */

//==========================
//ValueSet: VsListOrderCodesIdSystems
//Id: VsListOrderCodesIdSystems
//Title: "Order Codes for List"
//Description: "Order Codes for List"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/list-order "Order Codes for List"
//* codes from system http://terminology.hl7.org/CodeSystem/list-order

/* //==========================
ValueSet: VsExampleUseCodesForList
Id: exampleUseCodesForList
Title: "The topic of this list"
Description: "The topic of this list"
* ^experimental = false
* $uri#http://hl7.org/fhir/ValueSet/list-example-codes "List Order Codes" */

//==========================
//ValueSet: VsJurisdiction
//Id: VsJurisdiction
//Title: "Two letter country code"
//Description: "Two letter country code"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/jurisdiction "JurisdictionValueSet" // FHIR terminology

//==========================
//ValueSet: VsLanguage
//Id: VsLanguage
//Title: "Languages"
//Description: "Languages"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/languages "Languages" // FHIR terminology

/* //==========================
ValueSet: VsProductNamePartType
Id: productNamePartType
Title: "Product Name Part Type"
Description: "Product Name Part Type"
* ^experimental = false
* codes from system $spor-productNamePartType-cs

//==========================
ValueSet: VsPartType
Id: partType
Title: "Part Type"
Description: "Part Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed */

//==========================
//ValueSet: VsMedicinalProductCrossReferenceType
//Id: VsMedicinalProductCrossReferenceType
//Title: "Product Cross Reference Type"
//Description: "Product Cross Reference Type"
//* ^experimental = false
//* $uri#http://hl7.org/fhir/ValueSet/medicinal-product-cross-reference-type "ProductCrossReferenceType" // FHIR terminology
//* codes from system http://hl7.org/fhir/medicinal-product-cross-reference-type

/* //==========================
ValueSet: VsProductConfidentialityIdSystems
Id: productConfidentialityIdSystems
Title: "Product Confidentiality"
Description: "Product Confidentiality"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/omswi "SPOR Organization (EU)" // to be reviewed */

/* //=========================
ValueSet: VsRegulatedAuthorizationType
Id: regulatedAuthorizationType
Title: "Type of Regulated Authorization"
Description: "Type of Regulated Authorization"
* ^experimental = false
* codes from system $spor-regulatoryEntitlementType-cs // to be reviewed */

/* //=========================
ValueSet: VsRegulatedAuthorizationTypeIdSystems
Id: RegulatedAuthorizationTypeIdSystems
Title: "Regulated Authorization Type identifier systems"
Description: "Regulated Authorization Type Identifier systems (uri)"
* ^experimental = false
* $uri#https://spor.ema.europa.eu/pmswi "SPOR Product (EU)" // to be reviewed */

/* //=========================
ValueSet: VsMedProductType
Id: medProductType
Title: "Medicinal Product Type"
Description: "Medicinal Product Type"
* ^experimental = false
* codes from system $spor-medicinalProducttype-cs */

/* //=========================
ValueSet: VsPharmaceuticalDoseForm
Id: PharmaceuticalDoseForm
Title: "Combined Pharmaceutical Dose Form"
Description: "Combined Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $spor-combinedPharmaceuticalDoseForm-cs */

/* //==========================
ValueSet: VsOrganizationType
Id: organizationType
Title: "Type of organization"
Description: "Type of organization"
* ^experimental = false
* codes from system $spor-organisationRoleType-cs */

/* //==========================
ValueSet: VsOperationType
Id: operationType
Title: "Type of operation"
Description: "Type of operation"
* ^experimental = false
* codes from system $spor-operationType-cs */

/* //==========================
ValueSet: VsAdditionalMonitoringIndicator
Id: additionalMonitoringIndicator
Title: "Additional Monitoring Indicator"
Description: "Additional Monitoring Indicator"
* ^experimental = false
* codes from system $spor-additionalMonitoringIndicator-cs */
/* //==========================
ValueSet: VsSpecialPrecautionsForStorage
Id: specialPrecautionsForStorage
Title: "Special Precautions For Storage"
Description: "Special Precautions For Storage"
* ^experimental = false
* codes from system $spor-precautionsForStorage-cs // "SPOR Organization (EU)"  to be reviewed
// add fda codes
// add PMDA */


/* //==========================
ValueSet: VsPediatricUseIndicator
Id: pediatricUseIndicator
Title: "Pediatric Use Indicator"
Description: "Pediatric Use Indicator"
* ^experimental = false
* codes from system $spor-pediatricUseIndicator-cs */

/* //==========================
ValueSet: VsShelfLifeType
Id: shelfLifeType
Title: "Shelf Life Type"
Description: "Shelf Life Type"
* ^experimental = false
* codes from system https://spor.ema.europa.eu/omswi //"SPOR Organization (EU)" // to be reviewed */

/* //==========================
ValueSet: VsPropertySurfaceForm
Id: propertySurfaceForm
Title: "Surface form of the product"
Description: "Surface form of the product"
* ^experimental = false
* $uri#https://placeholder.com // to be reviewed */

/* //==========================
ValueSet: VsPropertyScore
Id: propertyScore
Title: "Score on the product"
Description: "Score on the product"
* ^experimental = true
* $uri#https://placeholder.com // to be reviewed - request HL7 terminology team add this as a valueset */