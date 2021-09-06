Instance: gravitate-maria
InstanceOf: Bundle
Usage: #example
* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "maria-ips-1"
* type = #document
* timestamp = "2021-09-03T08:38:00+02:00"
* entry[0].fullUrl = "urn:uuid:2fa5b223-ebce-4f39-9c66-5dc014f73572" // Composition
* entry[=].resource = 2fa5b223-ebce-4f39-9c66-5dc014f73572
* entry[+].fullUrl = "urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5" // Patient
* entry[=].resource = c154158f-6a43-4ab7-8443-e7f4bf915dd5
* entry[+].fullUrl = "urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d8" // Practictioner
* entry[=].resource = 1ece89c5-fda3-4db9-ace6-decbe6c603d8
* entry[+].fullUrl = "urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf07" // Allergy
* entry[=].resource = 1dff4474-fa08-4f45-8260-dbb23094bf07
* entry[+].fullUrl = "urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec58" // Condition 1
* entry[=].resource = bcc79261-142c-48ec-b032-f3f9af49ec58
* entry[+].fullUrl = "urn:uuid:a4a9d90a-d1b0-4d60-82f0-c52343dc6256" // Condition 2
* entry[=].resource = a4a9d90a-d1b0-4d60-82f0-c52343dc6256
* entry[+].fullUrl = "urn:uuid:f06b7cf8-c15c-4288-a0f9-45a1026e5130" // Condition 3
* entry[=].resource = f06b7cf8-c15c-4288-a0f9-45a1026e5130
* entry[+].fullUrl = "urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a899" // Medication Statement 1
* entry[=].resource = 29074ca4-efcb-4ff4-8446-feed2399a899
* entry[+].fullUrl = "urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78fd" // Medication Statement 2
* entry[=].resource = f6cb1218-f81c-4338-80d8-3c10910f78fd
* entry[+].fullUrl = "urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87ba" // Medication Statement 3
* entry[=].resource = f26084c9-b1c8-46d9-acb2-1d400ade87ba
* entry[+].fullUrl = "urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe36b" // Medication 1
* entry[=].resource = b50ae644-e0b7-4007-809f-26f493cbe36b
* entry[+].fullUrl = "urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c4" // Medication 2
* entry[=].resource = de131e15-ed13-4b31-b38c-3204a84d99c4
* entry[+].fullUrl = "urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef19" // Medication 3
* entry[=].resource = 9ac3356c-4ea4-4814-84c3-235484f2ef19
// ======== COMPOSITION
Instance: 2fa5b223-ebce-4f39-9c66-5dc014f73572
InstanceOf: Composition
Usage: #inline
* id = "gravitate-maria"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
* date = "2018-07-10T15:22:00+02:00"
* author = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d8) "Dr. Anna Karlsson"
* title = "Patient Summary (Maria Gravitate)"
* confidentiality = #N
* section[0].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Hay fever (pollen)</li>
	</ul>
</div>"
* section[=].entry = Reference(urn:uuid:1dff4474-fa08-4f45-8260-dbb23094bf07) "Hay fever (pollen)"
// ======== PROBLEMS
* section[+].title = "Problem List"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<ul>
		<li>Psoriasis</li>
		<li>Hypertension</li>
		<li>Congestive heart failure</li>
	</ul>
</div>"
* section[=].entry[0] = Reference(urn:uuid:bcc79261-142c-48ec-b032-f3f9af49ec58) "Psoriasis"
* section[=].entry[+] = Reference(urn:uuid:f06b7cf8-c15c-4288-a0f9-45a1026e5130) "Hypertension" // "Essential (primary) hypertension"
* section[=].entry[+] = Reference(urn:uuid:a4a9d90a-d1b0-4d60-82f0-c52343dc6256) "Congestive heart failure"
// ======== MEDICATIONS
* section[+].title = "Medication Summary"
* section[=].code = $loinc#10160-0 "Hx of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<table>
		<thead>
			<tr>
				<th>Brand Name</th>
				<th>MAN</th>
				<th>Active Substance</th>
				<th>Common Name</th>
				<th>ATC</th>
				<th>Strength</th>
				<th>Dose Form</th>
				<th>RoA</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Skilarence</td>
				<td>EU/1/17/1201/001</td>
				<td>dimethyl fumarate (FO2303MNI2)</td>
				<td>dimethyl fumarate</td>
				<td>L04AX07</td>
				<td>30 mg</td>
				<td>Gastro-resistant tablet</td>
				<td>Oral use</td>
			</tr>
			<tr>
				<td>Karvea</td>
				<td>EMEA/H/C/000142</td>
				<td>irbesartan (J0E2756Z7N)</td>
				<td>irbesartan</td>
				<td>C09DA04</td>
				<td>75 mg</td>
				<td>Tablet</td>
				<td>Oral use</td>
			</tr>
			<tr>
				<td>Boots Decongestant 0.05% w/v Nasal spray</td>
				<td>PL 16028/0049</td>
				<td>oxymetazoline hydrochloride (K89MJ0S5VY)</td>
				<td>oxymetazoline hydrochloride</td>
				<td>R01AA05</td>
				<td>0.05 mg / 1 ml</td>
				<td>Nasal spray, solution</td>
				<td>Nasal use</td>
			</tr>
		</tbody>
	</table>
</div>"
* section[=].entry[0] = Reference(urn:uuid:29074ca4-efcb-4ff4-8446-feed2399a899) "Dimethyl fumarate 30 mg Gastro-resistant tablet"
* section[=].entry[+] = Reference(urn:uuid:f6cb1218-f81c-4338-80d8-3c10910f78fd) "Irbesartan 75 mg Tablet"
* section[=].entry[+] = Reference(urn:uuid:f26084c9-b1c8-46d9-acb2-1d400ade87ba) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
// == PATIENT ===
Instance: c154158f-6a43-4ab7-8443-e7f4bf915dd5
InstanceOf: Patient
Usage: #inline
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO "Norway"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Maria Gravitate, Female, 75 years old (1946-05-05)
</div>"
* identifier[0].system = "https://www.gravitatehealth.eu/sid/doc"
* identifier[=].value = "maria-1"
* active = true
* name.family = "Gravitate"
* name.given = "Maria"
* gender = #female
* birthDate = "1946-05-05"
// == Practitioner ===
Instance: 1ece89c5-fda3-4db9-ace6-decbe6c603d8
InstanceOf: Practitioner
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Dr. Anne Karlsson
</div>"
* name.family = "Karlsson"
* name.given = "Anne"
* name.prefix = "Dr."
// == ALLERGIES ===
Instance: 1dff4474-fa08-4f45-8260-dbb23094bf07
InstanceOf: AllergyIntolerance
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Hay fever
</div>"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#256259004 "Pollen"
* reaction.manifestation = $sct#21719001 "Allergic rhinitis caused by pollen"
* reaction.manifestation.text = "Hay fever"
* patient = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
// == CONDITIONS ===
Instance: bcc79261-142c-48ec-b032-f3f9af49ec58
InstanceOf: Condition
Usage: #inline
* code.text = "Psoriasis"
* clinicalStatus = $condition-clinical#active
* code = $sct#9014002 "Psoriasis"
* code.text = "Psoriasis"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
// * onsetDateTime = "2015-08-01"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d8) "Dr. Anna Karlsson"

// --- "Congestive heart failure"
Instance: a4a9d90a-d1b0-4d60-82f0-c52343dc6256
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Congestive heart failure (2015)
</div>"
* clinicalStatus = $condition-clinical#active
* code = $sct#42343007 "Congestive heart failure"
* code.text = "Congestive heart failure"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
* onsetDateTime = "2015"
* asserter = Reference(urn:uuid:1ece89c5-fda3-4db9-ace6-decbe6c603d8) "Dr. Anna Karlsson"
Instance: f06b7cf8-c15c-4288-a0f9-45a1026e5130
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* code = $sct#38341003 "HT - Hypertension"
* code.text = "Hypertension"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
* onsetDateTime = "1993"
// ====== MEDICATION STATEMENTS
Instance: 29074ca4-efcb-4ff4-8446-feed2399a899
InstanceOf: MedicationStatement
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<table>
		<thead>
			<tr>
				<th>Brand Name</th>
				<th>MAN</th>
				<th>Active Substance</th>
				<th>Common Name</th>
				<th>ATC</th>
				<th>Strength</th>
				<th>Dose Form</th>
				<th>RoA</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Skilarence</td>
				<td>EU/1/17/1201/001</td>
				<td>dimethyl fumarate (FO2303MNI2)</td>
				<td>dimethyl fumarate</td>
				<td>L04AX07</td>
				<td>30 mg</td>
				<td>Gastro-resistant tablet</td>
				<td>Oral use</td>
			</tr>
		</tbody>
	</table>
</div>"
* status = #active
* medicationReference = Reference(urn:uuid:b50ae644-e0b7-4007-809f-26f493cbe36b) "Dimethyl fumarate 30 mg Tablet"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
Instance: f6cb1218-f81c-4338-80d8-3c10910f78fd
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:de131e15-ed13-4b31-b38c-3204a84d99c4) "Irbesartan 75 mg Tablet"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
* dosage.route = $edqm#20053000 "Oral use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
Instance: f26084c9-b1c8-46d9-acb2-1d400ade87ba
InstanceOf: MedicationStatement
Usage: #inline
* status = #active
* medicationReference = Reference(urn:uuid:9ac3356c-4ea4-4814-84c3-235484f2ef19) "Oxymetazoline hydrochloride  0.05 mg / 1 ml Spray"
* subject = Reference(urn:uuid:c154158f-6a43-4ab7-8443-e7f4bf915dd5) "Maria Gravitate"
* dosage.route = $edqm#20049000	"Nasal use"
/*===
* effectivePeriod.start = "2015-05-01"
* dosage.text = "80 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
===*/
// ====== MEDICATIONS
Instance: b50ae644-e0b7-4007-809f-26f493cbe36b
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EU/1/17/1201/001 "Skilarence"
* code.coding[+] = $phpid#0x9982CA8A825D4561506CE808982E3B9D "dimethyl fumarate, 30 mg/ 1 tablet, Gastro-resistant tablet"
* code.coding[+] = $atc#L04AX07 "dimethyl fumarate"
* form = $edqm#10225000 "Gastro-resistant tablet"
* ingredient.itemCodeableConcept = $unii#FO2303MNI2 "dimethyl fumarate"
* ingredient.itemCodeableConcept.text = "dimethyl fumarate"
* ingredient.strength.numerator.value = 30
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}
Instance: de131e15-ed13-4b31-b38c-3204a84d99c4
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $spor-man#EMEA/H/C/000142 "Karvea"
* code.coding[+] = $phpid#0x8DFB446EDB3B8AE508AE493827A704E4 "Irbesartan, 75 mg/ 1 tablet, Tablet"
* code.coding[+] = $atc#C09DA04 "irbesartan and diuretics"
* form = $edqm#10219000 "Tablet"
* ingredient.itemCodeableConcept = $unii#J0E2756Z7N "irbesartan"
* ingredient.itemCodeableConcept.text = "irbesartan"
* ingredient.strength.numerator.value = 75
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "Tablet"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #{tablet}
Instance: 9ac3356c-4ea4-4814-84c3-235484f2ef19
InstanceOf: Medication
Usage: #inline
* code.coding[0] = $fake-man-sys#16028/0049 "Boots Decongestant 0.05% w/v Nasal spray"
* code.coding[+] = $phpid#0xF79CABF272B6A7EEF104DDDA44E82716 "Oxymetazoline hydrochloride, 0.5 mg/ 1 ml, Nasal spray, solution"
* code.coding[+] = $atc#R01AA05 "oxymetazoline"
// * form = $edqm#10808000 "Nasal spray, solution"
* form.text = "Nasal spray, solution"
* ingredient.itemCodeableConcept = $unii#K89MJ0S5VY "oxymetazoline hydrochloride"
* ingredient.itemCodeableConcept.text = "oxymetazoline hydrochloride"
* ingredient.strength.numerator.value = 0.05
* ingredient.strength.numerator.unit = "mg"
* ingredient.strength.numerator.system = $ucum
* ingredient.strength.numerator.code = #mg
* ingredient.strength.denominator.value = 1
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $ucum
* ingredient.strength.denominator.code = #ml
