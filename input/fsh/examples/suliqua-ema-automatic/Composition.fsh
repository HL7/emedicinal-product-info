
Instance: compositionSuliqua
InstanceOf: CompositionUvEpi
Title: "Composition for Suliqua Package Leaflet"
Description:  "Composition for Suliqua Package Leaflet"
Usage: #example

* id = "4289dba7-aa89-41cd-9f50-924cc81b0438" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)
* date = "2022-02-16T13:28:17Z"
* author = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua)

* title = "TEST PURPOSES ONLY - Suliqua Vulcan ePI"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 7ecb17f8-84a2-4a04-9ef5-a8e18a184bf8
  * entry[+] = Reference(contraindication-hypersensitivityreaction) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 6324ddbf-17cb-4658-98a8-d500c57f11ca
  * entry[+] = Reference(indication-hypertension) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = c453790d-bba6-400e-ad52-ee5c9c600c60
  * entry[+] = Reference(interaction-bezafibrat) 
 
 

  // Ingredient
//  * entry[+].fullUrl = 4b6c3f19-2727-45b9-a9b6-e2cf0bd2a4a4
  * entry[+] = Reference(ingredient-for-suliqua-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = d32ac7bd-90ee-49c4-a1da-667c3641b848
  * entry[+] = Reference(ingredient-for-suliqua-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = 45b742b3-47ad-4d9f-919f-6b5fb10b21fa
  * entry[+] = Reference(ingredient-for-suliqua-glycerol85) 

  // Ingredient
//  * entry[+].fullUrl = 2a6b1c77-5ffa-40be-a2af-ab5109410a9d
  * entry[+] = Reference(ingredient-for-suliqua-methionine) 

  // Ingredient
//  * entry[+].fullUrl = d9d60abc-13a6-4f5a-8d6b-39783da8f343
  * entry[+] = Reference(ingredient-for-suliqua-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = f988df16-856b-4709-904a-b606c4797379
  * entry[+] = Reference(ingredient-for-suliqua-zincchloride) 

  // Ingredient
//  * entry[+].fullUrl = bfdf8e8a-a143-4b9b-9ac6-0e9ef7430426
  * entry[+] = Reference(ingredient-for-suliqua-concentratedhydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = e2854a87-1943-44f9-8618-b455d5ab8757
  * entry[+] = Reference(ingredient-for-suliqua-waterforinjections) 

  // Ingredient
//  * entry[+].fullUrl = cdacc662-be2e-4a6a-8610-457a6281a5eb
  * entry[+] = Reference(ingredient-for-suliqua-sodiumhydroxide) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = 0727e2fa-06b9-4809-b89d-a0928d5e3865
  * entry[+] = Reference(ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 208a1f78-5347-400b-8c27-e809b7c81dbe
  * entry[+] = Reference(authorizationsuliqua100unitsml50microgrammlsolutionforinjectioninaprefilledpen) 
 

  // Organization
//  * entry[+].fullUrl = 4cea4c8b-fbbe-429d-bc76-866eef94955c
  * entry[+] = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua) 

  // Organization
//  * entry[+].fullUrl = 2e7ebb55-7254-445b-b0d0-0ed8146fddf7
  * entry[+] = Reference(org-manufacturerapi-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 5a3e9d4e-5fe3-4b8d-9d13-ad7ecaaf20d5
  * entry[+] = Reference(org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 767ed6fc-910f-4a7d-8e31-b7e8120b37ed
  * entry[+] = Reference(org-medicinesregulatoryauthority-europeanmedicinesagency-suliqua) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 7cbd14d1-7cb4-4785-83fe-a9d909be7ec8
  * entry[+] = Reference(ppd-3mlcartridgeglassinaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = a59f72e1-a5f4-4ce6-a673-5f44f8fe8df8
  * entry[+] = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 2f7c703e-98f8-46ae-afeb-42a729fd1a30
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