
Instance: compositionHumalog
InstanceOf: CompositionUvEpi
Title: "Composition for Humalog Package Leaflet"
Description:  "Composition for Humalog Package Leaflet"
Usage: #example

* id = "66a0db80-d989-403f-bdbe-1b395fb15b6e" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(HumalogMix50InsulinKwikPen,3mlpre-fill)
* date = "2022-02-16T13:28:17Z"
* author = Reference(marketingauthorisationholder-elilillynederlandb.v.)

* title = "TEST PURPOSES ONLY - Humalog Vulcan ePI v1"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
 
 
 

  // Ingredient
//  * entry[+].fullUrl = d18d564a-01d2-4e0d-a673-0c7e336df152
  * entry[+] = Reference(ingredient-for-humalog-glycerol) 

  // Ingredient
//  * entry[+].fullUrl = f7fb22b8-26be-4229-9118-85e82491c72b
  * entry[+] = Reference(ingredient-for-humalog-hydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = 6b74defc-348f-4a74-953e-6264081ad272
  * entry[+] = Reference(ingredient-for-humalog-sodiumhydroxide) 

  // Ingredient
//  * entry[+].fullUrl = 0cca7d64-ff25-4de0-8500-91fed616733f
  * entry[+] = Reference(ingredient-for-humalog-waterforinjections) 

  // Ingredient
//  * entry[+].fullUrl = ac74d4f3-ec9b-499d-bca4-86ee25647a21
  * entry[+] = Reference(ingredient-for-humalog-insulinlispro) 

  // Ingredient
//  * entry[+].fullUrl = 82d2f93b-9e3c-4ce8-aa91-bd081056a896
  * entry[+] = Reference(ingredient-for-humalog-zincoxide) 

  // Ingredient
//  * entry[+].fullUrl = aed218f0-e174-452c-9d07-a8f4fd79bc73
  * entry[+] = Reference(ingredient-for-humalog-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 7134e4c7-8d10-475d-88fa-a6a2b4d3ed11
  * entry[+] = Reference(ingredient-for-humalog-trometamol) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = xxxxx
  * entry[+] = Reference(adminproducthumalog100u/ml5pre-filledpen) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = c73de2f9-34dd-439b-b74b-1d6304a206e9
  * entry[+] = Reference(authorizationhumalog) 
 

  // Organization
//  * entry[+].fullUrl = a158a35f-2be5-4c74-8132-dabb9476d887
  * entry[+] = Reference(marketingauthorisationholder-elilillynederlandb.v.) 

  // Organization
//  * entry[+].fullUrl = 39a732bc-4fe0-403a-bfc4-f772963e9c7d
  * entry[+] = Reference(manufacturerapi-elilillyandcompany) 

  // Organization
//  * entry[+].fullUrl = 188e4e7a-832a-4099-a715-5792d96c8d8d
  * entry[+] = Reference(manufacturer-lillys.a.) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = a4b9135b-3b33-42c0-8e12-b814645f8f20
  * entry[+] = Reference(humalog100units/mlkwikpensolutionforinjectioninapre-filledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = ac456ef5-b0e6-47dc-ad7d-326e4b71893c
  * entry[+] = Reference(HumalogMix50InsulinKwikPen,3mlpre-fill) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 258439a1-ebde-4f04-baed-5302d25fc29e
  * entry[+] = Reference(humalog100u/ml5pre-filledpen) 
   




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
       
    * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'>
<b>2. What you need to know before you use Humalog Mix50</b>
Do NOT use Humalog Mix50 if you
</div>"""              
  * section[=].section[+]
    * title = "3. How to take Humalog"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take Humalog"
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
    * title = "5. How to store Humalog"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store Humalog"
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