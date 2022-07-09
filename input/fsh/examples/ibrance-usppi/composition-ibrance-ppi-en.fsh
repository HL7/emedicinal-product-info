Instance: IbrancePPICompositionEnglish
InstanceOf: CompositionUvEpi
Description: "Ibrance Patient Package Leaflet"
Usage: #example

* status = #final
* type = http://loinc.org#42230-3
* type.text = "SPL PATIENT PACKAGE INSERT SECTION"
* subject = Reference(ibrancetabletsauth) //reference to the authorization
* date = "2002-08-01T13:28:17Z"

// Reference to Organization: Marketing Authorization Holder
* author = Reference(PfizerLaboratoriesDivPfizerInc)
* title = "TEST PURPOSES ONLY - IBRANCE (palbociclib) Tablets"
* confidentiality = #U
* attester.mode = http://hl7.org/fhir/composition-attestation-mode#official
* attester.time =  "2020-12-02T00:00:00.000Z"
* language = #en

* section[+]
  * title = "PATIENT PACKAGE INSERT SECTION"
  * id = "560f9fe6-7134-4542-90bd-dd2224024a77"
  * code = http://loinc.org#42230-3
  * code.text = "SPL PATIENT PACKAGE INSERT SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <p>IBRANCE<sup>®</sup>(EYE-brans)</p>
    <p>(palbociclib)</p>
    <p>Tablets</p>
</div>"""

* section[=].section[+]
  * title = "What is the most important information I should know about IBRANCE?"
  * id = "b30ca09b-538c-438b-9362-b3bb06fe721e"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
    <a name="link2"/>     
    <p>IBRANCE may cause serious side effects, including:</p>
    <p>Low white blood cell counts (neutropenia). Low white blood cell counts are very common when taking IBRANCE and may cause serious infections that can lead to death. Your healthcare provider should check your white blood cell counts before and during treatment.</p>
    <p>If you develop low white blood cell counts during treatment with IBRANCE, your healthcare provider may stop your treatment, decrease your dose, or may tell you to wait to begin your treatment cycle. Tell your healthcare provider right away if you have signs and symptoms of low white blood cell counts or infections such as fever and chills.</p>
    <p>Lung problems (pneumonitis). IBRANCE may cause severe or life-threatening inflammation of the lungs during treatment that can lead to death. Tell your healthcare provider right away if you have any new or worsening symptoms, including:</p>
    <ul>
        <li>chest pain</li>
        <li>cough with or without mucus</li>
        <li>trouble breathing or shortness of breath</li>
    </ul>
    <p>Your healthcare provider may interrupt or stop treatment with IBRANCE completely if your symptoms are severe.</p>
    <p>See <a href="#link1"><b>WHAT ARE THE POSSIBLE SIDE EFFECTS OF IBRANCE?</b></a> for more information about side effects.</p>
</div>"""

* section[=].section[+]
  * title = "What is IBRANCE?"
  * id = "3e315c68-9ff3-474f-859b-0eef8ea68f3e"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <p>IBRANCE is a prescription medicine used in adults to treat hormone receptor (HR)-positive, human epidermal growth factor receptor 2 (HER2)-negative breast cancer that has spread to other parts of the body (metastatic) in combination with:</p>
    <ul>
        <li>an aromatase inhibitor as the first hormonal based therapy in postmenopausal women or in men, or</li>
        <li>fulvestrant in people with disease progression following hormonal therapy.</li>
    </ul>
    <p>It is not known if IBRANCE is safe and effective in children.</p>
    
</div>"""

* section[=].section[+]
  * title = "Before taking IBRANCE, tell your healthcare provider about all of your medical conditions, including if you:"
  * id = "d482615f-f669-4668-8402-e99d8a66b7a4"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <ul>
        <li>have fever, chills, or any other signs or symptoms of infection.</li>
        <li>have liver or kidney problems.</li>
        <li>are pregnant, or plan to become pregnant. IBRANCE can harm your unborn baby.</li>
            <ul>
                <li>Females who are able to become pregnant should use effective birth control during treatment and for at least 3 weeks after the last dose of IBRANCE. Your healthcare provider may ask you to take a pregnancy test before you start treatment with IBRANCE.</li>
                <li>Males with female partners who can become pregnant should use effective birth control during treatment with IBRANCE for at least 3 months after the last dose of IBRANCE.</li>
                <li>Talk to your healthcare provider about birth control methods that may be right for you during this time.</li>
                <li>If you become pregnant or think you are pregnant, tell your healthcare provider right away.</li>
            </ul>
        <li>are breastfeeding or plan to breastfeed. It is not known if IBRANCE passes into your breast milk. Do not breastfeed during treatment with IBRANCE and for 3 weeks after the last dose.</li>
    </ul>
    <p><b>Tell your healthcare provider about all of the medicines you take, including </b>prescription and over-the-counter medicines, vitamins, and herbal supplements. IBRANCE and other medicines may affect each other causing side effects.</p>
</div>"""

* section[=].section[+]
  * title = "How should I take IBRANCE?"
  * id = "bcef6dcc-92f6-4d4c-b81e-da747b966288"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <ul>
        <li>Take IBRANCE exactly as your healthcare provider tells
            you.</li>
        <li>IBRANCE tablets may be taken with or without food.</li>
        <li>IBRANCE should be taken at about the same time each
            day.</li>
        <li>Swallow IBRANCE tablets whole. Do not chew, crush or split
            IBRANCE tablets before swallowing them.</li>
        <li>Do not take any IBRANCE tablets that are broken, cracked, or
            that look damaged.</li>
        <li>Avoid grapefruit and grapefruit products during treatment
            with IBRANCE. Grapefruit may increase the amount of IBRANCE in
            your blood.</li>
        <li>Do not change your dose or stop taking IBRANCE unless your
            healthcare provider tells you.</li>
        <li>If you miss a dose of IBRANCE or vomit after taking a dose of
            IBRANCE, do not take another dose on that day. Take your next
            dose at your regular time.</li>
        <li>If you take too much IBRANCE, call your healthcare provider
            right away or go to the nearest hospital emergency room.</li>
    </ul>
</div>"""

* section[=].section[+]
  * title = "What are the possible side effects of IBRANCE?"
  * id = "5830ab77-7a1b-4aa2-b985-6be1a4829ffe"
  * code = http://loinc.org#42229-5 
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
    <a name="link1"/>     
    <p>IBRANCE may cause serious side effects. See <a href="#link2"><b>WHAT IS THE MOST IMPORTANT INFORMATION I SHOULD KNOW ABOUT IBRANCE?</b></a></p>
    <p>The most common side effects of IBRANCE when used with either letrozole or fulvestrant include:</p>
    <ul>
        <li>Low red blood cell counts and low platelet counts are common with IBRANCE. Call your healthcare provider right away if you develop any of these symptoms during treatment:</li>
    </ul>
    <table>
        <tr>
            <td>
                <ul>
                    <li>dizziness</li>
                    <li>shortness of breath</li>
                    <li>weakness</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>bleeding or bruising more easily</li>
                    <li>nosebleeds</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>infections (see "<a href="#link2"><b>What is the most
                        important information I should know about
                        IBRANCE?</b></a>")</li>
                    <li>tiredness</li>
                    <li>nausea</li>
                    <li>sore mouth</li>
                    <li>abnormalities in liver blood tests</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>diarrhea</li>
                    <li>hair thinning or hair loss</li>
                    <li>vomiting</li>
                    <li>rash</li>
                    <li>loss of appetite</li>
                </ul>
            </td>
        </tr>
    </table>
    <p>IBRANCE may cause fertility
        problems in males. This may affect your ability to father a child.
        Talk to your healthcare provider about family planning options before
        starting IBRANCE if this is a concern for you.</p>
    <p>These are not all of the possible
        side effects of IBRANCE.</p>
    <p>Call your doctor for medical
        advice about side effects. You may report side effects to FDA at
        1-800-FDA-1088.</p>
</div>"""

* section[=].section[+]
  * title = "How should I store IBRANCE?"
  * id = "4246721d-42b3-4414-a8a8-7522e9596dbe"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <p>Store IBRANCE at 68 °F to 77 °F (20 °C to 25 °C) in the original blister pack.</p>
    <p><b>Keep IBRANCE and all medicines out of the reach of children.</b></p>
</div>"""

* section[=].section[+]
  * title = "General information about the safe and effective use of IBRANCE"
  * id = "7a518f83-ab14-4eac-9e10-bf88044e9d9f"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <p>Medicines are sometimes prescribed for purposes other than those listed in a Patient Information leaflet. Do not use IBRANCE for a condition for which it was not prescribed. Do not give IBRANCE to other people, even if they have the same symptoms you have. It may harm them. You can ask your pharmacist or healthcare provider for more information about IBRANCE that is written for health professionals.</p>
</div>"""

* section[=].section[+]
  * title = "What are the ingredients in IBRANCE?"
  * id = "f716ada5-4dd2-4f73-b411-ece8ba363e4a"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <p>Active ingredient: palbociclib</p>
    <p>Inactive ingredients: microcrystalline cellulose, colloidal silicon dioxide, crospovidone, magnesium stearate, succinic acid, HPMC 2910/hypromellose, titanium dioxide, triacetin, and FD&amp;C Blue #2/Indigo Carmine Aluminum Lake. In addition, the 75 mg and 125 mg tablets contain red iron oxide and the 100 mg tablets contain yellow iron oxide.</p>
</div>"""

* section[=].section[+]
  * title = "Manufacturer"
  * id = "b76074f4-699d-49b1-8e4f-79ecee43879c"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
    <p><img src="PfizerLabsLogo.jpg"/></p>
    <p>LAB-1372-1.0</p>
    <p>For more information, go to www.IBRANCE.com or call 1-800-438-1985.</p>
    <p>This Patient Information has been approved by the U.S. Food and Drug Administration.</p>
    <p>Revised: November 2019</p>
</div>"""