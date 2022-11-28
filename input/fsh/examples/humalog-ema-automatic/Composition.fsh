
Instance: compositionHumalog
InstanceOf: CompositionUvEpi
Title: "Composition for Humalog Package Leaflet"
Description:  "Composition for Humalog Package Leaflet"
Usage: #example

* id = "7724125e-749c-4586-8da6-3a6d4e73c315" 
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
//  * entry[+].fullUrl = 45e26190-08dc-48ef-97d7-a6d540e01a48
  * entry[+] = Reference(ingredient-for-humalog-glycerol) 

  // Ingredient
//  * entry[+].fullUrl = f0ff2f51-65ab-4b6e-b35c-5b3fe08ace89
  * entry[+] = Reference(ingredient-for-humalog-hydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = 6ab9fca4-4497-4f7f-b6bd-a2010957ff03
  * entry[+] = Reference(ingredient-for-humalog-sodiumhydroxide) 

  // Ingredient
//  * entry[+].fullUrl = 0b01147e-1ee6-4009-936b-22ddded71f23
  * entry[+] = Reference(ingredient-for-humalog-waterforinjections) 

  // Ingredient
//  * entry[+].fullUrl = 6d9b16e9-4823-4a7a-982a-1f4df119d19a
  * entry[+] = Reference(ingredient-for-humalog-insulinlispro) 

  // Ingredient
//  * entry[+].fullUrl = c094c43d-68c3-48e6-9b09-98199814514a
  * entry[+] = Reference(ingredient-for-humalog-zincoxide) 

  // Ingredient
//  * entry[+].fullUrl = 9b93fcf1-34f4-4976-878d-8da5403d6c22
  * entry[+] = Reference(ingredient-for-humalog-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 0c6c9337-797f-4d94-9edc-2181ac283783
  * entry[+] = Reference(ingredient-for-humalog-trometamol) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = xxxxx
  * entry[+] = Reference(adminproducthumalog100uml5prefilledpen) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 3241ef64-12d0-4948-8108-a8f65a214f38
  * entry[+] = Reference(authorizationhumalog) 
 

  // Organization
//  * entry[+].fullUrl = 3599ec0f-5617-4122-8544-a3af708827c5
  * entry[+] = Reference(marketingauthorisationholder-elilillynederlandb.v.) 

  // Organization
//  * entry[+].fullUrl = 9784a291-6f83-4c37-9b51-c40421a661a0
  * entry[+] = Reference(manufacturerapi-elilillyandcompany) 

  // Organization
//  * entry[+].fullUrl = 67d331ea-4b1b-4c43-801e-8e42c12b36bb
  * entry[+] = Reference(manufacturer-lillys.a.) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 835a07ad-61ff-4d4c-bb2a-04d024359332
  * entry[+] = Reference(humalog100units/mlkwikpensolutionforinjectioninapre-filledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = 303c1ef5-3e72-4ce9-8c27-997fe07b14bd
  * entry[+] = Reference(HumalogMix50InsulinKwikPen,3mlpre-fill) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 387ff913-0414-42e3-a775-afca9b607f28
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