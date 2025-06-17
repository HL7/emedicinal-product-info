# Use Cases

Not all 14 resources are required to support all ePI-related use cases. Different resources can be combined to support various scenarios. To assist implementers in selecting the appropriate resources, ePI resources are arranged into the following four types and sub-types:

<table style="border-collapse: collapse; width: 100%;">
    <thead>
        <tr>
            <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">ePI Type</th>
            <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Type</th>
            <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">1</td>
            <td style="border: 1px solid black; padding: 8px;">Bundle, Composition (contained Binary)</td>
            <td style="border: 1px solid black; padding: 8px;">Reproduces the local label template, including section headings, text, bullets, tables, and images, in a semi-structured format.</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">2</td>
            <td style="border: 1px solid black; padding: 8px;">Includes Type 1 plus: Organization, Medicinal Product Definition, Regulated Product, Manufactured Product Definition (Ingredient, Molecule), Automated Product Description (Ingredient, Description), Packaged Product</td>
            <td style="border: 1px solid black; padding: 8px;">Captures company details (name, identifier, address, type); details regulatory information (product name, category, regulatory status); specifies authorization details (approval date, license number); describes physical properties of the product in its primary package (strength, ingredients, size, color, shape); details the product's final administrable form (e.g., after reconstitution); describes primary and secondary packaging layers.</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">3</td>
            <td style="border: 1px solid black; padding: 8px;">Includes Types 1 and 2 plus: Clinical Use Definition, Medication Statement</td>
            <td style="border: 1px solid black; padding: 8px;">Structures clinical particulars (indications, contraindications, interactions, undesirable effects, warnings); provides structured dose instructions for machine-readable use.</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">4</td>
            <td style="border: 1px solid black; padding: 8px;">Includes Types 1, 2, and 3, with: fully structured data components replacing semi-structured narrative, Dose Structure for machine-readable dosing, granular clinical particulars for enhanced personalization and computability</td>
            <td style="border: 1px solid black; padding: 8px;">Represents a digital-first, fully structured ePI where all content is encoded as discrete data elements. Narrative text is minimized and embedded within structured components. Supports advanced personalization, computability, and granular control of clinical and dosing information.</td>
        </tr>
    </tbody>
</table>

Refer to [ePI Components](components.html) for an overview of in-scope resources or the [Artifacts page](artifacts.html) for details on profiles, terminologies, and examples.

## ePI Type 1

**Description**: ePI Type 1 is the minimum requirement for an ePI, enabling the recreation of existing label templates in a semi-structured format. It supports the creation of Healthcare Professional (HCP) labels, Patient Information Leaflets (PILs), or label text for artwork, such as EMA’s QRD template.

**Benefits**:
- Ensures compatibility with existing regulatory label formats.
- Facilitates digital rendering of labels for web or mobile applications.
- Supports multilingual label generation for global accessibility.

**Use Cases**:
1. **Regulatory Compliance**: Generates digital versions of approved labels for submission to regulatory authorities.
2. **Patient Education**: Provides accessible, readable PILs for patients via apps or websites.
3. **Artwork Generation**: Supplies structured text for packaging and labeling design.

## ePI Type 2 (a to f)

**Description**: Builds on Type 1 by adding resources to describe the company, product, authorization, physical properties, dose form, and packaging, enabling advanced search and interoperability.

**Benefits**:
- Enhances product identification across global markets.
- Supports supply chain transparency and traceability.
- Enables cross-border recognition of medicinal products.

**Use Cases**: ePI Type 2 uses resources like Organization, Medicinal Product Definition, Regulated Product, Manufactured Product Definition, Automated Product Description, and Packaged Product to support various scenarios. The table below lists key use cases and the specific resources required for each, making it easier to implement targeted functionality.

<table style="border-collapse: collapse; width: 100%;">
    <thead>
        <tr>
            <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Use Case</th>
            <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Description</th>
            <th style="border: 1px solid black; padding: 8px; text-align: left; background-color: #f2f2f2;">Key Resources</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Advanced Search</td>
            <td style="border: 1px solid black; padding: 8px;">Search by company, product name, license, manufactured form, administrable form, or packaging details.</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Regulated Product, Manufactured Product Definition, Automated Product Description, Packaged Product</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Drug Shortages</td>
            <td style="border: 1px solid black; padding: 8px;">Identify alternative products by company, product, license, manufactured form, and packaging to address shortages.</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Regulated Product, Manufactured Product Definition, Packaged Product</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Cross-border Travel</td>
            <td style="border: 1px solid black; padding: 8px;">Match prescriptions across borders using company and product details.</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Manufactured Product Definition</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Distribution</td>
            <td style="border: 1px solid black; padding: 8px;">Support ordering and distribution with product and pack identifiers (e.g., GTIN, SKUs).</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Regulated Product, Packaged Product</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Allergens</td>
            <td style="border: 1px solid black; padding: 8px;">Identify potential allergens (e.g., lactose, aspartame) in ingredients.</td>
            <td style="border: 1px solid black; padding: 8px;">Manufactured Product Definition (Ingredient)</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Electronic Health</td>
            <td style="border: 1px solid black; padding: 8px;">Support Electronic Medical Records (EMR) and ePrescription by uniquely identifying products and manufacturers. Optionally, differentiate manufactured and administrable forms.</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Regulated Product, Manufactured Product Definition, Automated Product Description</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Pharmacovigilance</td>
            <td style="border: 1px solid black; padding: 8px;">Track products by manufacturer, authorization, and packaging for adverse event reporting.</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Regulated Product, Packaged Product</td>
        </tr>
        <tr>
            <td style="border: 1px solid black; padding: 8px;">Inventory Management</td>
            <td style="border: 1px solid black; padding: 8px;">Optimize stock management using packaging and product details.</td>
            <td style="border: 1px solid black; padding: 8px;">Organization, Medicinal Product Definition, Regulated Product, Packaged Product</td>
        </tr>
    </tbody>
</table>

## ePI Type 3 (a and b)

**Description**: Extends Types 1 and 2 with structured clinical particulars and dosing instructions, supporting personalization and interoperability with electronic health services.

**Benefits**:
- Enables tailored clinical decision support for polypharmacy and allergies.
- Supports automated dosing reminders via apps or devices.
- Enhances patient safety through structured interaction data.

**Use Cases**:
1. **Polypharmacy Personalization**: Use structured interaction data to identify drug:drug, drug:food, drug:lab, or drug:other interactions for individual patients.
2. **Automated Dosing Instructions**: Encode dosing instructions (e.g., "take two 20 mg tablets daily for two weeks") for delivery to mobile apps or eHealth platforms.
3. **Clinical Decision Support**: Integrate structured clinical particulars into EMR systems to alert healthcare professionals or patients about interactions, contraindications, or warnings.
4. **Patient Adherence**: Send automated reminders or alerts to patients via apps.

## ePI Type 4

**Description**: ePI Type 4 adopts a fully structured, digital-first approach, where all content is encoded as discrete data elements using standardized terminologies (e.g., SNOMED, ICD, MED-RT, MedDRA). Narrative text is minimized and embedded within structured components only where necessary. It incorporates the **Dose Structure** for machine-readable dosing information and provides granular control of clinical particulars, enabling advanced personalization, computability, and interoperability.

**Benefits**:
- **Maximized Computability**: Fully structured data supports advanced analytics, AI-driven insights, and integration with clinical systems.
- **Enhanced Personalization**: Granular clinical and dosing data enables tailored patient care, such as customized dosing regimens or interaction alerts.
- **Interoperability**: Standardized data facilitates seamless data exchange across global healthcare systems.
- **Improved Accessibility**: Structured data can be transformed into various formats (e.g., tables, apps, or voice assistants) for diverse user needs.
- **Regulatory Efficiency**: Structured data simplifies updates, submissions, and review by health authorities.

**Use Cases**:
1. **Personalized Medicine**: Use granular clinical particulars (e.g., indications, contraindications) to tailor treatment plans based on patient comorbidities, interactions, or conditions.
2. **Precision Dosing**: Leverage the Dose Structure to encode complex dosing regimens (e.g., "titrate 10 mg daily for 1 week, then 20 mg daily") for integration with smart devices or apps.
3. **Advanced Clinical Decision Support**: Integrate structured clinical particulars into EMRs to provide real-time alerts for drug interactions, contraindications, or adverse effects. E.g., Alert a clinician if a prescribed drug interacts with a patient’s existing medications.
4. **Pharmacovigilance Analytics**: Use structured adverse effect data (e.g., frequency, severity) to monitor and analyze safety signals across populations.
5. **Patient Empowerment**: Transform structured data into patient-friendly formats (e.g., voice assistants, apps) to provide tailored instructions or warnings.
6. **Automation and Content Reuse**: Streamline label updates by modifying discrete data components and reusing those same components in dependent labels, thereby reducing manual editing and errors.
7. **AI-Driven Insights**: Enable AI models to analyze structured ePI data for drug discovery, interaction prediction, or population health trends.
8. **Accessibility**: Use structured, multilingual data to deliver tailored health information to underserved populations via low-bandwidth apps.

## Recommendation

**ePI Type 2** remains the recommended starting point for most implementers, as it enables advanced search, cross-border access, and foundational support for electronic health records, ePrescriptions, and allergen identification. For implementers aiming for advanced personalization, computability, and digital transformation, **ePI Type 4** is the ultimate goal, offering fully structured data, machine-readable dosing, and granular clinical control to support next-generation healthcare applications.
