Instance: compositionDrugX75
InstanceOf: CompositionUvEpi
Description: "Package Leaflet"
Usage: #example

* id = "fe63fd6a-afe8-4b61-a203-0cf4a69ffb60"

* identifier.system = "https://spor.ema.europa.eu"
* identifier.value = "0d69fdcb-33cf-407f-8209-a6529856ab4f"

* status = #final

* type = $spor-rms#100000155538
* type.text = "Package Leaflet"

* subject = Reference(DrugX75mgblisterx28) //reference to the medicinal product

* date = "2022-02-16T13:28:17Z"

* author = Reference(acmeinc) // Reference to Organization: Marketing Authorization Holder

* title = "TEST PURPOSES ONLY - DrugX (acetaminophen) 75 mg tablets"

* language = #en

* section[+].
  * title = "B. Package Leaflet"
  * code = $spor-rms#100000155538
  * code.text = "B. PACKAGE LEAFLET"
        
* section[=].section[+]
  * title = "Package leaflet: Information for the user"
  * code = $spor-rms#100000155538
  * code.text = "Package leaflet: Information for the user"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>DrugX 75 mg tablets</p>
            <p>acetaminophen</p>
            <b>Read all of this leaflet carefully before you start taking this medicine because it contains important information for you.</b>
            <ul>
                <li>Keep this leaflet. You may need to read it again.</li>
                <li>If you have any further questions, ask your doctor or pharmacist.</li>
                <li>This medicine has been prescribed for you only. Do not pass it on to others. It may harm them, even if their signs of illness are the same as yours.</li>
                <li>If you get any side effects, talk to your doctor or pharmacist. This includes any possible side effects not listed in this leaflet. See section 4.</li>
            </ul>
        </div>"""
        
* section[=].section[+]
  * title = "What is in this leaflet"
  * code = $spor-rms#100000155538
  * code.text = "What is in this leaflet"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <ul>
                <li>What DrugX is and what it is used for</li>
                <li>What you need to know before you take DrugX</li>
                <li>How to take DrugX</li>
                <li>Possible side effects</li>
                <li>How to store DrugX</li>
                <li>Contents of the pack and other information</li>
            </ul>
        </div>"""
        
* section[=].section[+]
  * title = "1. What DrugX is and what it is used for"
  * code = $spor-rms#100000155538
  * code.text = "1. What DrugX is and what it is used for"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
        </div>"""
        
* section[=].section[+]
  * title = "2. What you need to know before you take DrugX"
  * code = $spor-rms#100000155538
  * code.text = "2. What you need to know before you take DrugX"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>            
        </div>"""
        
* section[=].section[+]
  * title = "3. How to take DrugX"
  * code = $spor-rms#100000155538
  * code.text = "3. How to take DrugX"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>"""
        
* section[=].section[+]
  * title = "4. Possible side effects"
  * code = $spor-rms#100000155538
  * code.text = "4. Possible side effects"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>"""
        
* section[=].section[+]
  * title = "5. How to store DrugX"
  * code = $spor-rms#100000155538
  * code.text = "5. How to store DrugX"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>"""
        
* section[=].section[+]
  * title = "6. Contents of the pack and other information"
  * code = $spor-rms#100000155538
  * code.text = "6. Contents of the pack and other information"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>    
        </div>"""