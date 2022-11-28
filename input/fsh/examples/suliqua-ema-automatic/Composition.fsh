
Instance: compositionSuliqua
InstanceOf: CompositionUvEpi
Title: "Composition for Suliqua Package Leaflet"
Description:  "Composition for Suliqua Package Leaflet"
Usage: #example

* id = "2fc7e6d1-f7e3-4223-acd2-f6232e1e6d54" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(Suliqua100units/ml+50micrograms/mlsolutionforinjectioninapre-filledpen)
* date = "2022-02-16T13:28:17Z"
* author = Reference(marketingauthorisationholder-sanofi-aventisgroupe-suliqua)

* title = "TEST PURPOSES ONLY - Suliqua Vulcan ePI"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 3f59a272-23f3-4e78-a4eb-56ecdba0f770
  * entry[+] = Reference(contraindication-hypersensitivityreaction) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = de27d445-8b4d-474b-8acf-cfb1107b0f74
  * entry[+] = Reference(indication-hypertension) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = b0f4d667-bc1d-463b-87f3-81eb2c1ee6ce
  * entry[+] = Reference(interaction-bezafibrat) 
 
 

  // Ingredient
//  * entry[+].fullUrl = c9953c00-0a59-47ed-99fc-626bcac49c70
  * entry[+] = Reference(ingredient-for-suliqua-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = c65d829d-0142-45f0-8fc2-954f266b8f0f
  * entry[+] = Reference(ingredient-for-suliqua-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = c72c0b2e-b9bd-4512-a8a1-6160cf2ef072
  * entry[+] = Reference(ingredient-for-suliqua-glycerol85) 

  // Ingredient
//  * entry[+].fullUrl = bae53c28-c126-4886-be49-0c12db852e85
  * entry[+] = Reference(ingredient-for-suliqua-methionine) 

  // Ingredient
//  * entry[+].fullUrl = f64c14b9-fe07-42d2-b7e9-dbf57d47e32f
  * entry[+] = Reference(ingredient-for-suliqua-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 25a5957a-ed23-44a7-b5bd-8dca58e6de78
  * entry[+] = Reference(ingredient-for-suliqua-zincchloride) 

  // Ingredient
//  * entry[+].fullUrl = 2c2f1842-84e4-4e18-b6d7-dd3264fb1150
  * entry[+] = Reference(ingredient-for-suliqua-concentratedhydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = 6690053a-fecc-4fc2-a247-10399b22753f
  * entry[+] = Reference(ingredient-for-suliqua-waterforinjections) 

  // Ingredient
//  * entry[+].fullUrl = 02c66837-4d05-425e-853d-e28c063a1ae3
  * entry[+] = Reference(ingredient-for-suliqua-sodiumhydroxide) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = cc81f083-40fb-4de3-8950-aeb3d4cf4606
  * entry[+] = Reference(adminproductsuliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = a842129e-7b89-4082-b245-6a2466f85e73
  * entry[+] = Reference(authorizationsuliqua100units/ml+50microgram/mlsolutionforinjectioninapre-filledpen) 
 

  // Organization
//  * entry[+].fullUrl = dcd39619-37ba-43b4-97f9-3219653315c4
  * entry[+] = Reference(marketingauthorisationholder-sanofi-aventisgroupe-suliqua) 

  // Organization
//  * entry[+].fullUrl = 8c88a2fb-e8cb-4e04-af62-b7b38d7f4560
  * entry[+] = Reference(manufacturerapi-sanofi-aventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = cb740756-c762-43ae-8e7a-d296e4d447a7
  * entry[+] = Reference(manufacturerbatchrelease-sanofi-aventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 3c3cf920-92be-4506-b599-bb9d0bdcfc2b
  * entry[+] = Reference(medicinesregulatoryauthority-europeanmedicinesagency-suliqua) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = b1690558-c82c-4c3d-b918-98978c113f0d
  * entry[+] = Reference(3mlcartridge(glass)inapre-filledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = 5e55623d-87fe-4ac8-872a-97a3be4c7094
  * entry[+] = Reference(Suliqua100units/ml+50micrograms/mlsolutionforinjectioninapre-filledpen) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 0c8100d9-2901-4d2b-aaa6-0e9c6f0079d8
  * entry[+] = Reference(suliqua100units/ml+33micrograms/mlsolutionforinjectioninx3pre-filledpens) 
   




* section[+].
  * title = "Narrative Text"
  * code.text = "Narrative"

  * section[+].
    * title = "B. Package Leaflet"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "B. PACKAGE LEAFLET"
    * text.status = #additional
    
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable   


        
  * section[=].section[+]
    * title = "Package leaflet: Information for the user"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "Package leaflet: Information for the user"
    * text.status = #additional
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
PACKAGE LEAFLET: INFORMATION FOR THE USER
Humalog Mix50 100 units/ml suspension for injection in cartridge
insulin lispro
Read all of this leaflet carefully before you start taking this medicine because it contains important information for you.
<ul>
  <li> Keep this leaflet. You may need to read it again. </li>
  <li> If you have any further questions, ask your doctor or pharmacist. </li>
  <li> This medicine has been prescribed for you only. Do not pass it on to others. It may harm them, even if their signs of illness are the same as yours. </li>
  <li> If you get any side effects talk to your doctor or pharmacist. This includes any possible side effects not listed in this leaflet. See section 4. </li>
</ul>
</div>"""   

  * section[=].section[+]
    * title = "What is in this leaflet"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "What is in this leaflet"
    * text.status = #additional
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
What in this leaflet
<ol>
  <li>What Humalog Mix50 is and what it is used for</li>
  <li>What you need to know before you take Humalog Mix50</li>
  <li>How to take Humalog Mix50</li>
  <li>Possible side effects</li>
  <li>How to store Humalog Mix50</li>
  <li>Contents of the pack and other information</li>
</ol>
</div>"""             

  * section[=].section[+]
    * title = "1. What Suliqua is and what it is used for"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "1. What Suliqua is and what it is used for"
    * text.status = #additional
    
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable              
  * section[=].section[+]
    * title = "2. What you need to know before you take Suliqua"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "2. What you need to know before you take Suliqua"
    * text.status = #additional
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. What you need to know before you use Humalog Mix50</b>
Do NOT use Humalog Mix50 if you
</div>"""              
  * section[=].section[+]
    * title = "3. How to take Suliqua"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take Suliqua"
    * text.status = #additional
          
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>3. How to use Humalog Mix50</b>
<b>The 3 ml cartridge is only for use in Lilly 3 ml pens. It is not for use in 1.5 ml pens.</b>
<p>Always use Humalog Mix50 exactly as your doctor has told you. You should check with your doctor
if you are not sure. To prevent the possible transmission of disease, each cartridge must be used by
you only, even if the needle on the delivery device is changed.</p>
</div>"""          

          
  * section[=].section[+]
    * title = "4. Possible side effects"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "4. Possible side effects"
    * text.status = #additional
                
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<p><b>4. Possible side effects</b></p>
<p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p>
</div>"""   
          
  * section[=].section[+]
    * title = "5. How to store Suliqua"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store Suliqua"
    * text.status = #additional
                 
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Keep this medicine out of the sight and reach of children.</p>
            <p>
                Do not use this medicine after the expiry date which is stated on the carton and on the blister after EXP. The expiry date refers to the last day of that month.
            </p>
            <p>Do not store above 30°C.</p>
            <p>Do not throw away any medicines via wastewater or household waste. Ask your pharmacist how to throw away of medicines you no longer use. These measures will help protect the environment.
            </p>
        </div>"""   
          
  * section[=].section[+]
    * title = "6. Contents of the pack and other information"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "6. Contents of the pack and other information"
    * text.status = #additional
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>6. Contents of the pack and other information</b>
<b>What Humalog Mix50 100 units/ml suspension for injection in cartridge contains</b>
<p>The active substance is insulin lispro. Insulin lispro is made in the laboratory by a ‘recombinant
DNA technology’ process. It is a changed form of human insulin and so is different from other
human and animal insulins. Insulin lispro is closely related to human insulin which is a natural
hormone made by the pancreas.
The other ingredients are protamine sulphate, m-cresol, phenol, glycerol, dibasic sodium
phosphate 7H2O, zinc oxide and water for injection. Sodium hydroxide or hydrochloric acid
may have been used to adjust the acidity.</p>
</div>"""