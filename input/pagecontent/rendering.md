
### Overview
Electronic Medicinal Product Information (ePI) is exchangeable as structured FHIR Bundles (XML or JSON). Since raw code is not suitable for end-users (patients, healthcare professionals), this data must be rendered into a human-readable format, typically HTML.

This page provides guidance and examples on transforming ePI Bundles into user-friendly HTML displays using CSS.

> [!NOTE]
> **Implementation Flexibility:** The style sheet and HTML renderings included in this IG are merely provided as examples. There is no obligation to use this style sheet. Each implementation of ePI is subject to national regulatory rules and best practices. Implementers are free to reuse this style sheet as is, modify the style sheet to suit their needs, or make their own style sheet.

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
The following CSS provides the "Modern Visual Grid" look, featuring rounded cards, soft shadows, and color-coded sections for Ingredients (Blue), Regulatory (Green), Packaging (Purple), and Appearance (Orange).

```css
:root {
    --background-color: #ffffff;
    --text-color: #1d1d1f;
    --secondary-text-color: #86868b;
    --accent-color: #0071e3;
    --card-background: #f5f5f7;
    --card-border-color: #d2d2d7;
    --card-border-radius: 20px;
    --section-spacing: 40px;
}

body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    background-color: var(--background-color);
    color: var(--text-color);
    line-height: 1.47;
}

.card {
    background-color: var(--card-background);
    border-radius: var(--card-border-radius);
    padding: 30px;
    margin-bottom: var(--section-spacing);
}

.inner-card {
    background-color: #ffffff;
    border-radius: 16px;
    padding: 24px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.04);
    margin-bottom: 20px;
    position: relative;
    overflow: hidden;
}

/* Color Accents for Inner Cards */
.inner-card::before {
    content: '';
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    width: 6px;
}
.card-details::before { background-color: #0071e3; } /* Blue */
.card-auth::before { background-color: #34c759; }    /* Green */
.card-pack::before { background-color: #af52de; }    /* Purple */
.card-phys::before { background-color: #ff9500; }    /* Orange */
```

### Full Example
A complete example of a Type 2 ePI rendered with this style can be found in the examples directory: `bundle-epi-type2-example-acetaminophen.html`.
