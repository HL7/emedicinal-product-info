Maria is a 75 year old Norwegian woman, on two prescription medications (medicinal product #1 and medicinal product #2). She lives with her husband in their home, and uses glasses, hearing aid and a walker when she is outside. Maria uses mobile phone apps to help make it is easier to manage her medications (e.g., what to take, when, and when to refill).

While travelling in Cyprus, a Cypriot pharmacy/HCP recommends an Over the Counter (OTC) medication for her hay fever.

Maria needs to show the Greek/Cypriot pharmacist/HCP a list of her current medications. Her list is in Norwegian but the Cypriot pharmacist needs it in Greek or English.


**Scenario 1 - Find and display Patient Information Leaflet**
Scenario Actions: 
1. Locate Maria's IPS and extract the names or ID's of her two prescribed medications and information about known allergens.  
2. Locate the Patient Information Leaflets (in Norwegian, Greek and English) for the two prescribed medications using their name or IDs.

Technical Actions:
1. Acquire endpoint for FHIR server with IPS documents
2. Find Maria's IPS instance using her unique ID
3. Review Medication Summary section of Maria's IPS
4. Acquire list of Maria's active medications (i.e., product name and products unique ID)
5. Acquire endpoint for FHIR server with ePI documents
6. Find available ePI documents for Maria's active medications
7. Find Patient Information Leaflets for Maria's active medications
8. Display Patient Information Leaflets in a friendly manner for Maria


**Scenario 2 – Flag allergens in medication**
Scenario Actions:
1. Locate Maria's IPS and extract the names or ID's of her two prescribed medications and information about known allergens.  
2. Use the name or IDs of the two prescribed medications to locate their respective Patient Information Leaflets.
3. Compare the acquired allergen information to the  

Technical Actions:
1. Acquire endpoint for FHIR server with IPS documents
2. Find Maria's IPS instance using her unique ID
3. Review Medication Summary section of Maria's IPS
4. Acquire list of Maria's active medications (i.e., product name and products unique ID)
5. Review Allergies and Intolerances section of Maria's IPS
6. Acquire list of Maria's active allergies (i.e., list known allergies or ignore if code=No known allergies)
7. Acquire endpoint for FHIR server with ePI documents
8. Find available ePI documents for Maria's active medications
9. Find Patient Information Leaflets for Maria's active medications
10. Check Patient Information Leaflet and flag if any ingredients are on Maria's allergen list
