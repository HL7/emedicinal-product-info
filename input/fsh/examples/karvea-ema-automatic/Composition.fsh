
Instance: compositionKarvea
InstanceOf: CompositionUvEpi
Title: "Composition for Karvea Package Leaflet"
Description:  "Composition for Karvea Package Leaflet"
Usage: #example

* id = "8e41a79c-274e-4f52-984e-e2dc2174bbdf" 
* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = https://spor.ema.europa.eu/rmswi/#100000155538
* type.text = "Package Leaflet"

* subject = Reference(Karvea75mgtabletblisterx28)
* date = "2022-02-16T13:28:17Z"
* author = Reference(sanofi-aventisgroupe)

* title = "TEST PURPOSES ONLY - Karvea (irbesartan) 75 mg tablets"

* section[+].
  * title = "Product Information"
  * code.text = "Product Info"

 
  // ClinicalUseDefinition
//  * entry[+].fullUrl = "ii"
  * entry[+] = Reference(contraindication-gastrointestinaldisorders) 
 
  // Ingredient
//  * entry[+].fullUrl = "9278143f-513c-4965-8ed6-12789e13a3fb"
  * entry[+] = Reference(ingredienthypromellose) 
  // Substance
//  * entry[+].fullUrl = "79524c84-b17b-4c17-a69e-a9b9b9f1fe5f"
  * entry[+] = Reference(substance-irbesartan) 
  // AdministrableProductDefinition
//  * entry[+].fullUrl = "xx"
  * entry[+] = Reference(adminproductkarvea75mgtablet) 
  // RegulatedAuthorization
//  * entry[+].fullUrl = "d9901302-451f-4902-839a-5f4375895066"
  * entry[+] = Reference(authorizationkarvea75mgtablet) 
  // Organization
//  * entry[+].fullUrl = "961e5052-6a8a-403a-b6ac-5e585c89de8e"
  * entry[+] = Reference(sanofi-aventisgroupe) 
  // PackagedProductDefinition
//  * entry[+].fullUrl = "f556130a-9d5d-40d2-84a0-dbf2c92afbe4"
  * entry[+] = Reference(karvea75mgtabletblisterx28tablets) 
  // MedicinalProductDefinition
//  * entry[+].fullUrl = "d2bbeade-13e5-445d-8ec0-ae25cae09680"
  * entry[+] = Reference(Karvea75mgtabletblisterx28) 
  // ManufacturedItemDefinition
//  * entry[+].fullUrl = "1e8963b2-896e-4ad7-a162-85e07cdd272f"
  * entry[+] = Reference(karvea75mgtablet) 
   




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
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "What is in this leaflet"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "What is in this leaflet"
    * text.status = #additional
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "1. What Karvea is and what it is used for"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "1. What Karvea is and what it is used for"
    * text.status = #additional
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "2. What you need to know before you take Karvea"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "2. What you need to know before you take Karvea"
    * text.status = #additional
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "3. How to take Karvea"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "3. How to take Karvea"
    * text.status = #additional
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "4. Possible side effects"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "4. Possible side effects"
    * text.status = #additional
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "5. How to store Karvea"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "5. How to store Karvea"
    * text.status = #additional
    * text.div = """ <div> </div> """
          
  * section[=].section[+]
    * title = "6. Contents of the pack and other information"
    * code = https://spor.ema.europa.eu/rmswi/#100000155538
    * code.text = "6. Contents of the pack and other information"
    * text.status = #additional
    * text.div = """ <div> </div> """