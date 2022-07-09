Instance: IbrancePPICompositionSpanish
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
  * title = "INFORMACIÓN PARA EL PACIENTE"
  * id = "4a09b121-97f9-4bf7-8804-11fde2fbd945"
  * code = http://loinc.org#42230-3
  * code.text = "SPL PATIENT PACKAGE INSERT SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
<p>IBRANCE<sup>®</sup>(AI-brans)</p>
<p>(palbociclib)</p>
<p>Comprimidos</p>
</div>"""

* section[=].section[+]
  * title = "¿Cuál es la información más importante que debo saber sobre IBRANCE?"
  * id = "5790c3c4-e66a-4c76-9331-3722a6263a73"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <a name="link2"/>     
    <p>
                                    <b>IBRANCE puede causar efectos secundarios graves, entre ellos:</b>
                                </p>
                                <p>
                                    <b>Recuento bajo de glóbulos blancos (neutropenia).</b>
                                    Los recuentos bajos de glóbulos blancos son muy frecuentes cuando se toma IBRANCE y pueden causar infecciones graves que pueden producir la muerte. Su proveedor de atención médica debe verificar sus recuentos de glóbulos blancos antes del tratamiento y durante este.
                                </p>
                                <p>
                                    Si presenta recuentos bajos de glóbulos blancos durante el tratamiento con IBRANCE, su proveedor de atención médica puede interrumpir el tratamiento, disminuir la dosis o indicarle que espere para comenzar el ciclo de tratamiento. Informe de inmediato a su proveedor de atención médica si presenta signos o síntomas de recuentos bajos de glóbulos blancos o de infección, como fiebre o escalofríos
                                </p>
                                <p>
                                    <b>Problemas pulmonares (neumonitis).</b>
                                    IBRANCE puede provocar una inflamación grave o potencialmente mortal en los pulmones durante el tratamiento lo cual puede conducir a la muerte. Informe a su proveedor de atención médica si tiene síntomas nuevos o si empeoraron, entre ellos: 
                                </p>
                                <ul>
                                    <li>dolor en el pecho</li>
                                    <li>tos con o sin mucosidad</li>
                                    <li>problemas para respirar o falta de aliento</li>
                                </ul>
                                <p>
                                    Su proveedor de atención médica puede interrumpir o suspender el tratamiento con IBRANCE completamente si sus síntomas son graves.
                                </p>
                                <p>
                                    <b>
                                        Consulte 
                                        <a href="#link1">¿Cuáles son los posibles efectos secundarios de IBRANCE?</a>
                                        para obtener más información acerca de los efectos secundarios.
                                    </b>
                                </p>
</div>"""

* section[=].section[+]
  * title = "¿Qué es IBRANCE?"
  * id = "e9d197a7-0505-4d90-9f5b-d855bb688a9f"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <p>
                                    IBRANCE es un medicamento de venta con receta que se utiliza en adultos para el tratamiento del cáncer de mama con receptor hormonal positivo (HR+) y receptor 2 del factor de crecimiento epidérmico humano negativo (HER2-) que se ha propagado a otras partes del cuerpo (metastásico) en combinación con: 
                                </p>
                                <ul>
                                    <li>un inhibidor de la aromatasa como primer tratamiento a base de hormonas en mujeres posmenopáusicas o en hombres, o</li>
                                    <li>fulvestrant para personas con progresión de la enfermedad después del tratamiento hormonal.</li>
                                </ul>
                                <p>
                                    Se desconoce si IBRANCE es seguro y eficaz en niños.
                                </p>
</div>"""

* section[=].section[+]
  * title = "Antes de tomar IBRANCE, dígale a su proveedor de atención médica acerca de sus afecciones médicas, incluso si le sucede lo siguiente:"
  * id = "7ec4aa59-869a-404f-9f04-c5f8596bcf5d"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
    <ul>
                                    <li>tiene fiebre, escalofríos o cualquier otro signo o síntoma de infección.</li>
                                    <li>tiene problemas hepáticos o renales.</li>
                                    <li>está embarazada o tiene previsto quedar embarazada. IBRANCE puede hacerle daño al bebé en gestación.</li>
                                    <ul>
                                        <li>Las mujeres con capacidad de quedar embarazadas deben utilizar un método anticonceptivo eficaz durante el tratamiento y, como mínimo, durante 3 semanas después de tomar la última dosis de IBRANCE. Es posible que su proveedor de atención médica le pida que se haga una prueba de embarazo antes de comenzar el tratamiento con IBRANCE.</li>
                                        <li>Los hombres que tengan parejas del sexo femenino que puedan quedar embarazadas deben utilizar un método anticonceptivo eficaz durante el tratamiento con IBRANCE y, como mínimo, durante 3 meses después de tomar la última dosis de IBRANCE.</li>
                                        <li>Hable con su proveedor de atención médica sobre los métodos anticonceptivos que puedan ser adecuados para usted durante este tiempo.</li>
                                        <li>Si queda embarazada o cree que está embarazada, dígaselo a su proveedor de atención médica inmediatamente.</li>
                                    </ul>
                                    <li>está amamantando o planea hacerlo. Se desconoce si IBRANCE se excreta en la leche materna. No amamante mientras esté en tratamiento con IBRANCE ni durante 3 semanas después de tomar la última dosis.</li>
                                </ul>
                                <p>
                                    <b>Informe a su proveedor de atención médica sobre todos los medicamentos que toma, incluidos</b>
                                    los de venta con receta y los de venta libre, las vitaminas y los suplementos a base de hierbas. IBRANCE y otros medicamentos pueden interactuar entre sí y causar efectos secundarios.
                                </p>
</div>"""

* section[=].section[+]
  * title = "¿Cómo debo tomar IBRANCE?"
  * id = "7ca6c680-4601-47df-8deb-f87d20b60641"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
<ul>
                                    <li>Tome IBRANCE exactamente como se lo indique su proveedor de atención médica.</li>
                                    <li>Los comprimidos de IBRANCE pueden tomarse con o sin alimentos.</li>
                                    <li>IBRANCE debe tomarse aproximadamente a la misma hora todos los días.</li>
                                    <li>Trague los comprimidos enteros. No mastique, triture ni parta los comprimidos de IBRANCE antes de tragarlos.</li>
                                    <li>No tome ningún comprimido de IBRANCE que esté roto, agrietado o que parezca estar dañado.</li>
                                    <li>Evitar consumir toronja (pomelo) y productos de toronja durante el tratamiento con IBRANCE. La toronja puede aumentar la cantidad de IBRANCE en la sangre.</li>
                                    <li>No modifique su dosis ni deje de tomar IBRANCE a menos que se lo indique su proveedor de atención médica.</li>
                                    <li>Si olvida una dosis de IBRANCE o vomita después de tomar una dosis de IBRANCE, no tome otra dosis ese día. Tome la siguiente dosis en su horario habitual.</li>
                                    <li>Si toma una dosis excesiva de IBRANCE, llame de inmediato a su proveedor de atención médica o diríjase a la sala de emergencias del hospital más cercano.</li>
                                </ul>    
    
</div>"""

* section[=].section[+]
  * title = "¿Cuáles son los posibles efectos secundarios de IBRANCE?"
  * id = "60fb2ab9-fb12-4187-93fe-83026e8c2264"
  * code = http://loinc.org#42229-5 
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <a name="link1"/>     
<p>
                                    <b>
                                        IBRANCE puede causar efectos secundarios graves. Consulte 
                                        <a href="#link2">"¿Cuál es la información más importante que debo saber sobre IBRANCE?"</a>
                                    </b>
                                </p>
                                <p>
                                    <b>Los efectos secundarios más frecuentes de IBRANCE cuando se usa con letrozol o fulvestrant incluyen:</b>
                                </p>
                                <ul>
                                    <li>
                                        Los recuentos bajos de glóbulos rojos y los recuentos bajos de plaquetas son frecuentes con IBRANCE. Llame de inmediato a su proveedor de atención médica si presenta cualquiera de estos síntomas durante el tratamiento:
                                        <ul>
                                            <li>mareos</li>
                                            <li>falta de aliento</li>
                                            <li>debilidad</li>
                                            <li>sangrado o formación de moretones con más facilidad</li>
                                            <li>hemorragia nasal</li>
                                        </ul>
                                    </li>
                                    <li>
                                        infecciones (consultar 
                                        <a href="#link2">"¿Cuál es la información más importante que debo saber sobre IBRANCE?</a>
                                        ")
                                    </li>
                                    <li>fatiga</li>
                                    <li>náuseas</li>
                                    <li>llagas bucales</li>
                                    <li>valores anormales en las pruebas de función hepática</li>
                                    <li>diarrea</li>
                                    <li>caída o pérdida del cabello</li>
                                    <li>vómitos</li>
                                    <li>erupción cutánea</li>
                                    <li>falta de apetito</li>
                                </ul>
                                <p>
                                    IBRANCE puede causar problemas de fertilidad en los hombres. Esto puede afectar su capacidad de engendrar un hijo. Si esto le preocupa, antes de tomar IBRANCE hable con su proveedor de atención médica sobre sus opciones de planificación familiar.
                                </p>
                                <p>
                                    Estos no son todos los efectos secundarios posibles de IBRANCE.
                                </p>
                                <p>
                                    Llame a su médico para que le asesore sobre los efectos secundarios. Puede reportar los efectos secundarios a la FDA llamando al 1-800-FDA-1088.
                                </p>    
</div>"""

* section[=].section[+]
  * title = "¿Cómo debo conservar IBRANCE?"
  * id = "5700baec-4fac-4a90-bd40-80b4d5bcfb47"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
<ul>
                                    <li>Conserve IBRANCE entre 68 °F y 77 °F (de 20 °C a 25 °C) en el paquete original de blíster. </li>
                                </ul>
                                <p>
                                    <b>Mantenga IBRANCE y todos los medicamentos fuera del alcance de los niños.</b>
                                </p>    
    
</div>"""

* section[=].section[+]
  * title = "Información general sobre el uso seguro y eficaz de IBRANCE"
  * id = "2a746afc-f607-4378-a8c6-bf9ff0b1c90f"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
<p>
                                    A veces los medicamentos se recetan para fines distintos de los descritos en el folleto de información para el paciente. No use IBRANCE para una afección para la que no se recetó. No les dé IBRANCE a otras personas, incluso si tienen los mismos síntomas que usted, porque podría hacerles daño. Puede pedirle a su farmacéutico o proveedor de atención médica más información sobre IBRANCE redactada para profesionales de la salud.
                                </p>    
</div>"""

* section[=].section[+]
  * title = "¿Cuáles son los ingredientes de IBRANCE?"
  * id = "75762a44-fc4a-4f19-9464-78013b613c57"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">     
<p>
                                    Principio activo: palbociclib
                                </p>
                                <p>
                                    Excipientes: Celulosa microcristalina, dióxido de silicio coloidal, crospovidona, estearato de magnesio, ácido succínico, HPMC 2910/hipromelosa, dióxido de titanio, triacetín y FD&amp;C Azul No. 2 laca alumínica de carmín de índigo. Además, los comprimidos de 75 mg y 125 mg tienen óxido de hierro rojo y los comprimidos de 100 mg tienen óxido de hierro amarillo.
                                </p>
</div>"""

* section[=].section[+]
  * title = "Manufacturer"
  * id = "44024188-2e64-4976-95de-d906f72ff2f2"
  * code = http://loinc.org#42229-5
  * code.text = "SPL UNCLASSIFIED SECTION"
  * text.status = #additional
  * text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
                                <p>
                                    <img src="PfizerLabsLogo.jpg" />
                                </p>
                                <p>
                                    LAB-1372-1.0
                                </p>
                                <p>
                                    Para obtener más información, visite www.IBRANCE.com o llame al 1-800-438-1985.
                                </p>        
</div>"""