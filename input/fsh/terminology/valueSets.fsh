//==========================
ValueSet: VsMeddra
Id: meddra
Title: "MedDRA Terms for clinical diseases and symptoms"
Description: "MedDRA Terms for clinical diseases and symptoms"
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = false
* codes from system $meddra

//==========================
ValueSet: VsCountry
Id: country
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = false
* codes from valueset http://terminology.hl7.org/ValueSet/v3-Country2

//==========================
ValueSet: VsLanguage
Id: language
Title: "Language (two-letter code)"
Description: "Two-letter language codes from ISO 639-1, used as IETF BCP 47 language tags (e.g., en, fr, ja)."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = false
* $bcp47#aa "Afar"
* $bcp47#ab "Abkhazian"
* $bcp47#ae "Avestan"
* $bcp47#af "Afrikaans"
* $bcp47#ak "Akan"
* $bcp47#am "Amharic"
* $bcp47#an "Aragonese"
* $bcp47#ar "Arabic"
* $bcp47#as "Assamese"
* $bcp47#av "Avaric"
* $bcp47#ay "Aymara"
* $bcp47#az "Azerbaijani"
* $bcp47#ba "Bashkir"
* $bcp47#be "Belarusian"
* $bcp47#bg "Bulgarian"
* $bcp47#bi "Bislama"
* $bcp47#bm "Bambara"
* $bcp47#bn "Bengali"
* $bcp47#bo "Tibetan"
* $bcp47#br "Breton"
* $bcp47#bs "Bosnian"
* $bcp47#ca "Catalan"
* $bcp47#ce "Chechen"
* $bcp47#ch "Chamorro"
* $bcp47#co "Corsican"
* $bcp47#cr "Cree"
* $bcp47#cs "Czech"
* $bcp47#cu "Church Slavic"
* $bcp47#cv "Chuvash"
* $bcp47#cy "Welsh"
* $bcp47#da "Danish"
* $bcp47#de "German"
* $bcp47#dv "Divehi"
* $bcp47#dz "Dzongkha"
* $bcp47#ee "Ewe"
* $bcp47#el "Modern Greek (1453-)"
* $bcp47#en "English"
* $bcp47#eo "Esperanto"
* $bcp47#es "Spanish"
* $bcp47#et "Estonian"
* $bcp47#eu "Basque"
* $bcp47#fa "Persian"
* $bcp47#ff "Fulah"
* $bcp47#fi "Finnish"
* $bcp47#fj "Fijian"
* $bcp47#fo "Faroese"
* $bcp47#fr "French"
* $bcp47#fy "Western Frisian"
* $bcp47#ga "Irish"
* $bcp47#gd "Scottish Gaelic"
* $bcp47#gl "Galician"
* $bcp47#gn "Guarani"
* $bcp47#gu "Gujarati"
* $bcp47#gv "Manx"
* $bcp47#ha "Hausa"
* $bcp47#he "Hebrew"
* $bcp47#hi "Hindi"
* $bcp47#ho "Hiri Motu"
* $bcp47#hr "Croatian"
* $bcp47#ht "Haitian"
* $bcp47#hu "Hungarian"
* $bcp47#hy "Armenian"
* $bcp47#hz "Herero"
* $bcp47#ia "Interlingua (International Auxiliary Language Association)"
* $bcp47#id "Indonesian"
* $bcp47#ie "Interlingue"
* $bcp47#ig "Igbo"
* $bcp47#ii "Sichuan Yi"
* $bcp47#ik "Inupiaq"
* $bcp47#io "Ido"
* $bcp47#is "Icelandic"
* $bcp47#it "Italian"
* $bcp47#iu "Inuktitut"
* $bcp47#ja "Japanese"
* $bcp47#jv "Javanese"
* $bcp47#ka "Georgian"
* $bcp47#kg "Kongo"
* $bcp47#ki "Kikuyu"
* $bcp47#kj "Kuanyama"
* $bcp47#kk "Kazakh"
* $bcp47#kl "Kalaallisut"
* $bcp47#km "Khmer"
* $bcp47#kn "Kannada"
* $bcp47#ko "Korean"
* $bcp47#kr "Kanuri"
* $bcp47#ks "Kashmiri"
* $bcp47#ku "Kurdish"
* $bcp47#kv "Komi"
* $bcp47#kw "Cornish"
* $bcp47#ky "Kirghiz"
* $bcp47#la "Latin"
* $bcp47#lb "Luxembourgish"
* $bcp47#lg "Ganda"
* $bcp47#li "Limburgan"
* $bcp47#ln "Lingala"
* $bcp47#lo "Lao"
* $bcp47#lt "Lithuanian"
* $bcp47#lu "Luba-Katanga"
* $bcp47#lv "Latvian"
* $bcp47#mg "Malagasy"
* $bcp47#mh "Marshallese"
* $bcp47#mi "Maori"
* $bcp47#mk "Macedonian"
* $bcp47#ml "Malayalam"
* $bcp47#mn "Mongolian"
* $bcp47#mr "Marathi"
* $bcp47#ms "Malay (macrolanguage)"
* $bcp47#mt "Maltese"
* $bcp47#my "Burmese"
* $bcp47#na "Nauru"
* $bcp47#nb "Norwegian Bokmål"
* $bcp47#nd "North Ndebele"
* $bcp47#ne "Nepali (macrolanguage)"
* $bcp47#ng "Ndonga"
* $bcp47#nl "Dutch"
* $bcp47#nn "Norwegian Nynorsk"
* $bcp47#no "Norwegian"
* $bcp47#nr "South Ndebele"
* $bcp47#nv "Navajo"
* $bcp47#ny "Chichewa"
* $bcp47#oc "Occitan (post 1500)"
* $bcp47#oj "Ojibwa"
* $bcp47#om "Oromo"
* $bcp47#or "Oriya (macrolanguage)"
* $bcp47#os "Ossetian"
* $bcp47#pa "Panjabi"
* $bcp47#pi "Pali"
* $bcp47#pl "Polish"
* $bcp47#ps "Pushto"
* $bcp47#pt "Portuguese"
* $bcp47#qu "Quechua"
* $bcp47#rm "Romansh"
* $bcp47#rn "Rundi"
* $bcp47#ro "Romanian"
* $bcp47#ru "Russian"
* $bcp47#rw "Kinyarwanda"
* $bcp47#sa "Sanskrit"
* $bcp47#sc "Sardinian"
* $bcp47#sd "Sindhi"
* $bcp47#se "Northern Sami"
* $bcp47#sg "Sango"
* $bcp47#sh "Serbo-Croatian"
* $bcp47#si "Sinhala"
* $bcp47#sk "Slovak"
* $bcp47#sl "Slovenian"
* $bcp47#sm "Samoan"
* $bcp47#sn "Shona"
* $bcp47#so "Somali"
* $bcp47#sq "Albanian"
* $bcp47#sr "Serbian"
* $bcp47#ss "Swati"
* $bcp47#st "Southern Sotho"
* $bcp47#su "Sundanese"
* $bcp47#sv "Swedish"
* $bcp47#sw "Swahili (macrolanguage)"
* $bcp47#ta "Tamil"
* $bcp47#te "Telugu"
* $bcp47#tg "Tajik"
* $bcp47#th "Thai"
* $bcp47#ti "Tigrinya"
* $bcp47#tk "Turkmen"
* $bcp47#tl "Tagalog"
* $bcp47#tn "Tswana"
* $bcp47#to "Tonga (Tonga Islands)"
* $bcp47#tr "Turkish"
* $bcp47#ts "Tsonga"
* $bcp47#tt "Tatar"
* $bcp47#tw "Twi"
* $bcp47#ty "Tahitian"
* $bcp47#ug "Uighur"
* $bcp47#uk "Ukrainian"
* $bcp47#ur "Urdu"
* $bcp47#uz "Uzbek"
* $bcp47#ve "Venda"
* $bcp47#vi "Vietnamese"
* $bcp47#vo "Volapük"
* $bcp47#wa "Walloon"
* $bcp47#wo "Wolof"
* $bcp47#xh "Xhosa"
* $bcp47#yi "Yiddish"
* $bcp47#yo "Yoruba"
* $bcp47#za "Zhuang"
* $bcp47#zh "Chinese"
* $bcp47#zu "Zulu"

//==========================
ValueSet: VsPropertyColor
Id: propertyColor
Title: "Color of the product (FDA SPL example)"
Description: "Example color codes: the NCI Thesaurus terms used for COLOR in FDA Structured Product Labeling (SPL). Regulators may use their own lists, such as EMA SPOR RMS."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
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
Title: "Flavor of the product (FDA SPL example)"
Description: "Example flavor codes: the NCI Thesaurus terms used for FLAVOR in FDA Structured Product Labeling (SPL). Regulators may use their own lists, such as EMA SPOR RMS."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
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
Title: "Shape of the product (FDA SPL example)"
Description: "Example shape codes: the NCI Thesaurus terms used for SHAPE in FDA Structured Product Labeling (SPL). Regulators may use their own lists, such as EMA SPOR RMS."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
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
* $ncithesaurus#C48346	"PENTAGON (5 sided)"		
* $ncithesaurus#C48347	"RECTANGLE"
* $ncithesaurus#C48348	"ROUND"
* $ncithesaurus#C48349	"SEMI-CIRCLE"
* $ncithesaurus#C48350	"SQUARE"
* $ncithesaurus#C48351	"TEAR"
* $ncithesaurus#C48352	"TRAPEZOID"
* $ncithesaurus#C48353	"TRIANGLE"

//==========================
ValueSet: VsSubstance
Id: substance
Title: "Substances (UNII example)"
Description: "Example substance codes: Unique Ingredient Identifiers (UNII) from the FDA Global Substance Registration System (GSRS). Regulators may use their own substance lists, such as EMA SPOR SMS."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = false
* include codes from system $ginas

//=========================
ValueSet: VsEpiType
Id: epiType
Title: "ePI Document Type (Example)"
Description: "Example ePI document types. Each regulator populates Composition.type from the document types of its own national drug label templates. This example includes US FDA and EMA document types; Health Canada and Japan (PMDA) document types, and a standalone instructions for use document, are shown with placeholder codes from this IG until published codes are added."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
// US FDA (LOINC)
* $loinc#34391-3	"FDA product label Human prescription drug label"
* $loinc#34390-5	"FDA product label Human OTC drug label"
// EMA (SPOR RMS document types)
* $spor-rms#100000155532 "Summary of Product Characteristics"
* $spor-rms#100000155538 "Package Leaflet"
* $spor-rms#100000155535 "Labelling"
* $spor-rms#100000155533 "Annex II"
// Health Canada and Japan (placeholders until official codes are added)
* EpiDocumentTypeExampleCS#hc-product-monograph "Product Monograph (Health Canada)"
* EpiDocumentTypeExampleCS#hc-patient-medication-information "Patient Medication Information (Health Canada)"
* EpiDocumentTypeExampleCS#jp-rx-package-insert "Package insert for prescription drugs (Japan)"
* EpiDocumentTypeExampleCS#jp-patient-drug-guide "Drug guide for patients (Japan)"
// Instructions for use (placeholder until a regulator code is added)
* EpiDocumentTypeExampleCS#instructions-for-use "Instructions for use"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

CodeSystem: EpiDocumentTypeExampleCS
Id: epi-document-type-example
Title: "ePI Document Type Placeholder Codes (Example)"
Description: "Placeholder document type codes used in the example ePI Document Type value set for regulators whose official document type codes are not yet included in this IG, and for document types such as a standalone instructions for use that have no published code yet. Not for production use: use the regulator's own code system."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #hc-product-monograph "Product Monograph (Health Canada)" "The Health Canada product monograph for health care professionals."
* #hc-patient-medication-information "Patient Medication Information (Health Canada)" "The Health Canada patient medication information for patients and caregivers."
* #jp-rx-package-insert "Package insert for prescription drugs (Japan)" "The Japanese package insert for a prescription drug, for health care professionals."
* #jp-patient-drug-guide "Drug guide for patients (Japan)" "The Japanese drug guide for patients."
* #instructions-for-use "Instructions for use" "Step-by-step instructions for patients and caregivers on how to prepare, use, store and dispose of a medicinal product or its administration device, published as a standalone document."

//==========================
ValueSet: EpiClinicalUseDefinitionCategory
Id: epi-clinical-use-definition-category
Title: "ePI Clinical Use Definition Category"
Description: "Categories used by this IG to group clinical use definitions. The ePI use case calls for codings other than the FHIR core preferred value set (Pregnancy, Overdose, DriveAndMachines), which a preferred binding allows. The ePI ClinicalUseDefinition profiles reference this value set as an additional (candidate) binding on category."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $epi-ig#indication "Indication"
* $epi-ig#contraindication "Contraindication"
* $epi-ig#interaction "Interaction"
* $epi-ig#undesirable-effect "Undesirable effect"
* $epi-ig#warning "Warning"

//==========================
ValueSet: EpiCompositionStatus
Id: epi-composition-status
Title: "ePI Composition Status"
Description: "Lifecycle states of an ePI document, as described on the Version Control page."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = false
* http://hl7.org/fhir/composition-status#preliminary "Preliminary"
* http://hl7.org/fhir/composition-status#final "Final"
* http://hl7.org/fhir/composition-status#deprecated "Deprecated"
* http://hl7.org/fhir/composition-status#cancelled "Cancelled"
* http://hl7.org/fhir/composition-status#entered-in-error "Entered in Error"


//==========================
ValueSet: VsSectionCode
Id: sectionCode
Title: "Section Codes (Example)"
Description: "Example section codes. Section codes are country specific: each regulator populates Composition.section.code from the headings of its own national drug label templates. This example uses LOINC section codes."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = false
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

* $loinc#34086-9 "FDA package insert Abuse section"
* $loinc#60555-0 "FDA package insert Accessories"
* $loinc#34084-4 "FDA package insert Adverse reactions section"
* $loinc#69761-5 "FDA package insert Alarms"
* $loinc#34091-9 "FDA package insert Animal pharmacology/toxicology section"
* $loinc#60556-8 "FDA package insert Assembly or installation instructions"
* $loinc#34066-1 "FDA package insert Boxed warning section"
* $loinc#60557-6 "FDA package insert Calibration instructions"
* $loinc#34083-6 "FDA package insert Carcinogenesis and mutagenesis and impairment of fertility section"
* $loinc#34090-1 "FDA package insert Clinical pharmacology section"
* $loinc#60558-4 "FDA package insert Cleaning, disinfecting, and sterilization instructions"
* $loinc#34092-7 "FDA package insert Clinical studies section"
* $loinc#90374-0 "FDA package insert Clinical trials experience section"
* $loinc#69760-7 "FDA package insert Compatible accessories"
* $loinc#60559-2 "FDA package insert Components"
* $loinc#34070-3 "FDA package insert Contraindications section"
* $loinc#34085-1 "FDA package insert Controlled substance section"
* $loinc#34087-7 "FDA package insert Dependence section"
* $loinc#34089-3 "FDA package insert Description section"
* $loinc#69758-1 "FDA package insert Diagram of device"
* $loinc#69763-1 "FDA package insert Disposal and waste handling"
* $loinc#34068-7 "FDA package insert Dosage and administration section"
* $loinc#43678-2 "FDA package insert Dosage forms and strengths section"
* $loinc#34074-5 "FDA package insert Drug/laboratory test interactions section"
* $loinc#42227-9 "FDA package insert Drug abuse and dependence section"
* $loinc#34073-7 "FDA package insert Drug interactions section"
* $loinc#50742-6 "FDA product label Environmental warning section"
* $loinc#77291-3 "FDA package insert Females and males reproductive potential"
* $loinc#50743-4 "FDA product label Food safety warning section"
* $loinc#34072-9 "FDA package insert General precautions section"
* $loinc#34082-8 "FDA package insert Geriatric use section"
* $loinc#50740-0 "FDA product label Guaranteed analysis of feed section"
* $loinc#71744-7 "FDA package insert Health care provider letter"
* $loinc#69719-3 "FDA product label Health claim section"
* $loinc#88829-7 "FDA package insert Hepatic Impairment subsection"
* $loinc#34069-5 "FDA package insert How supplied section"
* $loinc#88830-5 "FDA package insert Immunogenicity"
* $loinc#51727-6 "FDA product label Inactive ingredient section"
* $loinc#34067-9 "FDA package insert Indications and usage section"
* $loinc#50744-2 "FDA product label Information for owners or caregivers section"
* $loinc#34076-0 "FDA package insert Information for patients section"
* $loinc#59845-8 "FDA package insert Instructions for use section"
* $loinc#60560-0 "FDA package insert Intended use of the device"
* $loinc#34079-4 "FDA package insert Labor and delivery section"
* $loinc#34075-2 "FDA package insert Laboratory tests section"
* $loinc#77290-5 "FDA package insert Lactation"
* $loinc#43679-0 "FDA package insert Mechanism of action section"
* $loinc#49489-8 "FDA package insert Microbiology section"
* $loinc#43680-8 "FDA package insert Nonclinical toxicology section"
* $loinc#34078-6 "FDA package insert Nonteratogenic effects section"
* $loinc#34080-2 "FDA package insert Nursing mothers section"
* $loinc#60561-8 "FDA package insert Other safety information"
* $loinc#34088-5 "FDA package insert Overdosage section"
* $loinc#55106-9 "FDA product label OTC - Active ingredient section"
* $loinc#50569-3 "FDA product label OTC - Ask doctor section"
* $loinc#50568-5 "FDA product label OTC - Ask doctor or pharmacist section"
* $loinc#50570-1 "FDA product label OTC - Do not use section"
* $loinc#50565-1 "FDA product label OTC - Keep out of reach of children section"
* $loinc#53414-9 "FDA product label OTC - Pregnancy or breast feeding section"
* $loinc#55105-1 "FDA product label OTC - Purpose section"
* $loinc#53413-1 "FDA product label OTC - Questions section"
* $loinc#50566-9 "FDA product label OTC - Stop use section"
* $loinc#50567-7 "FDA product label OTC - When using section"
* $loinc#51945-4 "FDA product label Principal display panel of package"
* $loinc#88436-1 "FDA package insert Patient counseling information"
* $loinc#68498-5 "FDA product label Patient medication information section"
* $loinc#34081-0 "FDA package insert Pediatric use section"
* $loinc#43681-6 "FDA package insert Pharmacodynamics section"
* $loinc#66106-6 "FDA package insert Pharmacogenomics section"
* $loinc#43682-4 "FDA package insert Pharmacokinetics section"
* $loinc#90375-7 "FDA package insert Postmarketing experience section"
* $loinc#42232-9 "FDA package insert Precautions section"
* $loinc#42228-7 "FDA package insert Pregnancy section"
* $loinc#43683-2 "FDA package insert Recent major changes section"
* $loinc#34093-5 "FDA package insert References section"
* $loinc#53412-3 "FDA product label Residue warning section"
* $loinc#100382-1 "FDA package insert REMS addressed risk"
* $loinc#87523-7 "FDA package insert REMS administrative information"
* $loinc#87526-0 "FDA package insert REMS applicant requirements"
* $loinc#82344-3 "FDA package insert REMS communication plan"
* $loinc#82348-4 "FDA package insert REMS elements"
* $loinc#82345-0 "FDA package insert REMS elements to assure safe use"
* $loinc#82349-2 "FDA package insert REMS goals"
* $loinc#82350-0 "FDA package insert REMS implementation system"
* $loinc#82346-8 "FDA package insert REMS material"
* $loinc#82598-4 "FDA package insert REMS medication guide"
* $loinc#87525-2 "FDA package insert REMS participant requirements"
* $loinc#87524-5 "FDA package insert REMS requirements"
* $loinc#82347-6 "FDA package insert REMS summary"
* $loinc#82352-6 "FDA package insert REMS timetable for submission assessments"
* $loinc#88828-9 "FDA package insert Renal Impairment subsection"
* $loinc#69759-9 "FDA package insert Risks"
* $loinc#60562-6 "FDA package insert Route, method and frequency of administration"
* $loinc#50741-8 "FDA product label Safe handling warning section"
* $loinc#48779-3 "FDA package insert Structured product labelling indexing data elements section"
* $loinc#48780-1 "FDA package insert Structured product labelling listing data elements section"
* $loinc#42231-1 "FDA package insert Structured product labelling medguide section"
* $loinc#42230-3 "FDA package insert Structured product labelling patient package insert section"
* $loinc#42229-5 "FDA package insert Structured patient labelling unclassified section"
* $loinc#69718-5 "FDA product label Statement of identity section"
* $loinc#44425-7 "FDA package insert Storage and handling section"
* $loinc#60563-4 "FDA package insert Summary of safety and effectiveness"
* $loinc#34077-8 "FDA package insert Teratogenic effects section"
* $loinc#69762-3 "FDA package insert Troubleshooting"
* $loinc#43684-0 "FDA package insert Use in specific populations section"
* $loinc#54433-8 "FDA package insert User safety warnings section"
* $loinc#50745-9 "FDA product label Veterinary indications section"
* $loinc#43685-7 "FDA package insert Warnings and precautions section"
* $loinc#34071-1 "FDA package insert Warnings section"





//==========================
ValueSet: VsClinicalUseDefinitionCategory
Id: clinical-use-definition-category-epi
Title: "ClinicalUseDefinition Category (Example)"
Description: "Example categories used to group ClinicalUseDefinition resources under subject headings in an ePI."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $epi-ig#indication "Indication"
* $epi-ig#contraindication "Contraindication"
* $epi-ig#interaction "Interaction"
* $epi-ig#undesirable-effect "Undesirable effect"
* $epi-ig#warning "Warning"

//==========================
ValueSet: VsPropertySurfaceForm
Id: propertySurfaceForm
Title: "Surface form of the product (Example)"
Description: "Example surface forms of a tablet or other solid item."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system EpiSurfaceFormExampleCS

//==========================
ValueSet: VsMarketingStatus
Id: marketing-status-example
Title: "Marketing Status (EMA SPOR example)"
Description: "Example marketing status codes from the EMA SPOR RMS Marketing Status list (100000072052)."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $spor-rms#100000072083 "Marketed"
* $spor-rms#100000072074 "Not marketed"
* $spor-rms#200000026055 "Never marketed"
* $spor-rms#230000000000 "Temporarily unavailable"
* $spor-rms#100000072075 "No data provided"

//==========================
ValueSet: VsSpecialPrecautionsForStorage
Id: special-precautions-for-storage-example
Title: "Special Precautions for Storage (EMA SPOR example)"
Description: "Example storage precaution codes from the EMA SPOR RMS Special Precautions for Storage list (100000073344)."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $spor-rms#100000073410 "Do not store above 25°C"
* $spor-rms#100000073411 "Do not store above 30°C"
* $spor-rms#100000073412 "Store below 25°C"
* $spor-rms#100000073413 "Store below 30°C"
* $spor-rms#100000073416 "Store in a freezer"
* $spor-rms#100000073417 "Store and transport frozen"
* $spor-rms#100000073420 "Do not freeze"
* $spor-rms#100000073421 "Store in the original package"
* $spor-rms#100000073424 "This medicinal product does not require any special storage conditions"
* $spor-rms#100000073425 "This medicinal product does not require any special temperature storage conditions"
* $spor-rms#100000073432 "Protect from direct sunlight"
* $spor-rms#200000010387 "Protect from heat"
* $spor-rms#200000010388 "Store upright"
* $spor-rms#200000043310 "Do not shake"

//==========================
ValueSet: VsMedicineDomain
Id: medicine-domain-example
Title: "Medicine Domain (EMA SPOR example)"
Description: "Example medicine domain codes from the EMA SPOR RMS Domain list (100000000004)."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $spor-rms#100000000012 "Human use"
* $spor-rms#100000000013 "Veterinary use"
* $spor-rms#100000000014 "Human and Veterinary use"

//==========================
ValueSet: VsDosagePhaseType
Id: dosage-phase-type-example
Title: "Dosage Phase Type (Example)"
Description: "Example kinds of phase in a dosing regimen. Day ranges (e.g., Day 1, Days 2 to 5) are given as text."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system EpiDosagePhaseTypeExampleCS

//==========================
ValueSet: VsIngredientGroup
Id: ingredient-group-example
Title: "Ingredient Group (Example)"
Description: "Example groups for where an ingredient is used in the physical item."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system EpiIngredientGroupExampleCS

//==========================
ValueSet: VsStrengthBasis
Id: strength-basis-example
Title: "Strength Basis (Example)"
Description: "Example codes for the basis of an ingredient strength, from the HL7 v3 RoleClass codes in the RoleClassActiveIngredient value set (http://terminology.hl7.org/ValueSet/v3-RoleClassActiveIngredient). ACTI is left out because it does not state a basis of strength."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $roleclass#ACTIB "active ingredient - basis of strength"
* $roleclass#ACTIM "active ingredient - moiety is basis of strength"
* $roleclass#ACTIR "active ingredient - reference substance is basis of strength"
