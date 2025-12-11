import json
import uuid
from datetime import datetime

# Load source data
with open("input/examples/morphine-source.json", "r") as f:
    source_bundle = json.load(f)

# Extract resources map
resources = {}
for entry in source_bundle["entry"]:
    res = entry["resource"]
    resources[res["resourceType"]] = res

# Keys
mpd_id = resources["MedicinalProductDefinition"]["id"]
org_id = resources["Organization"]["id"]
ppd_id = resources["PackagedProductDefinition"]["id"]

# Helper to create Common Composition
def create_composition(type_code):
    return {
        "resourceType": "Composition",
        "id": f"composition-morphine-type{type_code}",
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
        "title": "Package Leaflet: Information for the user - Morphine Unimedic 1 mg/ml",
        "section": [
            {
                "title": "1. What Morphine Unimedic is and what it is used for",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Morphine Unimedic contains the active substance morphine hydrochloride. It is an opioid analgesic used for severe pain.</p></div>"
                }
            },
             {
                "title": "2. What you need to know before you take Morphine Unimedic",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Do not take if allergic to morphine.</p></div>"
                }
            },
            {
                "title": "3. How to take Morphine Unimedic",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Use as directed by your doctor.</p></div>"
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>May cause nausea, vomiting, or constipation.</p></div>"
                }
            },
             {
                "title": "5. How to store Morphine Unimedic",
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Keep out of reach of children.</p></div>"
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
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Content: Morphine hydrochloride 1 mg/ml.</p></div>"
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
        "id": "cud-indication-pain",
        "type": "indication",
        "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
        "indication": {
            "diseaseSymptomProcedure": {
                "concept": {"coding": [{"system": "http://snomed.info/sct","code": "22253000","display": "Pain"}]}
            }
        }
    })

    # Contraindication
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-contra-asthma",
         "type": "contraindication",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "contraindication": {
             "diseaseSymptomProcedure": {
                 "concept": {"coding": [{"system": "http://snomed.info/sct","code": "195967001","display": "Acute asthma"}]}
             }
         }
    })

    # Interaction
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-interact-alcohol",
         "type": "interaction",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "interaction": {
             "interactant": [{"itemCodeableConcept": {"coding": [{"system": "http://snomed.info/sct","code": "35368007","display": "Alcohol"}]}}]
         }
    })
    
     # Warning
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-warning-dependence",
         "type": "warning",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "warning": {
             "description": "Risk of opioid dependence."
         }
    })

     # Undesirable Effect
    clinicals.append({
         "resourceType": "ClinicalUseDefinition",
         "id": "cud-side-nausea",
         "type": "undesirable-effect",
         "subject": [{"reference": f"MedicinalProductDefinition/{mpd_id}"}],
         "undesirableEffect": {
             "symptomConditionEffect": {"concept": {"coding": [{"system": "http://snomed.info/sct","code": "422587007","display": "Nausea"}]}}
         }
    })
    
    return clinicals

def create_medication_knowledge():
    return {
        "resourceType": "MedicationKnowledge",
        "id": "mk-morphine",
        "status": "active",
        "code": {
            "coding": [{"system": "http://snomed.info/sct", "code": "373465005", "display": "Morphine"}]
        },
        "indicationGuideline": [
            {
                "dosingGuideline": [{
                    "treatmentIntent": {
                        "coding": [{"system": "http://snomed.info/sct", "code": "225339009", "display": "Analgesia"}] 
                    },
                    "dosage": [{"dosage": {"text": "10 mg every 4 hours"}}]
                }]
            }
        ]
    }


# Build Bundles

# Type 1
t1_comp = create_composition(1)
t1_bundle = {
    "resourceType": "Bundle",
    "id": "bundle-epi-type1-example-morphine",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [
        {"resource": t1_comp},
        {"resource": resources["Organization"]}
    ]
}

# Type 2
t2_comp = create_composition(2)
t2_resources = [t2_comp]
# Add source entries resource
for entry in source_bundle["entry"]:
    t2_resources.append(entry["resource"])

t2_bundle = {
     "resourceType": "Bundle",
    "id": "bundle-epi-type2-example-morphine",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [{"resource": r} for r in t2_resources]
}

# Type 3
t3_comp = create_composition(3)
t3_resources = [t3_comp]
for entry in source_bundle["entry"]:
    t3_resources.append(entry["resource"])

clinicals = create_clinical_resources()
med_know = create_medication_knowledge()

t3_resources.extend(clinicals)
t3_resources.append(med_know)

# Update T3 composition to link clinicals
t3_comp["section"][0]["entry"] = [{"reference": f"ClinicalUseDefinition/{c['id']}"} for c in clinicals]
t3_comp["section"][0]["entry"].append({"reference": f"MedicationKnowledge/{med_know['id']}"})


t3_bundle = {
     "resourceType": "Bundle",
    "id": "bundle-epi-type3-example-morphine",
    "type": "document",
    "timestamp": datetime.now().isoformat(),
    "entry": [{"resource": r} for r in t3_resources]
}

# Write files
with open("input/examples/bundle-epi-type1-example-morphine.json", "w") as f:
    json.dump(t1_bundle, f, indent=4)
with open("input/examples/bundle-epi-type2-example-morphine.json", "w") as f:
    json.dump(t2_bundle, f, indent=4)
with open("input/examples/bundle-epi-type3-example-morphine.json", "w") as f:
    json.dump(t3_bundle, f, indent=4)

print("Bundles created successfully.")
