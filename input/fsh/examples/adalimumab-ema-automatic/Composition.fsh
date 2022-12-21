
Instance: compositionadalimumab
InstanceOf: CompositionUvEpi
Title: "Composition for adalimumab Package Leaflet"
Description:  "Composition for adalimumab Package Leaflet"
Usage: #example

* id = "b36a5546-37ff-401a-8900-c4c17468c3eb" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(mpadalimumab)
* date = "2022-02-16T13:28:17Z"
* author = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)

* title = "TEST PURPOSES ONLY - adalimumab"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
 
 
 

  // Ingredient
//  * entry[+].fullUrl = 83f4c3b1-3869-4510-a1ca-4bbfe8380534
  * entry[+] = Reference(ingredient-for-adalimumab-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = df12e171-dff8-411a-af99-c010c9303e37
  * entry[+] = Reference(ingredient-for-adalimumab-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = a78806e8-85d0-4487-8729-01bf5647010d
  * entry[+] = Reference(ingredient-for-adalimumab-glycerol85whodd) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = e0c15229-dd83-4b70-8506-4b8361530b73
  * entry[+] = Reference(ap-adalimumab) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = b0d302df-0809-45f2-9046-c9c6fe23ce9a
  * entry[+] = Reference(authorizationadalimumab) 
 

  // Organization
//  * entry[+].fullUrl = 7d62454e-974b-42a7-b5c2-7027375e186d
  * entry[+] = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab) 

  // Organization
//  * entry[+].fullUrl = c5ef5176-707b-4da0-b53b-b6c8feb165f9
  * entry[+] = Reference(org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab) 

  // Organization
//  * entry[+].fullUrl = bd40ac9a-18f4-45dd-a437-3c411f05daf7
  * entry[+] = Reference(org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab) 

  // Organization
//  * entry[+].fullUrl = 921154a1-350c-489d-9667-54d18cb4a972
  * entry[+] = Reference(org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 7b386aaf-1f03-46d4-a961-9583d174f9f6
  * entry[+] = Reference(ppd-adalimumab) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = 60ec6463-a0c6-472c-8ed2-ea4caee231bb
  * entry[+] = Reference(mpadalimumab) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 981d6b33-5dbb-4760-85ee-02824e7000bd
  * entry[+] = Reference(mid-adalimumab) 
   




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
    * title = "1. What adalimumab is and what it is used for"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "1. What adalimumab is and what it is used for"
    * text.status = #additional
    
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable              
  * section[=].section[+]
    * title = "2. What you need to know before you take adalimumab"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "2. What you need to know before you take adalimumab"
    * text.status = #additional
       

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. What you need to know before you use Humalog Mix50</b>
Do NOT use Humalog Mix50 if you
</div>         </div>"""              
  * section[=].section[+]
    * title = "3. How to take adalimumab"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take adalimumab"
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
    * title = "5. How to store adalimumab"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store adalimumab"
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