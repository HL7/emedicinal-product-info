Here is the comprehensive framework for your Type 4 ePI implementation, organized as an editable technical brief. You can copy and paste this directly into a shared document (like Word or a Wiki) or an email body for your team.
Technical Framework: Building a FHIR ePI Type 4 (Granular Implementation)
1. Executive Summary & Business Rationale
The objective of Type 4 granularity is to transition from "digital paper" to a Digital Twin of the medicinal product. By decomposing text into discrete, coded statements, we enable:
 * Personalized Labeling: Dynamically filtering content (e.g., pediatric vs. adult) based on patient demographics.
 * Batch-Specific Deltas: Automatically updating excipient warnings (e.g., Aspartame) based on the physical formulation of a specific batch without a manual rewrite of the entire label.
 * Machine Interpretability: Allowing clinical systems to consume and act on labeling data automatically.
2. End-to-End Methodology
Step 1: Segmentation and Atomic Decomposition
Extract content from the Word source and break it into “atomic” statements—the smallest clinical facts that remain meaningful on their own.
 * Example: "Do not take if you are allergic to fluconazole" is an atomic contraindication.
Step 2: Deep Composition Hierarchy
To ensure a 1:1 mapping between text and data, use the recursive section.section element in the Composition resource. This avoids the "Flat Section" flaw where one text block contains multiple data points.
 * Container Section: The high-level SmPC section (e.g., 4.1 Therapeutic Indications).
 * Modular Nodes: Nested sub-sections for each specific indication.
Step 3: Resource Mapping & IDMP Alignment
Map each statement to the appropriate FHIR resource based on clinical meaning.
| SmPC Section | Clinical Domain | Primary FHIR Resource | Implementation Strategy |
|---|---|---|---|
| 4.1 | Indications | ClinicalUseDefinition | Set type = indication. |
| 4.3 | Contraindications | ClinicalUseDefinition | Set type = contraindication. |
| 4.2 | Dosing/Method | MedicationKnowledge | Use for posology and method of administration. |
| 4.8 | Side Effects | ClinicalUseDefinition | Set type = adverse-effect. |
| 2.0 / 6.1 | Ingredients | Ingredient | Role = active or excipient. |
| 3.0 | Pharm. Form | ManufacturedItemDefinition | Captures physical characteristics. |
| 6.3 - 6.5 | Pack/Storage | PackagedProductDefinition | For shelf life and packaging details. |
Step 4: Semantic Text Tagging (<span>)
Within the <text> block of each section, use <span> elements as semantic anchors.
 * Purpose: These tags allow systems to "reach into" a paragraph and identify specific values (e.g., a 372-hour half-life) or "hot-swap" batch-specific text without replacing the whole paragraph.
Step 5: Coding & Linking
Encode every component using controlled terminologies for global regulatory alignment.
 * SNOMED CT: For indications, contraindications, and substances.
 * MedDRA: The regulatory standard for adverse effects.
 * Linking: Use reference and subject fields to link resources (e.g., linking a ClinicalUseDefinition back to the MedicinalProductDefinition).
3. Capability Statement: Type 4 System Requirements
A system compliant with this framework SHALL support:
 * Node-Level Retrieval: Fetching a specific sub-section independently of the parent label.
 * Dynamic Assembly: Rendering a label based on external filters (Age, Sex, Batch ID).
 * Semantic Binding: Maintaining a 1:1 relationship between a <span> in the text and a numeric value in a resource.
 * Multi-Logic Handling: Representing complex administration (e.g., epigastric tube) via multiple linked resources (e.g., one indication for use and one warning for physical handling like crushing).
4. Technical Implementation Examples (XML)
Example: Section 4.1 (Multi-Indication Hierarchy)
<section>
    <title value="4.1 Therapeutic indications"/>
    <section>
        <title value="Schizophrenia - Adults"/>
        <text><div xmlns="http://www.w3.org/1999/xhtml">Indicated for schizophrenia in <span class="pop">adults</span>.</div></text>
        <entry><reference value="ClinicalUseDefinition/cud-adult-schiz"/></entry>
    </section>
    <section>
        <title value="Schizophrenia - Adolescents"/>
        <text><div xmlns="http://www.w3.org/1999/xhtml">Indicated for schizophrenia in <span class="pop">adolescents (15+)</span>.</div></text>
        <entry><reference value="ClinicalUseDefinition/cud-adol-schiz"/></entry>
    </section>
</section>

Example: Section 5.2 (Semantic PK Tagging)
<section>
    <title value="5.2 Pharmacokinetic properties"/>
    <text>
        <div xmlns="http://www.w3.org/1999/xhtml">
            <p>The mean terminal elimination half-life (t1/2) was 
               <span id="pk-half-life" class="data-point">372 (range 333 to 405) hours</span>.
            </p>
        </div>
    </text>
</section>
