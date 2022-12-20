
Instance: compositionHumalog
InstanceOf: CompositionUvEpi
Title: "Composition for Humalog Package Leaflet"
Description:  "Composition for Humalog Package Leaflet"
Usage: #example

* id = "cf9854cc-fa77-4318-a565-d6f744addb25" 
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
//  * entry[+].fullUrl = 344ec685-46ab-4f37-a0ba-f7fe72a16f63
  * entry[+] = Reference(ingredient-for-humalog-glycerol) 

  // Ingredient
//  * entry[+].fullUrl = 8005bb4f-c260-43f1-a919-032185d99492
  * entry[+] = Reference(ingredient-for-humalog-hydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = 5c3f4fe7-d091-4480-b0ca-07404b03d374
  * entry[+] = Reference(ingredient-for-humalog-sodiumhydroxide) 

  // Ingredient
//  * entry[+].fullUrl = 909923f7-772c-4bbe-aeb5-3995afc16131
  * entry[+] = Reference(ingredient-for-humalog-sterilewaterforinjection) 

  // Ingredient
//  * entry[+].fullUrl = c80c67df-9de9-4dfd-b609-5bb59c9d1b61
  * entry[+] = Reference(ingredient-for-humalog-insulinlispro) 

  // Ingredient
//  * entry[+].fullUrl = 46a12e95-0764-4625-b2c1-2d594e999028
  * entry[+] = Reference(ingredient-for-humalog-zincoxide) 

  // Ingredient
//  * entry[+].fullUrl = bdb3800c-2813-47b9-8144-386abcf452dc
  * entry[+] = Reference(ingredient-for-humalog-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 244c29f5-ae44-49ad-96f2-e0c365779a0e
  * entry[+] = Reference(ingredient-for-humalog-trometamol) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = xxxxx
  * entry[+] = Reference(ap-humalog100uml5prefilledpen) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 383cc389-8f7a-48d4-9870-65d44d73f84a
  * entry[+] = Reference(authorizationhumalog) 
 

  // Organization
//  * entry[+].fullUrl = 3b0b32f5-0bf1-4e1f-8c64-63d0907c9cff
  * entry[+] = Reference(org-marketingauthorisationholder-elilillynederlandbv-humalog) 

  // Organization
//  * entry[+].fullUrl = 724b50e7-68e7-4fc3-a31b-3e3960d1dd93
  * entry[+] = Reference(org-manufacturerapi-elilillyandcompany-humalog) 

  // Organization
//  * entry[+].fullUrl = 94e8011e-2a38-4bdf-8693-0ed96b25084a
  * entry[+] = Reference(org-manufacturer-lillysa-humalog) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = d21474b5-361a-47ba-a039-ea2e640def1c
  * entry[+] = Reference(ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = 5b19f7ba-b52f-4df4-86b6-90e1e9936fd9
  * entry[+] = Reference(mpHumalogMix50InsulinKwikPen3mlprefill) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = a26fc18e-0b9f-44cb-b8cf-572b758fcf7b
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