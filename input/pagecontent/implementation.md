## Getting Started with ePI Implementation

This page provides end-to-end instructions for beginners to implement a fully operational Electronic Medicinal Product Information (ePI) solution using the HL7 FHIR ePI Implementation Guide (IG). It’s designed for those new to FHIR and ePI, starting with foundational learning and progressing to practical steps for creating, validating, and sharing an ePI, such as a package leaflet. The guide includes the use of controlled terminology, a phased rollout strategy, and system requirements for structured or component authoring software. By the end, you’ll have a working ePI Type 1 solution and understand the people and systems needed to support it.

### Step 1: Build a Support Structure

Establish the people and systems to sustain the ePI solution.

- **Team Roles**:
  - **FHIR Developer**: Builds and maintains the ePI JSON and FHIR server (skills: JSON, REST APIs, Java).
  - **Regulatory Specialist**: Ensures content complies with health authority requirements (e.g., FDA, EMA).
  - **Content Author**: Writes the narrative using structured/component authoring software and prepares SVG images.
  - **IT Administrator**: Manages the FHIR server, authoring software, and network security.
  - **Project Manager**: Coordinates the team and rollout phases.
- **Training**:
  - Consider enrolling in the [HL7 FHIR Fundamentals Course](https://www.hl7.org/training/fhir-fundamentals.cfm).
  - Host internal workshops using this implementation guide.
  - Train content authors on structured/component authoring software.
- **System Infrastructure**:
  - **FHIR Server**: Host HAPI FHIR on a secure cloud platform.
  - **Authoring Software**: Deploy structured/component authoring software.
  - **Backup**: Implement daily backups of the FHIR server database and authoring content.
  - **Security**: Use OAuth2 for API access and encrypt data at rest.
- **Governance**:
  - Create a standard operating procedure (SOP) for ePI creation, validation, and updates.
  - Check the [HL7 Vulcan Accelerator](https://www.hl7.org/vulcan/) site to stay updated on ePI developments.

### Step 2: Understand the ePI IG and FHIR Basics

Build a foundation by familiarizing yourself with the ePI IG and FHIR fundamentals.

- **Learn about ePI**:
  - Visit the [ePI IG homepage](https://build.fhir.org/ig/HL7/emedicinal-product-info/) to explore the guide.
  - Review the [Introduction](https://build.fhir.org/ig/HL7/emedicinal-product-info/index.html) to understand ePI’s purpose: delivering standardized medicinal product information (e.g., package leaflets) in a FHIR-compliant format.
  - Review the [Use Cases](https://build.fhir.org/ig/HL7/emedicinal-product-info/usecases.html) for a description and examples of how ePI can be used. 
  - Study the [Artifacts page](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html) for profiles, code systems, and examples.
  - Explore the [Build ePI Type 1 page](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi1.html) to learn about the core components: Bundle, Composition, and Binary.
- **Learn About FHIR**:
  - Start with the [FHIR Overview](http://hl7.org/fhir/R5/index.html).
  - Watch the [FHIR Basics video](https://www.youtube.com/watch?v=dhgncH3K9KE) from HL7 (free, ~15 minutes).
  - Read the [FHIR Resource Overview](http://hl7.org/fhir/R5/resource.html) to understand resources (e.g., Bundle, Composition) used in ePI.
  - Create a free account on [chat.fhir.org](https://chat.fhir.org/) and join the “ePI” stream to ask questions and connect with the community.
- **Key Concepts**:
  - **ePI Type 1**: The most simple form of an ePI, reproduces the traditional drug label template (e.g., Summary of Product Characteristics, Patient Leaflet) mandated by many national health authorities. It includes document metadata (e.g., document type, date, language), section and sub-section headings, and the human-readable narrative (e.g., paragraphs, images, tables) in XHTML, stored in a Composition resource and packaged in a Document Bundle resource.
  - **FHIR Resources**: Modular data structures (e.g., Bundle for packaging, Composition for metadata and narrative).
  - **Interoperability**: ePI ensures medicinal product information is structured in a consistent manner and shareable across systems (e.g., regulatory agencies, pharmacies, health apps).
  - **JSON Knowledge**: Learn basic JSON syntax via [JSON Tutorial](https://www.w3schools.com/js/js_json_intro.asp)
  - **XML Knowledge**: Learn basic XML syntax via [XML Tutorial](https://www.w3schools.com/xml/)

### Step 3: Set Up Your Environment

Prepare your tools and infrastructure, including component authoring software, to build an ePI solution.

- **Consider Installing Prerequisites**:
  - **FHIR Server**: Install HAPI FHIR, an open-source FHIR server:
    - Download Java JDK 17+ ([Oracle](https://www.oracle.com/java/technologies/javase-jdk17-downloads.html) or [OpenJDK](https://openjdk.java.net/)).
    - Follow the [HAPI FHIR Quickstart](https://hapifhir.io/hapi-fhir/docs/server_jpa/quickstart.html) to set up a local server.
    - Verify the server runs at `http://localhost:8080/fhir`.
  - **FHIR Validator**: Use the [FHIR Validator CLI](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator) to check ePI compliance.
  - **Authoring Software**: Choose structured or component authoring software for creating ePI content:
    - **Text Editor**: There are many free or commercial developer tools available that support editing XML, JSON, markdown, or XHTML.
    - **Structured Authoring**: A business friendly (i.e., not meant for developers) software tool that enables the creation of content using predefined templates and standardized formats, such as XML, JSON, and XHTML, to ensure consistency and compliance with specific schemas or standards. It organizes content into structured elements (e.g., sections, paragraphs) for easy reuse and interoperability, ideal for producing structured regulatory documents like ePI.
    - **Component Authoring**: A business friendly software tool that allows the creation and management of modular content components, which can be assembled into larger documents. It supports reusable, granular content blocks (e.g., individual indications) for efficient multi-channel publishing or generating ePIs with personalized content (e.g., show only indications, strengths, and interactions relevant to a specific patient or patient profile group).
    - Ensure the software supports FHIR compliant XML, JSON, Markdown, and XHTML. XHTML is used for the ePIs narrative in the Composition’s `text.div` field.

- **Test Environment**:
  - Set up a sandbox FHIR server (e.g., [HAPI FHIR Test Server](https://hapi.fhir.org/)) for experimentation.
  - Use Postman ([download](https://www.postman.com/downloads/)) to send HTTP requests to the FHIR server.

### Step 4: Use Controlled Terminology

Controlled terminology refers to a standardized set of terms and codes used to consistently structure and describe medicinal product information, such as dosage forms, routes of administration, units of measurement, ingredient names, and packaging types. This standardization ensures that data is accurate, interoperable, and machine-readable across systems and organizations, enabling regulatory compliance, seamless data exchange, and improved accessibility for pharmaceutical companies, health authorities, healthcare professionals, and patients.

In some cases, terminologies are harmonized internationally (e.g., ISO country codes, language codes, or SI units of measurement). However, most jurisdictions maintain local terminology requirements, necessitating careful alignment with regional standards.

When implementing ePI, identify the terminologies required for each jurisdiction and ensure that your ePI authoring tools and associated systems support both international and local terminologies. Key standardized code systems include:

- **SNOMED CT**: For clinical terms and detailed healthcare data.
- **ICD (International Classification of Diseases)**: For disease and health condition classification.
- **MedDRA**: For adverse event reporting and pharmacovigilance.
- **EDQM**: For standard terms related to pharmaceutical dose forms, combined pharmaceutical dose forms, routes of administration, pack types, pack materials.
- **SPOR**: For substance, product, organization, and referential data in the EU.
- **ISO**: For country names and languages 
- **UCUM**: For units of measure

For further details, refer to the [Terminology]() page or consult jurisdiction-specific regulatory guidelines.

### Step 5: Build an ePI Type 1 Solution

Create a simple ePI Type 1 (a package leaflet with an SVG image) using your structured authoring software. Refer to the [Build ePI Type 1](https://build.fhir.org/ig/HL7/emedicinal-product-info/build-epi1.html) page and the [Artifacts](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html) page for instructions.

- **Validate the ePI**:
  - Use the FHIR Validation app to check for errors and ensure the ePI conforms to the profiles.
- **Store the ePI**:
  - Store the ePI in your component authoring software 
  - Send the JSON to your HAPI FHIR server using Postman:
    - **Method**: POST
    - **URL**: `http://localhost:8080/fhir/Bundle`
    - **Body**: Paste `epi-type1.json`.
    - **Headers**: Set `Content-Type: application/fhir+json`.

### Step 6: Test and Share the ePI

Ensure the ePI is functional and interoperable.

- **Render the ePI**:
  - Use a style sheet and software to view the ePI. Preview the content to ensure it diplays accurately.
  - Check that the `<img>` tag displays the image correctly in the right location and the `alt` text is accessible.

- **Test Interoperability**:
  - Set up a second FHIR server and send the ePI to it via API, verifying it renders correctly.

### Step 7: Roll Out the Implementation in Stages

Deploy the ePI solution in phased stages to facilitate stakeholder learning and adoption.

- **Technical Pilot (Voluntary, Small Scale)**:
  - **Objective**: Test the technical feasibility of the ePI solution in a controlled environment.
  - **Scope**: Create 1-2 ePI Type 1 instances for a single product, involving a small team (e.g., 1 developer, 1 content author).
  - **Activities**:
    - Deploy the ePI on a local HAPI FHIR server.
    - Validate with the FHIR Validator.
    - Share with a test partner (e.g., internal regulatory team).
  - **Duration**: 1-2 months.
  - **Success Criteria**: ePI validates without errors, renders correctly, and is accessible via the FHIR server.
- **Production Pilot (Voluntary, Small Scale)**:
  - **Objective**: Validate the ePI solution in a production-like environment with real-world use.
  - **Scope**: Expand to 5-10 ePI Type 1 instances for multiple products, involving a broader team (e.g., 2 developers, 2 authors, 1 regulatory specialist).
  - **Activities**:
    - Host the ePI on a cloud-based FHIR server.
    - Share with external partners via API.
    - Collect feedback on usability and interoperability.
  - **Duration**: 3-6 months.
  - **Success Criteria**: ePI is interoperable with at least one external system, feedback is positive, and no critical issues arise.
- **Full Production (Voluntary)**:
  - **Objective**: Scale the ePI solution across the organization or consortium, encouraging adoption.
  - **Scope**: Deploy ePI Type 1 for all relevant products, involving the full team (e.g., developers, authors, IT admins, project manager).
  - **Activities**:
    - Integrate with existing systems.
    - Train all content authors on authoring software.
    - Publish ePIs via a public-facing FHIR API.
  - **Duration**: 6-12 months.
  - **Success Criteria**: ePIs cover 80%+ of products, adoption is widespread, and systems are stable.
- **Full Production (Mandatory)**:
  - **Objective**: Make ePI the standard for all medicinal product information, enforced by policy.
  - **Scope**: Mandate ePI Type 1 for all products, with full system integration.
  - **Activities**:
    - Update SOPs to require ePI for all submissions.
    - Expand to ePI Type 2/3 for advanced use cases.
  - **Duration**: Ongoing, starting 12-18 months after the pilot.
  - **Success Criteria**: >80% compliance, all systems fully integrated, and regulatory acceptance achieved.

### Step 8: Scale to Advanced ePI Types

Once comfortable with Type 1, explore advanced ePI types for more complex use cases.

- **ePI Type 2**:
  - Adds structured product data (e.g., MedicinalProductDefinition, Organization).
  - Example: Include ingredients, organization, packaging, and regulatory authorizations.
- **ePI Type 3**:
  - Focuses on clinical use cases via `ClinicalUseDefinition` (e.g., indications, warnings).
  - Example: Define contraindications for specific patient populations.
- **ePI Type 4**:
  - Focuses on structured first approach where dose instructions, safety, and the rest of ePI content is machine readable.
  - Example: Define structured dose instructions to facilitate personalization for individuals or specific patient populations.