
Instance: compositionSuliqua
InstanceOf: CompositionUvEpi
Title: "Composition for Suliqua Package Leaflet"
Description:  "Composition for Suliqua Package Leaflet"
Usage: #example

* id = "72404b58-0555-480a-a916-1e31b1f63548" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)
* date = "2022-02-16T13:28:17Z"
* author = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua)

* title = "TEST PURPOSES ONLY - Suliqua"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 4244a8bb-0856-4407-8db3-0460b4236e7f
  * entry[+] = Reference(contraindication-hypersensitivityreaction) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = b967a890-71d3-4b7d-8394-efc79c08bc5f
  * entry[+] = Reference(indication-hypertension) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = f5767aae-b3f0-4120-bd8e-62c1c8ca68cd
  * entry[+] = Reference(interaction-bezafibrat) 
 
 

  // Ingredient
//  * entry[+].fullUrl = 00d99053-7673-40de-abf8-3e4798cabe9f
  * entry[+] = Reference(ingredient-for-suliqua-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = 40fab8ea-9816-4533-9c02-a90731f1f193
  * entry[+] = Reference(ingredient-for-suliqua-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = c6a5190f-fb33-45c0-a0b5-78303ed6e816
  * entry[+] = Reference(ingredient-for-suliqua-glycerol85whodd) 

  // Ingredient
//  * entry[+].fullUrl = 7f0d2f20-fdcc-4d63-8f34-2d5049ca1e2a
  * entry[+] = Reference(ingredient-for-suliqua-methionine) 

  // Ingredient
//  * entry[+].fullUrl = f1f5a97f-1529-4828-9bb3-6feb7055bba2
  * entry[+] = Reference(ingredient-for-suliqua-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 804e69c5-3a5f-4c5b-ad2a-4659bd5714e5
  * entry[+] = Reference(ingredient-for-suliqua-zincchloride) 

  // Ingredient
//  * entry[+].fullUrl = 2f667e27-231a-465a-8542-051c6dc37025
  * entry[+] = Reference(ingredient-for-suliqua-hydrochloricacidiarc) 

  // Ingredient
//  * entry[+].fullUrl = 3775d126-600b-4d74-8500-905a4757304b
  * entry[+] = Reference(ingredient-for-suliqua-sterilewaterforinjection) 

  // Ingredient
//  * entry[+].fullUrl = ab7101b1-434c-4c23-b84a-6c2d617c0051
  * entry[+] = Reference(ingredient-for-suliqua-sodiumhydroxide) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = a3fcfe41-7999-49ca-88aa-eff1d53e17e8
  * entry[+] = Reference(ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 7be1cab4-25e8-41b9-a62e-d46e67281390
  * entry[+] = Reference(authorizationsuliqua100unitsml50microgrammlsolutionforinjectioninaprefilledpen) 
 

  // Organization
//  * entry[+].fullUrl = 2b574902-ec65-4e5e-acb6-179a79108a04
  * entry[+] = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua) 

  // Organization
//  * entry[+].fullUrl = b69a6514-2412-48d5-a22f-59a7ae0725f9
  * entry[+] = Reference(org-manufacturerapi-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 97b16302-ca8b-4ae9-adc4-b3ec5e31c942
  * entry[+] = Reference(org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 582fdd19-1c62-4c2d-994d-eda18abab2b3
  * entry[+] = Reference(org-medicinesregulatoryauthority-europeanmedicinesagency-suliqua) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 22a87fa1-e146-46bd-9a61-e9641dc26450
  * entry[+] = Reference(ppd-3mlcartridgeglassinaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = 3c5f668f-e469-4c59-b52e-b4daaee58642
  * entry[+] = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = ab509fee-504f-4a7b-99c5-9e815089a705
  * entry[+] = Reference(mid-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens) 
   




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
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
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
</div>         </div>"""   

  * section[=].section[+]
    * title = "What is in this leaflet"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "What is in this leaflet"
    * text.status = #additional
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
What in this leaflet
<ol>
  <li>What Humalog Mix50 is and what it is used for</li>
  <li>What you need to know before you take Humalog Mix50</li>
  <li>How to take Humalog Mix50</li>
  <li>Possible side effects</li>
  <li>How to store Humalog Mix50</li>
  <li>Contents of the pack and other information</li>
</ol>
</div>         </div>"""             

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
       

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. What you need to know before you use Humalog Mix50</b>
Do NOT use Humalog Mix50 if you
</div>         </div>"""              
  * section[=].section[+]
    * title = "3. How to take Suliqua"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take Suliqua"
    * text.status = #additional
          
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
<b>3. How to use Humalog Mix50</b>
<b>The 3 ml cartridge is only for use in Lilly 3 ml pens. It is not for use in 1.5 ml pens.</b>
<p>Always use Humalog Mix50 exactly as your doctor has told you. You should check with your doctor
if you are not sure. To prevent the possible transmission of disease, each cartridge must be used by
you only, even if the needle on the delivery device is changed.</p>
</div>         </div>"""          

          
  * section[=].section[+]
    * title = "4. Possible side effects"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "4. Possible side effects"
    * text.status = #additional
                
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
<p><b>4. Possible side effects</b></p>
<p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p>
</div>         </div>"""   
          
  * section[=].section[+]
    * title = "5. How to store Suliqua"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store Suliqua"
    * text.status = #additional
                 
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Keep this medicine out of the sight and reach of children.</p>
            <p>
                Do not use this medicine after the expiry date which is stated on the carton and on the blister after EXP. The expiry date refers to the last day of that month.
            </p>
            <p>Do not store above 30°C.</p>
            <p>Do not throw away any medicines via wastewater or household waste. Ask your pharmacist how to throw away of medicines you no longer use. These measures will help protect the environment.
            </p>
        </div>         </div>"""   
          
  * section[=].section[+]
    * title = "6. Contents of the pack and other information"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "6. Contents of the pack and other information"
    * text.status = #additional
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
<b>6. Contents of the pack and other information</b>
<b>What Humalog Mix50 100 units/ml suspension for injection in cartridge contains</b>
<p>The active substance is insulin lispro. Insulin lispro is made in the laboratory by a ‘recombinant
DNA technology’ process. It is a changed form of human insulin and so is different from other
human and animal insulins. Insulin lispro is closely related to human insulin which is a natural
hormone made by the pancreas.
The other ingredients are protamine sulphate, m-cresol, phenol, glycerol, dibasic sodium
phosphate 7H2O, zinc oxide and water for injection. Sodium hydroxide or hydrochloric acid
may have been used to adjust the acidity.</p>
</div>         </div>"""