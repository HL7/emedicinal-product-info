
Instance: compositionSuliqua
InstanceOf: CompositionUvEpi
Title: "Composition for Suliqua Package Leaflet"
Description:  "Composition for Suliqua Package Leaflet"
Usage: #example

* id = "7601aaa3-5629-40ed-a8e0-e4c8d6be27d7" 
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
//  * entry[+].fullUrl = 9294b7b0-15d8-4ff1-b036-57a9b0b84eaa
  * entry[+] = Reference(contraindication-hypersensitivityreaction) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 6adc51c7-c775-4331-bef4-c14f409e281a
  * entry[+] = Reference(indication-hypertension) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = a8ff539e-baf7-41bd-8e19-7161a4ab20e6
  * entry[+] = Reference(interaction-bezafibrat) 
 
 

  // Ingredient
//  * entry[+].fullUrl = 46aea244-d651-496c-8b10-a8d389e7df83
  * entry[+] = Reference(ingredient-for-suliqua-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = 244effda-fba0-4fed-8e77-52cac0136f22
  * entry[+] = Reference(ingredient-for-suliqua-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = f42b037f-07b3-4322-96fa-06083cc41716
  * entry[+] = Reference(ingredient-for-suliqua-glycerol85whodd) 

  // Ingredient
//  * entry[+].fullUrl = 857e40a2-07b8-4a12-a6d0-cb37a447d012
  * entry[+] = Reference(ingredient-for-suliqua-methionine) 

  // Ingredient
//  * entry[+].fullUrl = 665a56b3-ecb0-42a2-a979-d6297b9dccdc
  * entry[+] = Reference(ingredient-for-suliqua-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = cc1482a0-a1e9-4cdd-a0c6-07d9fbe1029c
  * entry[+] = Reference(ingredient-for-suliqua-zincchloride) 

  // Ingredient
//  * entry[+].fullUrl = 948fa135-3aa1-40b9-a657-f83fe8abaadd
  * entry[+] = Reference(ingredient-for-suliqua-hydrochloricacidiarc) 

  // Ingredient
//  * entry[+].fullUrl = 7298d284-1449-47be-bd6b-268cae0dc5b9
  * entry[+] = Reference(ingredient-for-suliqua-sterilewaterforinjection) 

  // Ingredient
//  * entry[+].fullUrl = 32d70d75-7f4f-4f43-934a-45388d195be8
  * entry[+] = Reference(ingredient-for-suliqua-sodiumhydroxide) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = 3f8e1330-debd-4acb-be26-dc83f38c4951
  * entry[+] = Reference(ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 0774ccd5-c428-4693-86c5-932f3a94cf83
  * entry[+] = Reference(authorizationsuliqua100unitsml50microgrammlsolutionforinjectioninaprefilledpen) 
 

  // Organization
//  * entry[+].fullUrl = 2185b7b7-3e74-4db7-9b0e-4a3e226d1c77
  * entry[+] = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua) 

  // Organization
//  * entry[+].fullUrl = 6860f877-c64c-49aa-a29c-5fa71db04f30
  * entry[+] = Reference(org-manufacturerapi-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 2f5a1ef3-534b-439c-966f-9fb45f446fbe
  * entry[+] = Reference(org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = e96c3299-81d8-4708-afb2-e40a401189c3
  * entry[+] = Reference(org-medicinesregulatoryauthority-europeanmedicinesagency-suliqua) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 5f379971-fe92-46a8-8c6f-52656b80541a
  * entry[+] = Reference(ppd-3mlcartridgeglassinaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = 15aa8e1a-d4fb-4f08-b919-5987addc06e8
  * entry[+] = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = fa26d5af-9d02-4a74-8f68-5341250aeee3
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