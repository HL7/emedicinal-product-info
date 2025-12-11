import json
from datetime import datetime

# Load source data
with open("input/examples/aprokam-source.json", "r") as f:
    source_bundle = json.load(f)

# Extract resources map
source_entries = []
resources = {}

for entry in source_bundle["entry"]:
    res = entry["resource"]
    resources[res["resourceType"]] = res
    source_entries.append(res)

# Keys
mpd_id = resources["MedicinalProductDefinition"]["id"]
org_id = resources["Organization"]["id"]
mid_id = resources["ManufacturedItemDefinition"]["id"]
apd_id = resources["AdministrableProductDefinition"]["id"]

# Excipients to add
excipients_list = [
    "Carnauba Wax", "Silicon Dioxide", "Croscarmellose Sodium", 
    "Glyceryl Dibehenate", "Hypromellose", "Polydextrose", 
    "Polyethylene Glycol", "Corn Starch", "Titanium Dioxide", 
    "Ferrosoferric Oxide", "Propylene Glycol", "Sodium Lauryl Sulfate"
]

def create_excipient(name, index):
    return {
        "resourceType": "Ingredient",
        "id": f"aprokam-excipient-{index}",
        "status": "active",
        "for": [
            {"reference": f"MedicinalProductDefinition/{mpd_id}"},
            {"reference": f"ManufacturedItemDefinition/{mid_id}"},
            {"reference": f"AdministrableProductDefinition/{apd_id}"}
        ],
        "role": {
            "coding": [{
                "system": "https://spor.ema.europa.eu/v1/lists/100000072050",
                "code": "100000072082",
                "display": "Excipient"
            }]
        },
        "substance": {
            "code": {
                "concept": {
                    "coding": [{
                        "system": "https://spor.azure-api.net/sms/api/v2/SubstanceDefinition",
                        "code": f"E-CODE-{index}", 
                        "display": name
                    }]
                }
            }
        }
    }

# Create Excipient Resources
excipient_resources = []
for i, name in enumerate(excipients_list, 1):
    excipient_resources.append(create_excipient(name, i))

# Helper to create Common Composition
def create_composition(type_code):
    return {
        "resourceType": "Composition",
        "id": f"composition-aprokam-type{type_code}",
        "meta": {
            "profile": [f"http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/composition-epi-type{type_code}"]
        },
        "status": "final",
        "type": {
            "coding": [
                {
                    "system": "https://spor.ema.europa.eu/v1/lists/100000155531",
                    "code": "100000155538",
                    "display": "Package Leaflet"
                }
            ]
        },
        "subject": [
            {
                "reference": f"MedicinalProductDefinition/{mpd_id}"
            }
        ],
        "date": datetime.now().strftime("%Y-%m-%d"),
        "author": [
            {
                "reference": f"Organization/{org_id}"
            }
        ],
        "title": "Package Leaflet: Information for the user - Aprokam 50 mg Powder",
        "section": [
            {
                "title": "1. What Aprokam is and what it is used for",
                "code": {
                    "coding": [
                        {
                            "system": "https://spor.ema.europa.eu/v1/lists/200000029659",
                            "code": "200000029895",
                            "display": "What X is and what it is used for"
                        }
                    ]
                },
                "text": {
                    "status": "additional",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Aprokam contains cefuroxime (as sodium). It is an antibiotic used to prevent eye infections after cataract surgery.</p></div>"
                }
            },
             {
                "title": "2. What you need to know before you take Aprokam",
                "code": {
                    "coding": [
                        {
                            "system": "https://spor.ema.europa.eu/v1/lists/200000029659",
                            "code": "200000029896",
                            "display": "What you need to know before you take X"
                        }
                    ]
                },
                "text": {
                    "status": "additional",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Do not be given Aprokam if you are allergic to cefuroxime, or any of the cephalosporin antibiotics.</p></div>"
                }
            },
            {
                "title": "3. How to take Aprokam",
                 "code": {
                    "coding": [
                        {
                            "system": "https://spor.ema.europa.eu/v1/lists/200000029659",
                            "code": "200000029905",
                            "display": "How to take X"
                        }
                    ]
                },
                "text": {
                    "status": "additional",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Aprokam will be administered by an ophthalmic surgeon.</p></div>"
                }
            },
            {
                "title": "4. Possible side effects",
                 "code": {
                    "coding": [
                        {
                            "system": "https://spor.ema.europa.eu/v1/lists/200000029659",
                            "code": "200000029906",
                            "display": "Possible side effects"
                        }
                    ]
                },
                "text": {
                    "status": "additional",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Rare side effects include serious allergic reaction.</p></div>"
                }
            },
             {
                "title": "5. How to store Aprokam",
                 "code": {
                    "coding": [
                        {
                            "system": "https://spor.ema.europa.eu/v1/lists/200000029659",
                            "code": "200000029907",
                            "display": "How to store X"
                        }
                    ]
                },
                "text": {
                    "status": "additional",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Keep this medicine out of the sight and reach of children. Store below 25°C. Keep vial in the outer carton.</p></div>"
                }
            },
            {
                "title": "6. Contents of the pack and other information",
                 "code": {
                    "coding": [
                        {
                            "system": "https://spor.ema.europa.eu/v1/lists/200000029659",
                            "code": "200000029908",
                            "display": "Contents of the pack and other information"
                        }
                    ]
                },
                "text": {
                    "status": "additional",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The active substance is cefuroxime (as sodium). Each vial contains 50 mg cefuroxime.</p></div>"
                }
            }
        ]
    }

# Clinical Resources for Type 3
def create_clinical_resources():
    clinicals = []
    
    # Indication
    clinicals.append({
        "resourceType": "ClinicalUseDefinition",
        "id": "cud-indication-prophylaxis",
        "type": "indication",
        "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
        "indication": {
            "diseaseSymptomProcedure": {
                "concept": {"coding": [{"system": "http://snomed.info/sct","code": "123456","display": "Antibiotic prophylaxis of postoperative endophthalmitis after cataract surgery"}]}
            }
        }
    })

    # Contraindication
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-contra-cefuroxime-allergy",
         "type": "contraindication",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "contraindication": {
             "diseaseSymptomProcedure": {
                 "concept": {"coding": [{"system": "http://snomed.info/sct","code": "91936005","display": "Hypersensitivity to Cefuroxime"}]}
             }
         }
    })
    
    return clinicals

def create_medication_knowledge():
    return {
        "resourceType": "MedicationKnowledge",
        "id": "mk-aprokam",
        "status": "active",
        "code": {
            "coding": [{"system": "http://snomed.info/sct", "code": "372517004", "display": "Cefuroxime"}]
        },
        "indicationGuideline": [
            {
                "dosingGuideline": [{
                    "treatmentIntent": {
                        "coding": [{"system": "http://snomed.info/sct", "code": "373808002", "display": "Prophylaxis"}] 
                    },
                    "dosage": [{"dosage": {"text": "0.1 ml of reconstituted solution (1 mg) intended for intracameral injection"}}]
                }]
            }
        ]
    }


# Build Bundles

# Type 2
t2_comp = create_composition(2)
t2_resources = [t2_comp] + source_entries + excipient_resources
t2_bundle = {
     "resourceType": "Bundle",
    "id": "bundle-epi-type2-example-aprokam",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [{"resource": r} for r in t2_resources]
}

# Type 3
t3_comp = create_composition(3)
t3_resources = [t3_comp] + source_entries + excipient_resources

clinicals = create_clinical_resources()
med_know = create_medication_knowledge()

t3_resources.extend(clinicals)
t3_resources.append(med_know)

# Update T3 composition to link clinicals
t3_comp["section"][0]["entry"] = [{"reference": f"ClinicalUseDefinition/{c['id']}"} for c in clinicals]
t3_comp["section"][0]["entry"].append({"reference": f"MedicationKnowledge/{med_know['id']}"})


t3_bundle = {
     "resourceType": "Bundle",
    "id": "bundle-epi-type3-example-aprokam",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [{"resource": r} for r in t3_resources]
}

# Write files
with open("input/examples/bundle-epi-type2-example-aprokam.json", "w") as f:
    json.dump(t2_bundle, f, indent=4)
with open("input/examples/bundle-epi-type3-example-aprokam.json", "w") as f:
    json.dump(t3_bundle, f, indent=4)

print("Aprokam bundles created successfully.")
