This page describes the components used to construct ePI Type 1, enabling implementers to create and validate FHIR-compliant ePI resources for medicinal product information.

### Overview of Components

A Type 1 ePI file consists of three core components:

- **Bundle**: A container that packages all resources into a single, self-contained document.
- **Composition**: The primary resource that defines the ePI’s metadata and narrative, including references to images.
- **Binary**: A resource that stores the Scalable Vector Graphics (SVG) image as base64-encoded content, referenced by the Composition’s narrative.

These components work together to deliver human-readable medicinal product information, such as a Summary of Prosuct Characteristics, Package Leaflet, or package artwork in a FHIR-compliant format.

### Detailed Component Descriptions

#### 1. Bundle

- **Purpose**: The Bundle serves as a wrapper that encapsulates the Composition and Binary resources, ensuring a single, interoperable file for regulatory submission or exchange. It is defined as a document type Bundle, meaning it represents a complete, self-contained set of resources.
- **Key Fields**:
  - `"resourceType": "Bundle"`: Specifies that this is a FHIR Bundle resource.
  - `"id"`: A system defined universally unique identifier (UUID) for the Bundle (e.g., “5bc9c283-3f70-4ce7-96c3-99f26f553bd2”).
  - `"type": "document"`: Indicates the Bundle is a fixed set of resources forming a single document.
  - `"timestamp"`: Records the date and time the Bundle was created (e.g., “2025-06-12T22:28:00-04:00”).
  - `"meta.profile"`: References the ePI IG’s Bundle profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/Bundle-epi") to ensure conformance.
  - `"entry"`: An array of resource entries, each containing a `fullUrl` (a unique URI, e.g., “urn:uuid:epi-composition”) and a `resource` (e.g., Composition or Binary).
- **Role in ePI**: The Bundle ensures all components are transmitted together, maintaining their relationships and enabling validation as a single unit. It is the entry point for processing the ePI.

#### 2. Composition

- **Purpose**: The Composition is the core ePI resource, defining the document metadata (e.g., title, author, language) and containing the human-readable narrative in XHTML format. It includes an `<img>` tag to reference an SVG image stored in the Binary resource, allowing visual content to be embedded in the narrative.
- **Key Fields**:
  - `"resourceType": "Composition"`: Specifies that this is a FHIR Composition resource.
  - `"id"`: A system defined universally unique identifier (UUID) for the Bundle (e.g., “749b73da-b585-45c6-ade8-10d1deaa4dcc”).
  - `"meta.profile"`: References the ePI IG’s Composition profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/Composition-epi") for conformance.
  - `"status": "final"`: Indicates the document is complete and ready for use.
  - `"type.coding"`: Defines the ePI as a package leaflet, using the ePI IG’s code system (e.g., `system: "http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-type"`, `code: "package-leaflet"`).
  - `"category.coding"`: Classifies the ePI for human medicinal products (e.g., `system: "http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-category"`, `code: "human"`).
  - `"date"`: The creation or publication date (e.g., “2025-06-12”).
  - `"author"`: For Type 1, a display string identifying the author (e.g., `"display": "Example Pharma Inc."`), as no Organization resource is required.
  - `"title"`: A human-readable title for the ePI (e.g., “Package Leaflet: ExampleMed 100 mg Tablets”).
  - `"language"`: The language of the narrative (e.g., “en” for English).
  - `"section"`: An array of sections containing:
    - `"title"`: The section  or sub-section headings fromthe local health authority's drug label template (e.g., “4.1. Therapeutic Indications”).
    - `"code.coding"`: Identifies the section as a package leaflet (e.g., `system: "http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-section"`, `code: "leaflet"`).
    - `"text.status": "additional"`: Indicates the narrative is supplementary content.
    - `"text.div"`: The XHTML narrative, including an `<img>` tag to display the SVG image (e.g., `<img src="Binary/epi-svg-image" alt="Diagram of ExampleMed tablet packaging" />`).
    - `"entry"`: A reference to the Binary resource containing the SVG image (e.g., `"reference": "Binary/epi-svg-image"`).
- **Role in ePI**: The Composition organizes the ePI’s document metadata and narrative, serving as the primary content resource. The `<img>` tag embeds the SVG image in the narrative, enhancing the visual presentation of the package leaflet.

#### 3. Binary

- **Purpose**: The Binary resource stores the SVG image content as a base64-encoded string, referenced by the Composition’s narrative via an `<img>` tag. This allows visual elements, such as diagrams or logos, to be included in the ePI without embedding them directly in the XHTML.
- **Key Fields**:
  - `"resourceType": "Binary"`: Specifies that this is a FHIR Binary resource.
  - `"id"`: A unique identifier for the Binary resource (e.g., “epi-svg-image”).
  - `"meta.profile"`: References the ePI IG’s Binary profile (e.g., "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/Binary-epi") for conformance.
  - `"contentType": "image/svg+xml"`: Indicates the content is an SVG image, aligning with the XML structure from the provided example.
  - `"data"`: The base64-encoded SVG content, representing the image (e.g., a diagram of a tablet or packaging).
- **Role in ePI**: The Binary resource encapsulates the SVG image, enabling it to be referenced and displayed within the Composition’s narrative. When rendered, the SVG image appears inline where the `<img>` tag is placed, enhancing the ePI’s visual communication.

### Image Reference in the Narrative

The Composition’s narrative (in `section.text.div`) uses an `<img>` tag to display the SVG image stored in the Binary resource. The tag’s attributes are:

- **src**: References the Binary resource using the format `Binary/{id}`, where `{id}` is the Binary’s id (e.g., `Binary/epi-svg-image`).
- **alt**: Provides accessibility text describing the image (e.g., “Diagram of ExampleMed tablet packaging”).
- **Example**:

```html
  <img src="Binary/epi-svg-image" alt="Diagram of ExampleMed tablet packaging" />
```

- **Placement**: The `<img>` tag is embedded in the XHTML narrative where the image should appear (e.g., after a heading or paragraph).
- **Rendering**: When the ePI is rendered (e.g., in a FHIR viewer or browser), the `<img>` tag resolves to the Binary resource’s base64-encoded SVG data, displaying the image inline.
- **Validation**: Ensure the `src` value matches the Binary’s id, and verify the `contentType` is `image/svg+xml`. The `alt` text should be descriptive to meet accessibility standards.

### Additional Notes

- **Interoperability**: The Bundle ensures all components are self-contained, allowing the ePI to be shared across systems without losing context.
- **Conformance**: Each resource’s `meta.profile` field links to the ePI IG’s profiles, ensuring compliance with the IG’s constraints and extensions.
- **SVG Content**: The Binary’s SVG content must be valid XML, including the `<?xml version="1.0" encoding="UTF-8"?>` declaration and `<svg>` root element. Base64 encoding preserves this structure.

### Resources for Further Reading
Refer to the profiles on the [Artifacts page](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html) for further details about each resource.