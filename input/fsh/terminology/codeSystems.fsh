CodeSystem: EpiIg
Id: epi-ig
Title: "eMedicinal Product Information Code System"
Description: """eMedicinal Product Information Code System.
Coded concepts defined for ePI use only."""
* ^experimental = false
* ^caseSensitive = false
* #flavor "Flavor" "Placeholder for the Flavor concept"
* #surfaceform "Surface form" "Placeholder for the Surface form concept"

CodeSystem: EmaSporDocumentType
Id: spor-documentType
Title: "Product Information Document Type"
Description: """Example of the Product Information Document Type list from spor.ema.europa.eu"""
* ^experimental = true
* ^caseSensitive = false
* ^content = #example
* ^url = "https://spor.ema.europa.eu/v1/lists/100000155531"
* #100000155532	"Summary of Product Characteristics"  	"Summary of Product Characteristics"  
* #100000155533	"Annex II"	"Annex II"
* #100000155534	"Outer Packaging"	"Outer Packaging"
* #100000155535	"Labelling"	"Labelling"
* #100000155536	"Immediate Packaging"	"Immediate Packaging"
* #100000155537	"Other Product Information"	"Other Product Information"
* #100000155538	"Package Leaflet"	"Package Leaflet"
* #100000155539	"Combined File of all Documents"	"Combined File of all Documents"
* #100000155540	"Mock ups"	"Mock ups"
* #100000155541	"Appendix V"	"Appendix V"
* #200000017121	"Package Leaflet and Labelling"	"Package Leaflet and Labelling"
* #200000027914	"Specimens"	"Specimens"
* #200000027915	"List of all authorised presentations (Annex A)"	"List of all authorised presentations (Annex A)"
* #200000027916	"Restrictions posed by Member States (Annex 127a)"	"Restrictions posed by Member States (Annex 127a)"


CodeSystem: EmaSporNamePartType
Id: spor-namePartType
Title: "Medicinal Product Name Part Type"
Description: """Example of the Medicinal Product Name Part Type list from the EMA SPOR RMS"""
* ^experimental = true
* ^caseSensitive = false
* ^content = #example
* ^url = "https://spor.ema.europa.eu/v1/lists/220000000000"
* #220000000001	"Full name" "Full name"
* #220000000002	"Invented name part" "Invented name part"
* #220000000003	"Scientific name part" "Scientific name part"
* #220000000004	"Strength part" "Strength part"
* #220000000005	"Pharmaceutical dose form part"	"Pharmaceutical dose form part"
* #220000000006	"Formulation part" "Formulation part"
* #220000000007	"Intended use part" "Intended use part"
* #220000000008	"Target population part" "Target population part"
* #220000000009	"Container or pack part" "Container or pack part"
* #220000000010	"Device part" "Device part"
* #220000000011	"Trademark or company name part"	"Trademark or company name part"
* #220000000012	"Time/Period part" "Time/Period part"
* #220000000013	"Flavour part" "Flavour part"
* #220000000014	"Delimiter part" "Delimiter part"
* #220000000015	"Legacy name" "Legacy name"
* #220000000016	"Target species name part" "Target species name part"


CodeSystem: EmaSporPackaging
Id: spor-packaging
Title: "Packaging EMA SPOR"
Description: "Example of the Package typesmlist from the EMA SPOR RMS."
* ^url = "https://spor.ema.europa.eu/v1/lists/100000073346"
* ^status = #draft
* ^experimental = true
* ^content = #example
* ^caseSensitive = false
* #100000073530 "Multidose container"                               
* #100000073520 "Injection syringe"
* #100000073529 "Mouthpiece"
* #100000073502 "Cap"
* #100000073513 "Fixed cryogenic vessel"
* #100000073500 "Brush applicator"
* #100000073495 "Barrel"
* #100000073496 "Blister"
* #100000073497 "Bottle"
* #100000073509 "Dredging container"
* #100000073511 "Dropper applicator"
* #100000073539 "Pipette applicator"
* #100000073490 "Ampoule"
* #100000073505 "Cup"
* #100000073506 "Dabbing applicator"
* #100000073508 "Dredging applicator"
* #100000073512 "Dropper container"
* #100000073517 "Inhaler"
* #100000073527 "Metering valve"
* #100000073535 "Needle applicator"
* #100000073519 "Injection needle"
* #100000073526 "Metering pump"
* #100000073523 "Jar"
* #100000073524 "Measuring device"
* #100000073525 "Measuring spoon"
* #100000073528 "Mobile cryogenic vessel"
* #100000073558 "Straw"
* #100000073531 "Multidose container with airless pump"
* #100000073532 "Multipuncturer"
* #100000073533 "Nasal applicator"
* #100000073534 "Nebuliser"
* #100000073536 "Nozzle"
* #100000073538 "Pipette"
* #200000024874 "Tablet tube"
* #100000073540 "Pouch"
* #100000073491 "Applicator"
* #100000073542 "Pre-filled gastroenteral tube"
* #100000073543 "Pre-filled pen"
* #100000073555 "Spray valve"
* #100000073545 "Pressurised container"
* #100000073554 "Spray pump"
* #100000073546 "Prick test applicator"
* #100000073547 "Sachet"
* #100000073550 "Single-dose container"
* #100000073551 "Spatula"
* #100000073553 "Spray container"
* #100000073563 "Vial"
* #100000073498 "Box"
* #100000073499 "Brush"
* #100000073501 "Cannula"
* #100000073559 "Strip"
* #100000073560 "Tablet container"
* #100000075664 "Administration system"
* #100000116196 "Needle-free injector"
* #100000116197 "Roll-on container"
* #100000137702 "Container"
* #100000143554 "Multidose container with metering pump"
* #100000166980 "Valve"
* #200000010647 "Lid"
* #100000173982 "Oral applicator"
* #100000173983 "Dose dispenser"
* #100000174066 "Unit-dose blister"
* #100000174067 "Pre-filled injector"
* #100000174068 "Pre-filled oral syringe"
* #100000174069 "Pre-filled oral applicator"
* #100000174070 "Dose-dispenser cartridge"
* #200000005068 "Pen"
* #100000073514 "Gas cylinder"
* #100000073561 "Tube"
* #200000005585 "Wrapper"
* #100000073504 "Child-resistant closure"
* #100000073549 "Screw cap"
* #100000073557 "Stopper"
* #100000073493 "Bag"
* #100000073503 "Cartridge"
* #100000073537 "Oral syringe"
* #100000125779 "Multidose container with pump"
* #100000073544 "Pre-filled syringe"
* #200000026021 "Gas cylinder bundle"
* #100000163233 "disk"
* #100000163234 "plunger"

CodeSystem: EmaSporRouteMethodAdm
Id: spor-routeMethodAdm
Title: "Routes and Methods of Administration  EMA SPOR"
Description: "Example (fragment) of the Routes and Methods of Administration list from the EMA SPOR RMS."
* ^url = "https://spor.ema.europa.eu/v1/lists/100000073345"
* ^status = #draft
* ^experimental = true
* ^content = #example
* ^caseSensitive = false
                               
* #100000073572	"Epidural use"	
* #100000073573	"Epilesional use"   
* #100000073574	"Extraamniotic use"	
* #100000073575	"Foot-stab use"   
* #100000073576	"Gastroenteral use"	
* #100000073577	"Gastric use"   
* #100000073578	"Gingival use"
* #100000073619	"Oral use"  "Oral use"  


CodeSystem: EmaSporIngredientRole
Id: spor-ingredientRole
Title: "Ingredient Role EMA SPOR"
Description: "Example (fragment) of the Ingredient Role list from the EMA SPOR RMS."
* ^url = "https://spor.ema.europa.eu/v1/lists/100000072050"
* ^status = #draft
* ^experimental = true
* ^content = #example
* ^caseSensitive = false

* #100000072082	"Excipient" "Excipient"
* #100000072072	"Active" "Active"

CodeSystem: EmaSporLegalStatusForTheSupply
Id: spor-legalStatusForTheSupply
Title: "Legal Status for the Supply EMA SPOR"
Description: "Example (fragment) of the Legal status of supply list from the EMA SPOR RMS."
* ^experimental = true
* ^url = "https://spor.ema.europa.eu/v1/lists/100000072050"
* ^caseSensitive = false
* ^status = #draft
* ^content = #example

* #100000072076 "Medicinal product not subject to medical prescription"
* #100000072077 "Medicinal product on medical prescription for renewable or non-renewable delivery"
* #100000072078 "Medicinal product subject to restricted medical prescription"
* #100000072079 "Medicinal product on medical prescription for non-renewable delivery"
* #100000072084 "Medicinal product subject to medical prescription"
* #100000072085 "Medicinal product subject to special medical prescription"
* #100000072086 "Medicinal product on medical prescription for renewable delivery"
* #100000157313 "Medicinal product subject to special and restricted medical prescription"


CodeSystem: EmaProductInformationTemplate
// add hierarchy if needed
Id: spor-productInformationTemplate
Title: "Product Information Template SPOR"
Description: "Example (fragment) of the Product Information Template list from the EMA SPOR RMS."
* ^experimental = false
* ^url = "https://spor.ema.europa.eu/v1/lists/200000029659"
* ^caseSensitive = true
* ^status = #draft
* ^content = #example
* #200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* #200000029792 "1. NAME OF THE MEDICINAL PRODUCT"
* #200000029793 "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* #200000029794 "2.1 General description"
* #200000029795 "2.2 Qualitative and quantitative composition"
* #200000029796 "Excipient(s) with known effect"
* #200000029797 "3. PHARMACEUTICAL FORM"
* #200000029798 "4. CLINICAL PARTICULARS"
* #200000029799 "4.1 Therapeutic indications"
* #200000029800 "4.2 Posology and method of administration"
* #200000029801 "Posology"
* #200000029802 "Paediatric population"
* #200000029803 "Method of administration"
* #200000029804 "Precautions to be taken before handling or administering the medicinal product"
* #200000029805 "4.3 Contraindications"
* #200000029806 "4.4 Special warnings and precautions for use"
* #200000029807 "Traceability"
* #200000029808 "Paediatric population"
* #200000029809 "4.5 Interaction with other medicinal products and other forms of interaction"
* #200000029810 "Paediatric population"
* #200000029811 "4.6 Fertility, pregnancy and lactation"
* #200000029812 "Pregnancy"
* #200000029813 "Breast-feeding"
* #200000029814 "Fertility"
* #200000029815 "4.7 Effects on ability to drive and use machines"
* #200000029816 "4.8 Undesirable effects"
* #200000029817 "Paediatric population"
* #200000029818 "Reporting of suspected adverse reactions"
* #200000029819 "4.9 Overdose"
* #200000029820 "Paediatric population"
* #200000029821 "5. PHARMACOLOGICAL PROPERTIES"
* #200000029822 "5.1 Pharmacodynamic properties"
* #200000029823 "Mechanism of action"
* #200000029824 "Pharmacodynamic effects"
* #200000029825 "Clinical efficacy and safety"
* #200000029826 "Paediatric population"
* #200000029827 "5.2 Pharmacokinetic properties"
* #200000029828 "Absorption"
* #200000029829 "Distribution"
* #200000029830 "Biotransformation"
* #200000029831 "Elimination"
* #200000029832 "Linearity/non-linearity"
* #200000029833 "Pharmacokinetic/pharmacodynamic relationship(s)"
* #200000029834 "5.3 Preclinical safety data"
* #200000029835 "Environmental risk assessment (ERA)"
* #200000029836 "6. PHARMACEUTICAL PARTICULARS"
* #200000029837 "6.1 List of excipients"
* #200000029838 "6.2 Incompatibilities"
* #200000029839 "6.3 Shelf life"
* #200000029840 "6.4 Special precautions for storage"
* #200000029841 "6.5 Nature and contents of container <and special equipment for use, administration or implantation>"
* #200000029842 "6.6 Special precautions for disposal <and other handling>"
* #200000029843 "Use in the paediatric population"
* #200000029844 "7. MARKETING AUTHORISATION HOLDER"
* #200000029845 "8. MARKETING AUTHORISATION NUMBER(S)"
* #200000029846 "9. DATE OF FIRST AUTHORISATION/RENEWAL OF THE AUTHORISATION"
* #200000029847 "10. DATE OF REVISION OF THE TEXT"
* #200000029848 "11. DOSIMETRY"
* #200000029849 "12. INSTRUCTIONS FOR PREPARATION OF RADIOPHARMACEUTICALS"
* #200000029850 "ANNEX II"
* #200000029851 "A. <MANUFACTURER(S) OF THE BIOLOGICAL ACTIVE SUBSTANCE(S) AND> MANUFACTURER(S) RESPONSIBLE FOR BATCH RELEASE"
* #200000029852 "B. CONDITIONS OR RESTRICTIONS REGARDING SUPPLY AND USE"
* #200000029853 "Official batch release"
* #200000029854 "C. OTHER CONDITIONS AND REQUIREMENTS OF THE MARKETING AUTHORISATION"
* #200000029855 "Periodic safety update reports (PSURs)"
* #200000029856 "D. CONDITIONS OR RESTRICTIONS WITH REGARD TO THE SAFE AND EFFECTIVE USE OF THE MEDICINAL PRODUCT"
* #200000029857 "Risk management plan (RMP)"
* #200000029858 "Additional risk minimisation measures"
* #200000029859 "Obligation to conduct post-authorisation measures"
* #200000029860 "E. SPECIFIC OBLIGATION TO COMPLETE POST-AUTHORISATION MEASURES FOR <THE CONDITIONAL MARKETING AUTHORISATION> <THE MARKETING AUTHORISATION UNDER EXCEPTIONAL CIRCUMSTANCES"
* #200000029861 "LABELLING"
* #200000029862 "PARTICULARS TO APPEAR ON <THE OUTER PACKAGING> <AND> <THE IMMEDIATE PACKAGING> {NATURE/TYPE}"
* #200000029863 "1. NAME OF THE MEDICINAL PRODUCT"
* #200000029864 "2. STATEMENT OF ACTIVE SUBSTANCE(S)"
* #200000029865 "3. LIST OF EXCIPIENTS"
* #200000029866 "4. PHARMACEUTICAL FORM AND CONTENTS"
* #200000029867 "5. METHOD AND ROUTE(S) OF ADMINISTRATION"
* #200000029868 "6. SPECIAL WARNING THAT THE MEDICINAL PRODUCT MUST BE STORED OUT OF THE SIGHT AND REACH OF CHILDREN"
* #200000029869 "7. OTHER SPECIAL WARNING(S), IF NECESSARY"
* #200000029870 "8. EXPIRY DATE"
* #200000029871 "9. SPECIAL STORAGE CONDITIONS"
* #200000029872 "10. SPECIAL PRECAUTIONS FOR DISPOSAL OF UNUSED MEDICINAL PRODUCTS OR WASTE MATERIALS DERIVED FROM SUCH MEDICINAL PRODUCTS, IF APPROPRIATE"
* #200000029873 "11. NAME AND ADDRESS OF THE MARKETING AUTHORISATION HOLDER"
* #200000029874 "12. MARKETING AUTHORISATION NUMBER(S)"
* #200000029875 "13. BATCH NUMBER<, DONATION AND PRODUCT CODES>"
* #200000029876 "14. GENERAL CLASSIFICATION FOR SUPPLY"
* #200000029877 "15. INSTRUCTIONS ON USE"
* #200000029878 "16. INFORMATION IN BRAILLE"
* #200000029879 "17. UNIQUE IDENTIFIER - 2D BARCODE"
* #200000029880 "18. UNIQUE IDENTIFIER - HUMAN READABLE DATA"
* #200000029881 "MINIMUM PARTICULARS TO APPEAR ON BLISTERS OR STRIPS {NATURE/TYPE}"
* #200000029882 "1. NAME OF THE MEDICINAL PRODUCT"
* #200000029883 "2. NAME OF THE MARKETING AUTHORISATION HOLDER"
* #200000029884 "3. EXPIRY DATE"
* #200000029885 "4. BATCH NUMBER<, DONATION AND PRODUCT CODES>"
* #200000029886 "5. OTHER"
* #200000029887 "MINIMUM PARTICULARS TO APPEAR ON SMALL IMMEDIATE PACKAGING UNITS {NATURE/TYPE}"
* #200000029888 "1. NAME OF THE MEDICINAL PRODUCT AND ROUTE(S) OF ADMINISTRATION"
* #200000029889 "2. METHOD OF ADMINISTRATION"
* #200000029890 "3. EXPIRY DATE"
* #200000029891 "4. BATCH NUMBER<, DONATION AND PRODUCT CODES>"
* #200000029892 "5. CONTENTS BY WEIGHT, BY VOLUME OR BY UNIT"
* #200000029893 "6. OTHER"
* #200000029894 "PACKAGE LEAFLET"
* #200000029895 "1. What X is and what it is used for"
* #200000029896 "2. What you need to know before you <take> <use> X"
* #200000029897 "Do not <take> <use> X"
* #200000029898 "Warnings and precautions"
* #200000029899 "Children <and adolescents>"
* #200000029900 "Other medicines and X"
* #200000029901 "X with <food> <and> <,> <drink> <and> <alcohol>"
* #200000029902 "Pregnancy <and> <,> breast-feeding <and fertility>"
* #200000029903 "Driving and using machines"
* #200000029904 "X contains {name the excipient(s)}"
* #200000029905 "3. How to <take> <use> X"
* #200000029906 "Use in children <and adolescents>"
* #200000029907 "If you <take> <use> more X than you should"
* #200000029908 "If you forget to <take> <use> X"
* #200000029909 "If you stop <taking> <using> X"
* #200000029910 "4. Possible side effects"
* #200000029911 "Additional side effects in children <and adolescents>"
* #200000029912 "Reporting of side effects"
* #200000029913 "5. How to store X"
* #200000029914 "6. Contents of the pack and other information"
* #200000029915 "What X contains"
* #200000029916 "What X looks like and contents of the pack"
* #200000029917 "Marketing Authorisation Holder and Manufacturer"
* #200000029918 "This medicine is authorised in the Member States of the European Economic Area <and in the United Kingdom (Northern Ireland)> under the following names:"
* #200000029919 "This leaflet was last revised in <{MM/YYYY}><{month YYYY}>."
* #200000029920 "Other sources of information"
* #200000029921 "The following information is intended for healthcare professionals only:"



CodeSystem: EmaSporMaterial
Id: spor-material
Title: "Material EMA SPOR"
Description: "Example (fragment) of the Package material list from the EMA SPOR RMS."
* ^experimental = false
* ^url = "https://spor.ema.europa.eu/v1/lists/200000003199"
* ^caseSensitive = true
* ^status = #draft
* ^content = #example
* #200000025262 "PolyEthylene TerePhthalate Glycol"
* #200000025919 "Titanium Dioxide"
* #200000003205 "Glass type II"
* #200000003205 ^property.code = #parent
* #200000003205 ^property.valueCode = #200000003203
* #200000003206 "Glass type III"
* #200000003206 ^property.code = #parent
* #200000003206 ^property.valueCode = #200000003203
* #200000003207 "Paper"
* #200000015521 "PolyEthylene copolymer"
* #200000027028 "Ethylene-Vinyl Acetate"
* #200000003201 "Cyclic Olefin Copolymer"
* #200000003202 "Epoxyphenol"
* #200000003203 "Glass"
* #200000003208 "Plastic"
* #200000003209 "PolyAmide"
* #200000003210 "Orientated PolyAmide"
* #200000003210 ^property.code = #parent
* #200000003210 ^property.valueCode = #200000003209
* #200000003211 "PolyCarbonate"
* #200000003212 "PolyChloroTriFluoroEthylene"
* #200000003213 "Polyester"
* #200000003214 "PolyEthylene"
* #200000003216 "Low Density PolyEthylene"
* #200000003216 ^property.code = #parent
* #200000003216 ^property.valueCode = #200000003214
* #200000003217 "PolyEthylene TerePhthalate"
* #200000003218 "Polyolefin"
* #200000003219 "PolyPropylene"
* #200000003220 "PolyStyrene"
* #200000003221 "PolyVinyl Acetate"
* #200000003222 "PolyVinyl Chloride"
* #200000003223 "Plasticised PolyVinyl Chloride"
* #200000003223 ^property.code = #parent
* #200000003223 ^property.valueCode = #200000003222
* #200000003224 "Non-plasticised PolyVinyl Chloride / Unplasticised PolyVinyl Chloride"
* #200000003224 ^property.code = #parent
* #200000003224 ^property.valueCode = #200000003222
* #200000003225 "PolyVinylidene Chloride"
* #200000003226 "Rubber"

CodeSystem: EmaSporProductCategory
Id: spor-productCategory
Title: "Material EMA SPOR"
Description: "Example (fragment) of the Product Category list from the EMA SPOR RMS."
* ^experimental = false
* ^url = "https://spor.ema.europa.eu/v1/lists/100000155526"
* ^caseSensitive = true
* ^status = #draft
* ^content = #example
* #100000155527	"Chemical Medicinal Product"  "Chemical Medicinal Product"
* #100000155528	"Immunological Medicinal Product"  "Immunological Medicinal Product"
* #100000155529	"Traditional Herbal Medicinal Product"  "Traditional Herbal Medicinal Product"
* #100000155530	"Biological Medicinal Product"  "Biological Medicinal Product"
* #100000155546	"Herbal Medicinal Product"  "Herbal Medicinal Product"
* #100000155547	"Medicinal Product derived from Human Blood or Human Plasma"  "Medicinal Product derived from Human Blood or Human Plasma"
* #100000155548	"Advanced Therapy Medicinal Product"  "Advanced Therapy Medicinal Product"
* #100000155549	"Homeopathic Medicinal Product"  "Homeopathic Medicinal Product"
* #100000155550	"Radiopharmaceutical Medicinal Product"  "Radiopharmaceutical Medicinal Product"
* #100000155551	"List A Biological Medicinal Product"  "List A Biological Medicinal Product"
* #200000032229	"Chemical Generic Medicinal Product"  "Chemical Generic Medicinal Product"
* #200000032241	"Similar Biological Medicinal Product"  "Similar Biological Medicinal Product"


CodeSystem: EmaSporUnitOfPresentation
Id: spor-UnitOfPresentation
Title: "Unit of Presentation EMA SPOR"
Description: "Example (fragment) of the Unit of presentation list from the EMA SPOR RMS."
* ^experimental = false
* ^url = "https://spor.ema.europa.eu/v1/lists/200000000014"
* ^status = #draft
* ^compositional = false
* ^content = #example
* ^caseSensitive = false

* #200000022814 "Other"
* #200000022839 "Test"
* #200000002108 "Barrel"
* #200000002109 "Blister"
* #200000002110 "Block"
* #200000002111 "Bottle"
* #200000002112 "Cachet"
* #200000002113 "Capsule"
* #200000002114 "Cartridge"
* #200000002116 "Container"
* #200000002117 "Cup"
* #200000002118 "Cylinder"
* #200000002120 "Dressing"
* #200000002121 "Drop"
* #200000002122 "Film"
* #200000002123 "Chewing gum"
* #200000002124 "Implant"
* #200000002125 "Inhaler"
* #200000002126 "Insert"
* #200000002127 "Jar"
* #200000002128 "Lozenge"
* #200000002129 "Lyophilisate"
* #200000002130 "Matrix"
* #200000002131 "Pad"
* #200000002133 "Pastille"
* #200000002134 "Patch"
* #200000002135 "Pen"
* #200000002137 "Pessary"
* #200000002138 "Pillule"
* #200000002139 "Pipette"
* #200000002140 "Plaster"
* #200000002141 "Plug"
* #200000002142 "Pouch"
* #200000002143 "Sachet"
* #200000002144 "Sponge"
* #200000002145 "Spoonful"
* #200000002146 "Stick"
* #200000002147 "Straw"
* #200000002148 "Strip"
* #200000002149 "Suppository"
* #200000002150 "Syringe"
* #200000002151 "System"
* #200000002152 "Tablet"
* #200000002154 "Tampon"
* #200000002155 "Thread"
* #200000002156 "Tube"
* #200000002157 "Vessel"
* #200000002158 "Vial"
* #200000002163 "Actuation"
* #200000002164 "Ampoule"
* #200000002165 "Applicator"
* #200000002166 "Bag"
* #200000016445 "Swab"


CodeSystem: EmaSporScope
Id: spor-scope
Title: "Scope EMA SPOR"
Description: "Example (fragment) of the Scope list from the EMA SPOR RMS."
* ^experimental = false
* ^url = "https://spor.ema.europa.eu/v1/lists/100000072055"
* ^status = #draft
* ^compositional = false
* ^content = #example
* ^caseSensitive = false
* #100000072062	"Marketing Authorisation"  "Marketing Authorisation" 
* #100000072064	"Clinical Trial"  "Clinical Trial" 
* #100000072066	"Scientific Opinion"  "Scientific Opinion" 
* #100000072067	"Plasma Master File"  "Plasma Master File" 
* #100000072068	"Vaccine Antigen Master File"  "Vaccine Antigen Master File" 

CodeSystem: EmaSporOrganisationRoleType
Id: spor-organisationRoleType
Title: "Organisation Role Type EMA SPOR"
Description: "Example of the Organisation Role Type list from the EMA SPOR RMS."
* ^experimental = false
* ^url = "https://spor.ema.europa.eu/v1/lists/220000000031"
* ^status = #draft
* ^compositional = false
* ^content = #example
* ^caseSensitive = false
* #200000017729	"Contact Location"  "Contact Location"
* #220000000032	"Medicines Regulatory Authority"  "Medicines Regulatory Authority"
* #220000000033	"Manufacturer"  "Manufacturer"
* #220000000034	"Marketing authorisation holder"  "Marketing authorisation holder"
* #220000000035	"Master File Holder"  "Master File Holder"


/* CodeSystem: Spor
Id: spor
Title: "Code System example for spor.ema.europa.eu-rmswi"
Description: """Code system to allow for example use of spor.ema.europa.eu-rmswi in this IG.
Coded concepts defined for ePI use only."""
* ^experimental = true
* ^caseSensitive = false
* ^url = "https://spor.ema.europa.eu/rmswi"
// * #100000073619
// * #100000072082
// * #200000003222 "PolyVinyl Chloride"
// * #100000155527
// * #100000073496 "Blister"
// * #100000072072
* #100000072062 "Marketing Authorisation"
* #220000000034 "Marketing authorisation holder"
// * #100000155538 "PACKAGE LEAFLET"
/* * #220000000001
* #220000000002
* #220000000003
* #220000000004
* #220000000005 */
// * #100000072084
// * #200000002152
//Alias: $spor-rms = https://spor.ema.europa.eu/rmswi */