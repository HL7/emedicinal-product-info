### FHIR ePI Documents 
As noted in the background, ePIs take three forms:
1. Information for healthcare professionals
2. Information for patients
3. Information on the package label


ePI documents are made up of the following five components: 
- Narrative - Section headings, paragraphs, bulleted lists, tables
- Document data - Date of approval, date of last update, unique identifiers
- Medicinal Product data - dosage form, strength, route of adminisation, ingredients, packaging
- Organization data - Name, address, unique identifiers, and contact information
- Clinical use data - Contraindication, indications, warnings and precautions


### Overview of the FHIR Resources that make up the Core ePI Profile 
This Implementation Guide recommends the use of the following thirteen resources to support the creation and exchange of ePIs:
- List
- Bundle
- Composition
- Organization
- Regulated Authorization
- Medicinal Product Definition
- Administrable Product Definition
- Manufactured Item Definition
- Ingredient
- Substance Definition
- Packaged Product Definition
- Clinical Use Definition
- Binary


It is not mandatory for any implementers to use all thirteen resources for all ePIs. Dependent on the region, or dependent on the use case, implementers may choose to use all or some of the thirteen resources. For example, health authorities are encouraged to use combinations of these resources to recreate their national ePI templates with these resources. Thus, allowing them to reap the benefits of FHIR while still maintaining compliance with local regulations and local ePI templates with regulated section and sub-section headings. Although optional, this IG does recommends adopting one of the three general approaches described below to encourage consistency.


The **simplified ePI approach** supports the narrative and only a list of medicinal product. However, it does not include any product details beyond name and identifiers:
- List
- Bundle
- Composition
- Binary

**Figure 1 Resource relationship hierarchy for a simplified ePI**   



The **intermediate ePI approach** supports the narrative and product information. However, it does not include structured clinical use information:
- List
- Bundle
- Composition
- Organization
- Regulated Authorization
- Medicinal Product Definition
- Administrable Product Definition
- Manufactured Item Definition
- Ingredient
- Substance Definition
- Packaged Product Definition
- Binary  


**Figure 3 Resource relationship hierarchy for an intermediate ePI**   


The **advanced ePI approach** supports the narrative, product information, and structured clinical use information:
- List
- Bundle
- Composition
- Organization
- Regulated Authorization
- Medicinal Product Definition
- Administrable Product Definition
- Manufactured Item Definition
- Ingredient
- Substance Definition
- Packaged Product Definition
- Clinical Use Definition
- Binary


**Figure 3 Resource relationship hierarchy for an advanced ePI**     

<figure>
  <img style="padding-top:0;padding-bottom:0" src="figure1-epi-resource-relationship.png" alt="ePI Resource Relationship"/>
  <figcaption>Core ePI resource relationship diagram</figcaption>
</figure>

