
### Overview
Electronic Medicinal Product Information (ePI) is exchangeable as structured FHIR Bundles (XML or JSON). Since raw code is not suitable for end-users (patients, healthcare professionals), this data must be rendered into a human-readable format, typically HTML.

This page provides guidance and examples on transforming ePI Bundles into user-friendly HTML displays using CSS.

<div class="markdown-alert markdown-alert-note">
<p class="markdown-alert-title">Note</p>
<p><strong>Implementation Flexibility:</strong> The style sheet and HTML renderings included in this IG are merely provided as examples. There is no obligation to use this style sheet. Each implementation of ePI is subject to national regulatory rules and best practices. Implementers are free to reuse this style sheet as is, modify the style sheet to suit their needs, or make their own style sheet.</p>
</div>

### Design Philosophy
It is best practice to follow **WCAG principles** (accessibility) and **standard web-design principles** (usability, responsiveness).

**Critical Rule:** The rendering process (HTML/CSS) should only change the visual appearance and add navigational aids (e.g., accordions, tables of contents). It should avoid altering the actual text or meaning of the content. This ensures that the style sheet and HTML rendering process does not compromise any national regulatory rules regarding the authorized content.

The example provided in this IG demonstrates a **Card-based Layout** with **Accordion** sections. This approach ensures:
- **Hierarchy**: Clear distinction between the broad Product Details and specific strengths.
- **Readability**: Clean, high-contrast content areas.
- **Responsiveness**: A layout that adapts to desktop and mobile screens.

### HTML Structure
The HTML rendition should map the hierarchical structure of the FHIR Bundle:
1. **Header**: Derived from `MedicinalProductDefinition` (Names, key marketing info).
2. **Product Details**: A container for all `PackagedProductDefinition` entries, often grouped by strength.
3. **Package Leaflet**: The Narrative content from the `Composition` resource.

### Example Stylesheet (CSS)
You can download the standalone stylesheet used in our examples here:
*   [epi-styles.css](epi-styles.css){:target="_blank"}

This stylesheet provides the "Modern Visual Grid" look, featuring rounded cards, collapsible accordions, and color-coded sections for Ingredients (Blue), Regulatory (Green), Packaging (Purple), Appearance (Orange), and Clinical Knowledge (Teal).

### Rendered Examples
View the fully rendered HTML examples below to see the stylesheet in action:

*   **Type 2 (Paracetamol)**: [bundle-epi-type2-example-paracetamol.html](examples/bundle-epi-type2-example-paracetamol.html){:target="_blank"}
*   **Type 3 (WonderDrug)**: [bundle-epi-type3-example-wonderdrug.html](examples/bundle-epi-type3-example-wonderdrug.html){:target="_blank"}
