
Instance: compositionHumalog
InstanceOf: CompositionUvEpi
Title: "Composition for Humalog Package Leaflet"
Description:  "Composition for Humalog Package Leaflet"
Usage: #example

* id = "e0d9c141-06d9-4851-84e2-776f4691ab3d" 
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
//  * entry[+].fullUrl = 452f5372-b3e1-481f-bacf-f89641f38435
  * entry[+] = Reference(ingredient-for-humalog-glycerol) 

  // Ingredient
//  * entry[+].fullUrl = 51d77634-ef0f-4230-a610-b52a05e5746e
  * entry[+] = Reference(ingredient-for-humalog-hydrochloricacid) 

  // Ingredient
//  * entry[+].fullUrl = dfdd2d9f-4b62-4f55-96d8-7c11efee8048
  * entry[+] = Reference(ingredient-for-humalog-sodiumhydroxide) 

  // Ingredient
//  * entry[+].fullUrl = 2db99531-1ebc-409c-9941-387d800cc8e9
  * entry[+] = Reference(ingredient-for-humalog-sterilewaterforinjection) 

  // Ingredient
//  * entry[+].fullUrl = 9533d7d7-0359-449e-8a12-35ed5be36d38
  * entry[+] = Reference(ingredient-for-humalog-insulinlispro) 

  // Ingredient
//  * entry[+].fullUrl = f5b919cb-2f5a-4e8a-a97e-4153d2d2cf52
  * entry[+] = Reference(ingredient-for-humalog-zincoxide) 

  // Ingredient
//  * entry[+].fullUrl = c1caa847-d129-4571-b708-2e74cfb2fdd4
  * entry[+] = Reference(ingredient-for-humalog-metacresol) 

  // Ingredient
//  * entry[+].fullUrl = 58d764f4-a7b6-4155-b85f-af5d76005aa0
  * entry[+] = Reference(ingredient-for-humalog-trometamol) 
 
 

  // AdministrableProductDefinition
//  * entry[+].fullUrl = xxxxx
  * entry[+] = Reference(ap-humalog100uml5prefilledpen) 
 

  // RegulatedAuthorization
//  * entry[+].fullUrl = 8a0d9232-126c-4b05-897b-ef71e6cac927
  * entry[+] = Reference(authorizationhumalog) 
 

  // Organization
//  * entry[+].fullUrl = 631e8d02-c540-41d6-963e-8fcf2acb7a13
  * entry[+] = Reference(org-marketingauthorisationholder-elilillynederlandbv-humalog) 

  // Organization
//  * entry[+].fullUrl = b3db62de-c2f5-4541-8303-285dc36c4d64
  * entry[+] = Reference(org-manufacturerapi-elilillyandcompany-humalog) 

  // Organization
//  * entry[+].fullUrl = 66010582-61f3-48c5-979b-e0a488430150
  * entry[+] = Reference(org-manufacturer-lillysa-humalog) 
 

  // PackagedProductDefinition
//  * entry[+].fullUrl = 3ad17550-7a45-4a2f-a623-0933c7051b54
  * entry[+] = Reference(ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen) 
 

  // MedicinalProductDefinition
//  * entry[+].fullUrl = c931b18e-c12d-4215-9700-f5491d6c765a
  * entry[+] = Reference(mpHumalogMix50InsulinKwikPen3mlprefill) 
 

  // ManufacturedItemDefinition
//  * entry[+].fullUrl = 4478e098-80bb-481a-ac3f-24c64014fff9
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