
Instance: compositionHumalog
InstanceOf: CompositionUvEpi
Title: "Composition for Humalog Package Leaflet"
Description:  "Composition for Humalog Package Leaflet"
Usage: #example

* id = "3ea8400f-2e72-45a9-b10f-f14cce39e93f" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(mpHumalogMix50InsulinKwikPen3mlprefill)
* date = "2022-02-16T13:28:17Z"
* author = Reference(org-marketingauthorisationholder-elilillynederlandbv-humalog)

* title = "TEST PURPOSES ONLY - Humalog"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
 
 
 

  // Ingredient
//  * entry[+].fullUrl = 7696be29-9d37-4788-8756-14eb0a730507
  * entry[+] = Reference(ingredient-for-humalog-glycerol) 

  // Ingredient
//  * entry[+].fullUrl = 3b4c0b3f-5ab7-44c6-9c56-40a1b1dc32c6
  * entry[+] = Reference(ingredient-for-humalog-hydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = 3526977f-bd68-41ce-aeb3-34b0ed3073d5
  * entry[+] = Reference(ingredient-for-humalog-sodiumhydroxide) 

  // Ingredient
//  * entry[+].fullUrl = fa78fe07-e218-4071-9cf1-5754f2ed6366
  * entry[+] = Reference(ingredient-for-humalog-waterforinjections) 

  // Ingredient
//  * entry[+].fullUrl = ae26a3a8-57ba-481c-b6b3-93802428f2da
  * entry[+] = Reference(ingredient-for-humalog-insulinlispro) 

  // Ingredient
//  * entry[+].fullUrl = 4b64a64b-1abc-4e44-9c30-47fc616e7360
  * entry[+] = Reference(ingredient-for-humalog-zincoxide) 

  // Ingredient
//  * entry[+].fullUrl = fe955f70-7d0b-4017-aa38-9c072203a0fb
  * entry[+] = Reference(ingredient-for-humalog-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 235f2be4-460f-40cd-997f-6d048569d59f
  * entry[+] = Reference(ingredient-for-humalog-trometamol) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = xxxxx
  * entry[+] = Reference(ap-humalog100uml5prefilledpen) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 3b47ef8b-ee04-43c4-be51-ebfbc376a1e7
  * entry[+] = Reference(authorizationhumalog) 
 

  // Organization
//  * entry[+].fullUrl = 07e1e5d6-0f65-4c18-a8e5-902ecee4ac6d
  * entry[+] = Reference(org-marketingauthorisationholder-elilillynederlandbv-humalog) 

  // Organization
//  * entry[+].fullUrl = 3b287ca1-fc56-4693-a686-158564044971
  * entry[+] = Reference(org-manufacturerapi-elilillyandcompany-humalog) 

  // Organization
//  * entry[+].fullUrl = 79a38659-c480-49e1-96c3-5435604f16f2
  * entry[+] = Reference(org-manufacturer-lillysa-humalog) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = f254d107-ef95-4a3f-af8d-a21ea303a8e4
  * entry[+] = Reference(ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = bbb0e905-112e-45ac-8a84-c5dcc42b97c5
  * entry[+] = Reference(mpHumalogMix50InsulinKwikPen3mlprefill) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 66d36196-76d2-457e-91c7-51e99ec883c6
  * entry[+] = Reference(mid-humalog100uml5prefilledpen) 
   




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
    * title = "1. What Humalog is and what it is used for"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "1. What Humalog is and what it is used for"
    * text.status = #additional
    
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>unavailable</div>"""
    * emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable              
  * section[=].section[+]
    * title = "2. What you need to know before you take Humalog"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "2. What you need to know before you take Humalog"
    * text.status = #additional
       

    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>  <div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. What you need to know before you use Humalog Mix50</b>
Do NOT use Humalog Mix50 if you
</div>         </div>"""              
  * section[=].section[+]
    * title = "3. How to take Humalog"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take Humalog"
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
    * title = "5. How to store Humalog"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store Humalog"
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