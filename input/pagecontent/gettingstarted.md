This page helps you initiate a project or form a team to implement **ePI** using the HL7 FHIR standard within your organization.

### Prerequisites

To begin, ensure your organization has:
- Basic understanding of **HL7 FHIR R5** (http://hl7.org/fhir/modules.html).
- Access to **FHIR tools** (e.g., FHIR server like HAPI FHIR, FHIR authoring tool).
- Basic understanding of how to comply with **regional regulations**.

### Steps to Start an ePI Implementation Project

The following table outlines recommended steps to establish a project or team for ePI implementation:

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
  <thead style="background-color: #f2f2f2;">
    <tr>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Step</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Description</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Actions</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 1: Define Project Goals</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Establish the purpose and scope of ePI adoption.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Identify objectives (e.g., replace PDFs, integrate with EHRs).<br>
        - Review the [use cases page](./usecases.md) to help define objectives.<br>
        - Align with regulatory and organizational priorities.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 2: Assemble the Team</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Form a multidisciplinary team to drive implementation.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Include FHIR experts, regulatory specialists, content authors, and IT staff.<br>
        - Appoint a project lead to coordinate efforts.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 3: Assess Current Capabilities</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Evaluate existing systems and skills.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Review current product information formats (e.g., PDFs).<br>
        - Check IT infrastructure and staff expertise with FHIR, XML, JSON, XHTML, and API.<br>
        - Identify gaps to address.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 4: Engage Stakeholders</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Involve key internal and external parties.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Consult regulatory authorities (e.g., EMA, FDA).<br>
        - Engage internal departments and external partners.<br>
        - Set up communication channels.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 5: Plan the Project</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Create a structured project plan.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Define timeline, milestones, and budget.<br>
        - Specify scope (e.g., target products or regions).<br>
        - Use the Base ePI Profile as the technical foundation.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 6: Set Up Infrastructure</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Prepare the technical environment.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Install FHIR IG Publisher for validation.<br>
        - Deploy a FHIR server (e.g., HAPI FHIR).<br>
        - Acquire ePI authoring software.<br>
        - Use the FHIR Validator for compliance checks.<br>
        - Ensure support for FHIR resources (e.g., Bundle, Composition).
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 7: Validate the Approach</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Test the project setup for readiness.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Stakeholder Review: Hold workshops to confirm goals with regulators and teams.<br>
        - Gap Analysis: Document skill/tool gaps and plan remediation.<br>
        - FHIR Authoring Tool Testing: Run sample ePIs through validator, and server.<br>
        - Regulatory Alignment: Verify compliance with regional standards.
      </td>
    </tr>
    <tr style="background-color: #f9f9f9;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 8: Build and Test ePI Types</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Develop and validate initial ePI documents.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Build an ePI Type 1, following the [build ePI Type 1 page](./build-epi1.md).<br>
        - Confirm it is valid and works with the FHIR server and APIs.<br>
        - Build an ePI Type 2, following the [build ePI Type 2 page](./build-epi2.md), and validate.<br>
        - Repeat testing and refinement until satisfied with results.
      </td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="border: 1px solid #ddd; padding: 8px;">Step 9: Implement in Stages</td>
      <td style="border: 1px solid #ddd; padding: 8px;">Roll out ePI implementation incrementally.</td>
      <td style="border: 1px solid #ddd; padding: 8px;">
        - Technical Pilot (Voluntary, Small Scale).<br>
        - Production Pilot (Voluntary, Small Scale).<br>
        - Full Production (Voluntary).<br>
        - Full Production (Mandatory).
      </td>
    </tr>
  </tbody>
</table>

### Tips for Success
- **Start Small**: Begin with a pilot project for one product or region.
- **Leverage Resources**: Use example ePIs as a starting point [Artifacts/Examples](https://build.fhir.org/ig/HL7/emedicinal-product-info/artifacts.html#5).
- **Train the Team**: Provide FHIR and ePI training to address skill gaps.
- **Monitor Updates**: Check the repository for IG updates, as it’s a continuous build.
- **Community**: Engage with the FHIR Community via [HL7 Biomedical Research & Regulation (BR&R) Work Group](https://confluence.hl7.org/spaces/BRR/pages/7012437/Biomedical+Research+and+Regulation), [Vulcan Accelerator](https://www.hl7vulcan.org), and the [FHIR Community chat](http://chat.fhir.org).
- **Published Versions**: See the [Directory of published versions](http://hl7.org/fhir/uv/emedicinal-product-info/history.html) for stable releases.
