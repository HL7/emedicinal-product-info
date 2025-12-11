import json
from datetime import datetime

# Load source data
with open("input/examples/betaklav-source.json", "r") as f:
    source_bundle = json.load(f)

# Extract resources map
resources = {}
source_entries = []
for entry in source_bundle["entry"]:
    res = entry["resource"]
    resources[res["resourceType"]] = res
    source_entries.append(res)

# Keys - assuming single MPD, Org as in source
mpd_id = resources["MedicinalProductDefinition"]["id"]
org_id = resources["Organization"]["id"]

# Helper to create Common Composition
def create_composition(type_code):
    return {
        "resourceType": "Composition",
        "id": f"composition-betaklav-type{type_code}",
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
        "title": "Package Leaflet: Information for the user - Betaklav 500 mg/125 mg",
        "section": [
            {
                "title": "1. What Betaklav is and what it is used for",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Betaklav is an antibiotic and works by killing bacteria that cause infections. It contains two different medicines called amoxicillin and clavulanic acid.</p></div>"
                }
            },
             {
                "title": "2. What you need to know before you take Betaklav",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Do not take Betaklav if you are allergic to amoxicillin, clavulanic acid, penicillin or any of the other ingredients of this medicine.</p></div>"
                }
            },
            {
                "title": "3. How to take Betaklav",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Always take this medicine exactly as your doctor or pharmacist has told you.</p></div>"
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Common side effects may include diarrhea, thrush (candida), feeling sick (nausea) or being sick (vomiting).</p></div>"
                }
            },
             {
                "title": "5. How to store Betaklav",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Keep this medicine out of the sight and reach of children. Store in the original package in order to protect from moisture.</p></div>"
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The active substances are amoxicillin and clavulanic acid.</p></div>"
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
        "id": "cud-indication-infection",
        "type": "indication",
        "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
        "indication": {
            "diseaseSymptomProcedure": {
                "concept": {"coding": [{"system": "http://snomed.info/sct","code": "40733004","display": "Bacterial infectious disease"}]}
            }
        }
    })

    # Contraindication
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-contra-penicillin-allergy",
         "type": "contraindication",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "contraindication": {
             "diseaseSymptomProcedure": {
                 "concept": {"coding": [{"system": "http://snomed.info/sct","code": "91936005","display": "Allergy to penicillin"}]}
             }
         }
    })

    # Interaction
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-interact-methotrexate",
         "type": "interaction",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "interaction": {
             "interactant": [{"itemCodeableConcept": {"coding": [{"system": "http://snomed.info/sct","code": "372567009","display": "Methotrexate"}]}}]
         }
    })
    
     # Warning
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-warning-hepatic",
         "type": "warning",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "warning": {
             "description": "Use with caution in patients with hepatic impairment."
         }
    })

     # Undesirable Effect
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-side-diarrhea",
         "type": "undesirable-effect",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "undesirableEffect": {
             "symptomConditionEffect": {"concept": {"coding": [{"system": "http://snomed.info/sct","code": "62315008","display": "Diarrhea"}]}}
         }
    })
    
    return clinicals

def create_medication_knowledge():
    return {
        "resourceType": "MedicationKnowledge",
        "id": "mk-betaklav",
        "status": "active",
        "code": {
            "coding": [{"system": "http://snomed.info/sct", "code": "777067007", "display": "Amoxicillin + Clavulanic Acid"}]
        },
        "indicationGuideline": [
            {
                "dosingGuideline": [{
                    "treatmentIntent": {
                        "coding": [{"system": "http://snomed.info/sct", "code": "373808002", "display": "Anti-infective treatment"}] 
                    },
                    "dosage": [{"dosage": {"text": "One 500 mg/125 mg tablet every 8 hours"}}]
                }]
            }
        ]
    }


# Build Bundles

# Type 2
t2_comp = create_composition(2)
t2_resources = [t2_comp] + source_entries
t2_bundle = {
     "resourceType": "Bundle",
    "id": "bundle-epi-type2-example-betaklav",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [{"resource": r} for r in t2_resources]
}

# Type 3
t3_comp = create_composition(3)
t3_resources = [t3_comp] + source_entries

clinicals = create_clinical_resources()
med_know = create_medication_knowledge()

t3_resources.extend(clinicals)
t3_resources.append(med_know)

# Update T3 composition to link clinicals
t3_comp["section"][0]["entry"] = [{"reference": f"ClinicalUseDefinition/{c['id']}"} for c in clinicals]
t3_comp["section"][0]["entry"].append({"reference": f"MedicationKnowledge/{med_know['id']}"})


t3_bundle = {
     "resourceType": "Bundle",
    "id": "bundle-epi-type3-example-betaklav",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [{"resource": r} for r in t3_resources]
}

# Write files
with open("input/examples/bundle-epi-type2-example-betaklav.json", "w") as f:
    json.dump(t2_bundle, f, indent=4)
with open("input/examples/bundle-epi-type3-example-betaklav.json", "w") as f:
    json.dump(t3_bundle, f, indent=4)

print("Bundles created successfully.")
