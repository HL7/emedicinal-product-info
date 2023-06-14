Instance: compositionDrugX75type1
InstanceOf: CompositionUvEpi
Title: "Package Leaflet without a medicinal product"
Description: "Example of a Package Leaflet with no references to a medicinal product (i.e., no subject)"
Usage: #example

* id = "5467a2fd-2463-4ec7-a6bb-b7322000f867"

* identifier.system = "https://spor.ema.europa.eu"
* identifier.value = "224b31c5-8e48-45c5-b616-29e902642578"

* status = #final

* type = $example-cs#100000155538 "Package Leaflet"

* subject.identifier
  * system  =  $example-prod
  * value = "medicinalproduct75"

* date = "2022-02-16T13:28:17Z"

* author = Reference(acmeinc) // Reference to Organization: Marketing Authorization Holder

* title = "Example of Type 1 ePI - DrugX (acetaminophen) 75 mg tablets"

* language = #en

* section[+].
  * title = "B. Package Leaflet"
  * code = $example-cs#200000029894 "PACKAGE LEAFLET"
        
* section[=].section[+]
  * title = "Package leaflet: Information for the user"
  // * code = $spor-rms#100000155538
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
  // * code = $spor-rms#100000155538
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
  * code = $example-cs#200000029895 "1. What X is and what it is used for"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
        </div>"""
        
* section[=].section[+]
  * title = "2. What you need to know before you take DrugX"
  * code = $example-cs#200000029896 "2. What you need to know before you <take> <use> X"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>            
        </div>"""
        
* section[=].section[+]
  * title = "3. How to take DrugX"
  * code = $example-cs#200000029905 "3. How to <take> <use> X"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>"""
        
* section[=].section[+]
  * title = "4. Possible side effects"
  * code = $example-cs#200000029910 "4. Possible side effects"
  * code.text = "4. Possible side effects"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>"""
        
* section[=].section[+]
  * title = "5. How to store DrugX"
  * code = $example-cs#200000029913 "5. How to store X"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>"""
        
* section[=].section[+]
  * title = "6. Contents of the pack and other information"
  * code = $example-cs#200000029914 "6. Contents of the pack and other information"
  * text.status = #additional
  * text.div = """<div xmlns='http://www.w3.org/1999/xhtml'> 
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>    
        </div>"""