
Instance: compositionadalimumab
InstanceOf: CompositionUvEpi
Title: "Composition for adalimumab Package Leaflet"
Description:  "Composition for adalimumab Package Leaflet"
Usage: #example

* id = "63656fd5-a5eb-413b-a0fd-c7f82530f588" 
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
//  * entry[+].fullUrl = 232fc4f7-c6a4-424f-ac7d-ecf8bce81b7d
  * entry[+] = Reference(ingredient-for-adalimumab-insulinglargine) 

  // Ingredient
//  * entry[+].fullUrl = a39ad161-9a77-4132-a7ef-be4494b3cf88
  * entry[+] = Reference(ingredient-for-adalimumab-lixisenatide) 

  // Ingredient
//  * entry[+].fullUrl = a8f55f17-a3ea-467e-a0f9-d81e994f9f9a
  * entry[+] = Reference(ingredient-for-adalimumab-glycerol85) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = 119c6e3a-5e6f-4b09-b361-80cd46387352
  * entry[+] = Reference(ap-adalimumab) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 075f7a25-2fd7-41bd-a7da-80a40cbc46f5
  * entry[+] = Reference(authorizationadalimumab) 
 

  // Organization
//  * entry[+].fullUrl = c3b3b264-b964-484e-8dd8-a58903d437af
  * entry[+] = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab) 

  // Organization
//  * entry[+].fullUrl = 99e29dbe-a15a-4a33-8420-a8886c589bc8
  * entry[+] = Reference(org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab) 

  // Organization
//  * entry[+].fullUrl = dd1286db-5a61-4285-98b2-fc585876ce7d
  * entry[+] = Reference(org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab) 

  // Organization
//  * entry[+].fullUrl = afacd2ff-936b-4281-81d6-ef4dd38d5e7f
  * entry[+] = Reference(org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 55195839-ce29-465e-81bf-8ccb866f7974
  * entry[+] = Reference(ppd-adalimumab) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = a546a331-cb16-4baa-8be5-0bc1579e1bb2
  * entry[+] = Reference(mpadalimumab) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = a9c490f0-1711-43cf-9777-f8a45b526bbd
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