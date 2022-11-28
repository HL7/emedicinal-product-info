
Instance: compositionSuliqua
InstanceOf: CompositionUvEpi
Title: "Composition for Suliqua Package Leaflet"
Description:  "Composition for Suliqua Package Leaflet"
Usage: #example

* id = "00b9d5fd-39f7-4622-8160-dc48b338af10" 
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
//  * entry[+].fullUrl = 4d57ed2c-7a03-4fef-b0a1-ae92da2268ae
  * entry[+] = Reference(contraindication-hypersensitivityreaction) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 3bb7ca2f-94b3-4657-967a-3efec1b481a0
  * entry[+] = Reference(indication-hypertension) 

  // ClinicalUseDefinition
//  * entry[+].fullUrl = 08e00c8e-a184-4284-9dfb-af1fca472541
  * entry[+] = Reference(interaction-bezafibrat) 
 
 

  // Ingredient
//  * entry[+].fullUrl = 4feb51cb-65ee-418e-b251-1cf43a62a3a6
  * entry[+] = Reference(ingredient-for-suliqua-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = df4d6d30-9f8f-4ec1-aa83-b2bee102f0c4
  * entry[+] = Reference(ingredient-for-suliqua-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = 5eef6ad0-e167-423c-ba89-b39be0bdcf46
  * entry[+] = Reference(ingredient-for-suliqua-glycerol85) 

  // Ingredient
//  * entry[+].fullUrl = 5295a834-9601-4ea4-9c07-40e83809791f
  * entry[+] = Reference(ingredient-for-suliqua-methionine) 

  // Ingredient
//  * entry[+].fullUrl = c2c85f07-dbd4-4df0-bd74-d89f351ea783
  * entry[+] = Reference(ingredient-for-suliqua-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 651bede5-c6e4-4277-8692-e195495a2ed4
  * entry[+] = Reference(ingredient-for-suliqua-zincchloride) 

  // Ingredient
//  * entry[+].fullUrl = 57111443-b153-4db4-ae92-092d4b70e31b
  * entry[+] = Reference(ingredient-for-suliqua-concentratedhydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = 3051b60c-c3f3-4778-af3f-90abfe20ae16
  * entry[+] = Reference(ingredient-for-suliqua-waterforinjections) 

  // Ingredient
//  * entry[+].fullUrl = 4892cab3-40b1-4cb2-9a23-bc73b22c64a4
  * entry[+] = Reference(ingredient-for-suliqua-sodiumhydroxide) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = 60fa600c-99f2-49c8-bb13-802281e43254
  * entry[+] = Reference(ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 4cb80895-d470-4fce-83dc-4b11158c1006
  * entry[+] = Reference(authorizationsuliqua100unitsml50microgrammlsolutionforinjectioninaprefilledpen) 
 

  // Organization
//  * entry[+].fullUrl = f17fe898-2e45-449e-9f4a-65083e5b2ed8
  * entry[+] = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua) 

  // Organization
//  * entry[+].fullUrl = ca5f0350-89ca-43c6-a7ac-4b77d5238a96
  * entry[+] = Reference(org-manufacturerapi-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = b5b41b85-0c3d-4e46-8503-72302da19bdf
  * entry[+] = Reference(org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-suliqua) 

  // Organization
//  * entry[+].fullUrl = 7acb6663-7259-4688-a576-fd1516f121c9
  * entry[+] = Reference(org-medicinesregulatoryauthority-europeanmedicinesagency-suliqua) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 653be62d-5558-438e-ae86-a8918ccf3b4c
  * entry[+] = Reference(ppd-3mlcartridgeglassinaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = dcccd62b-c857-4504-ab19-7c8928d4a7a7
  * entry[+] = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 8e0c87f0-4409-4b70-8f5f-837746a89de5
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