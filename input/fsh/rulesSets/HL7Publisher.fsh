// Publisher and contact required by HL7 for resources owned by the BR&R work group
RuleSet: HL7Publisher
* ^publisher = "HL7 International / Biomedical Research and Regulation"
* ^contact[+].name = "HL7 International / Biomedical Research and Regulation"
* ^contact[=].telecom[+].system = #url
* ^contact[=].telecom[=].value = "http://www.hl7.org/Special/committees/rcrim"
