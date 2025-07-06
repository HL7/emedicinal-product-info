This page describes the approach to versioning ePI documents, along with an example lifecycle illustrating how ePI documents evolve through drafting, updates, submissions, approvals, and content merging.

## Overview

The ePI document is represented as a FHIR Document Bundle containing a Composition resource and other related resources. Versioning is managed at both the Bundle and Composition levels to ensure traceability.

## Bundle Versioning

- **Bundle.id**: A server-managed UUID that uniquely identifies the Bundle resource instance on the server. This ID is not persistent across versions.
- **Bundle.meta.versionId**: A server-managed version identifier, incremented with each update to the Bundle (e.g., "1", "2"). This supports FHIR resource versioning.
- **Bundle.meta.lastUpdated**: A server-managed timestamp indicating the last modification time of the Bundle.
- **Bundle.identifier**: A business-defined UUID that remains persistent across all versions of the ePI document. This identifier enables tracking of the same logical document across systems and versions.

## Composition Versioning

- **Composition.identifier**: A business-defined UUID that is unique for each version of the ePI document. A new UUID is generated for each version to distinguish it from previous versions.
- **Composition.version**: A human-readable string (e.g., "1", "2") indicating the version of the document, managed by the business or authoring system.
- **Composition.status**: Indicates the lifecycle status of the document, with values restricted to `preliminary`, `final`, `amended`, `corrected`, `appended`, `entered-in-error`, or `deprecated`.
- **Composition.relatesTo**: Used to link to related Composition resources, such as previous versions, with a type of `derived-from`, `appends`, `corrects`, `replaces`, or `retracts`. For example, a new version may use `relatesTo` with a type of `replaces` to reference the prior version’s Composition.

## Version Control Process

1. **Creating a New Version**:
   - A new Bundle is created with a new `Bundle.id` and an initial `Bundle.meta.versionId` of "1".
   - The `Bundle.identifier` remains the same as in previous versions to maintain continuity.
   - A new Composition is included with a new `Composition.identifier` and an updated `Composition.version`.
   - The `Composition.relatesTo` field references the prior version’s Composition, if applicable.
2. **Updating an Existing Version**:
   - The server updates the existing Bundle, incrementing `Bundle.meta.versionId` and updating `Bundle.meta.lastUpdated`.
   - The `Bundle.identifier` remains unchanged.
   - The Composition may be updated with a new `Composition.identifier` and `Composition.version` if the update constitutes a new document version.
3. **Tracking and Audit**:
   - Both `Bundle.identifier` and `Composition.identifier` allow tracking of the ePI document across systems.
   - The `Composition.relatesTo` field provides a version history by linking to prior Compositions.
   - Server-managed fields (`Bundle.id`, `meta.versionId`, `meta.lastUpdated`) ensure compliance with FHIR versioning.

## ePI Document Lifecycle Example

The following table outlines an example lifecycle of ePI documents submitted to the European Medicines Agency (EMA) as part of a Marketing Authorisation Application (MAA). It tracks an initial ePI, a safety update ePI, and a stability update ePI through drafting, updates, submissions, approvals, and content merging. Each ePI is represented as a FHIR Bundle containing a Composition resource, with versioning managed as described above.

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
    <thead style="background-color: #f2f2f2;">
        <tr>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Stage</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">ePI Document</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Action</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">bundle.identifier</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">composition.identifier</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">composition.version</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">composition.status</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">composition.relatesTo</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Initial ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company creates initial draft</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-A1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">-</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Submitted as part of MAA to EMA</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Initial ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company updates draft</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-A2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-A1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">First update to initial draft</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Initial ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company updates draft</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-A3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-A2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Second update to initial draft</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Initial ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">EMA approves ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-A4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">final</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-A3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Approved ePI for use</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">5</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Safety Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company creates draft from approved ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-B1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">5</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">derived-from UUID-A4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">New ePI for safety update, submitted to EMA</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">6</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Stability Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company creates draft from approved ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-C1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">6</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">derived-from UUID-A4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">New ePI for stability update, submitted to EMA</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">7</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Safety Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company updates draft</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-B2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">7</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-B1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">First update to safety draft</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">8</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Safety Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company updates draft</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-B3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">8</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-B2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Second update to safety draft</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">9</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Stability Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Company updates draft</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-C2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">9</td>
            <td style="border: 1px solid #ddd; padding: 8px;">preliminary</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-C1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">First update to stability draft</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">10</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Stability Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">EMA approves ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-C3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">10</td>
            <td style="border: 1px solid #ddd; padding: 8px;">final</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-C2</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Stability update approved by EMA</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">11</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Safety Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">EMA approves ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-B4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">11</td>
            <td style="border: 1px solid #ddd; padding: 8px;">final</td>
            <td style="border: 1px solid #ddd; padding: 8px;">replaces UUID-B3</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Safety update approved by EMA after stability update</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">12</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Stability Update ePI</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Merge content from approved safety update</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-1</td>
            <td style="border: 1px solid #ddd; padding: 8px;">UUID-C4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">12</td>
            <td style="border: 1px solid #ddd; padding: 8px;">final</td>
            <td style="border: 1px solid #ddd; padding: 8px;">appends UUID-C3, derived-from UUID-B4</td>
            <td style="border: 1px solid #ddd; padding: 8px;">Updated stability ePI incorporates safety update content</td>
        </tr>
    </tbody>
</table>

## Lifecycle Notes

- **bundle.identifier**: A persistent business UUID that remains constant for all versions of the same logical ePI document (e.g., UUID-1 for all ePI versions).
- **composition.identifier**: A unique UUID for each version of the Composition, changing with each draft or approved version.
- **composition.version**: A human-readable version number (e.g., 1, 2, 3) incremented as per business rules.
- **composition.status**: Reflects the document's lifecycle state (`preliminary` for drafts, `final` for approved ePIs).
- **composition.relatesTo**: Links to prior versions or related ePIs with a type of `derived-from`, `appends`, `corrects`, `replaces`, or `retracts` (e.g., `replaces` for updates to the same ePI, `derived-from` for creating a new ePI from an approved one, `appends` for merging content).
- The final stage (merging) assumes the approved stability update ePI is updated to include relevant content from the approved safety update ePI, creating a new version (12) with `relatesTo` indicating the merge.

## Composition.relatesTo Values

The following table defines the allowed values for the `Composition.relatesTo` element, specifying their purpose in linking related Composition resources.

<table style="border-collapse: collapse; width: 100%; border: 1px solid #ddd; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
    <thead style="background-color: #f2f2f2;">
        <tr>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Value</th>
            <th style="border: 1px solid #ddd; padding: 8px; text-align: left; font-weight: bold;">Definition</th>
        </tr>
    </thead>
    <tbody>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">derived-from</td>
            <td style="border: 1px solid #ddd; padding: 8px;">for creating a new ePI from an approved one.</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">appends</td>
            <td style="border: 1px solid #ddd; padding: 8px;">for adding content to an existing ePI. Particularly when merging two or more ePIs.</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">corrects</td>
            <td style="border: 1px solid #ddd; padding: 8px;">for correcting errors or inaccuracies in a previous version.</td>
        </tr>
        <tr style="background-color: #f9f9f9;">
            <td style="border: 1px solid #ddd; padding: 8px;">replaces</td>
            <td style="border: 1px solid #ddd; padding: 8px;">A new draft supersedes an earlier draft, modifying or updating existing content by adding new information or revising content.</td>
        </tr>
        <tr style="background-color: #ffffff;">
            <td style="border: 1px solid #ddd; padding: 8px;">retracts</td>
            <td style="border: 1px solid #ddd; padding: 8px;">for withdrawing or invalidating a previous version, indicating it should no longer be used.</td>
        </tr>
    </tbody>
</table>