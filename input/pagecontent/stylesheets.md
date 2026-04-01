Electronic Medicinal Product Information (ePI) documents and their associated tracking registries (ePI Tracking Lists) are structured as FHIR `Bundle` and `List` resources, respectively. Since raw XML or JSON code is not suitable for end-users (patients, healthcare professionals, or regulators), this data must be rendered into modern, human-readable interfaces.

This page provides guidance and standalone examples for transforming both **individual ePI Bundles** and **ePI Tracking Lists** into user-friendly HTML displays using CSS.

<div class="markdown-alert markdown-alert-note">
<p class="markdown-alert-title">NOTE</p>
<p><strong>Implementation Flexibility</strong>: The stylesheet and HTML renderings included in this IG are provided as best-practice examples. Implementers are free to reuse this stylesheet, modify it, or develop their own according to national regulatory rules.</p>
</div>

### Design Philosophy
It is best practice to follow **WCAG principles** (accessibility) and **standard web-design principles** (usability, responsiveness).

**Critical Rule:** The rendering process (HTML/CSS) should only change the visual appearance and add navigational aids (e.g., accordions, tables of contents). It should avoid altering the actual text or meaning of the content. This ensures that the style sheet and HTML rendering process does not compromise any national regulatory rules regarding the authorized content.

The example provided in this IG demonstrates a **Card-based Layout** with **Accordion** sections. This approach ensures:
- **Hierarchy**: Clear distinction between the broad Product Details and specific strengths.
- **Readability**: Clean, high-contrast content areas.
- **Responsiveness**: A layout that adapts to desktop and mobile screens.


### Example Stylesheets (CSS)
You can download the standalone stylesheets used in our examples here:

**1. ePI Document Stylesheet**
*   [epi-styles.css](epi-styles.css){:target="_blank"}

This stylesheet provides the "Modern Visual Grid" look for individual ePI documents, featuring rounded cards, collapsible accordions, and color-coded sections for Ingredients (Blue), Regulatory (Green), Packaging (Purple), Appearance (Orange), and Clinical Knowledge (Teal).

**2. ePI Tracking List Stylesheet**
*   [epi-list.css](epi-list.css){:target="_blank"}

This stylesheet provides a custom dark-mode, business-friendly interface specifically designed for rendering the `List` resource tracking showcases. It includes styling for status badges, grid-based entry cards, and modern UI tokens suitable for tracking multiple product registries.

### Rendered Examples
View the fully rendered HTML examples below to see the stylesheets in action:

**Individual Product ePIs:**
*   **Type 1 (Paracetamol)**: [bundle-epi-type1-example-paracetamol.html](examples/bundle-epi-type1-example-paracetamol.html){:target="_blank"}
*   **Type 2 (Paracetamol)**: [bundle-epi-type2-example-paracetamol.html](examples/bundle-epi-type2-example-paracetamol.html){:target="_blank"}
*   **Type 2 Blister/Carton (WonderDrug)**: [bundle-epi-type2-example-blister-carton.html](examples/bundle-epi-type2-example-blister-carton.html){:target="_blank"}
*   **Type 3 (WonderDrug)**: [bundle-epi-type3-example-wonderdrug.html](examples/bundle-epi-type3-example-wonderdrug.html){:target="_blank"}

**ePI Tracking Lists (`List` resource):**
*   **Single-Product Language Tracker**: [epi-list-showcase-1.html](examples/epi-list-showcase-1.html){:target="_blank"}
*   **Cross-Jurisdiction Tracker**: [epi-list-showcase-2.html](examples/epi-list-showcase-2.html){:target="_blank"}
*   **Drug Category Tracker**: [epi-list-showcase-3.html](examples/epi-list-showcase-3.html){:target="_blank"}
