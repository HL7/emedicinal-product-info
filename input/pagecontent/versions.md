# Version Control of FHIR ePI Document Bundles

## Overview

Drug labels have a sequential lifecycle, with a single branch of versions that includes both authorized (approved) and draft versions under regulatory review. This page describes how to manage the versioning of electronic Product Information (ePI) document bundles, supporting the following lifecycle requirements:

- Authorized versions, approved by health authorities, form the official sequence of the ePI.
- Draft versions are created from the latest authorized version for proposed updates and submitted for regulatory review.
- Multiple draft versions may exist concurrently, with some merged into a single version for approval.
- Approved drafts are incorporated into the sequential branch as new authorized versions.
- Draft versions may be withdrawn by the submitting organization, marked as inactive without impacting the authorized sequence.

This versioning approach ensures traceability, reproducibility, and alignment with regulatory processes while leveraging FHIR resources and principles.

## Version Control Model

The version control model for ePI document bundles is structured as a single sequential branch of versions, distinguished by their status:

1. **Authorized Versions**: Represent regulator-approved ePI versions, each a distinct `Bundle` resource with `Composition.status` set to `final`. These versions form the official history of the ePI, numbered sequentially (e.g., `Composition.version: 1`, `2`).
2. **Draft Versions**: Represent proposed updates under development or regulatory review, each a distinct `Bundle` resource with `Composition.status` set to `preliminary`. Drafts are derived from the latest authorized version and may be merged or withdrawn.
3. **Merging Drafts**: Two or more draft versions may be consolidated into a single draft `Bundle` for regulatory submission, which, upon approval, becomes the next authorized version.
4. **Withdrawing Drafts**: Drafts that are withdrawn are marked with `Composition.status` set to `entered-in-error` and retained for audit purposes, without affecting the authorized sequence.
5. **Version Relationships**: The relationship between a version and its predecessor(s) (e.g., the authorized version a draft is derived from, or the drafts merged into a new version) is tracked using the `Composition.relatesTo` element, referencing predecessor `Composition` resources via their version-specific `Bundle.identifier`.

### FHIR Resource Representation

The version control model is implemented using the following FHIR resources:

- **Bundle (type: document)**: The ePI document itself, containing the `Composition` and referenced resources (e.g., `MedicinalProductDefinition`, `Organization`). Each version, whether authorized or draft, is a distinct `Bundle` instance stored in a FHIR server.
- **Composition**: The core document within the `Bundle`, with `relatesTo` used to reference predecessor `Composition` resources in previous `Bundle` versions (e.g., the authorized version a draft is derived from, or drafts merged into a new version). The `relatesTo.targetIdentifier` uses the version-specific `Bundle.identifier` of the predecessor `Bundle`, ensuring traceability across systems.
- **List**: Optionally used to group related ePIs for a given product (e.g., Summary of Product Characteristics (SMPC), Patient Information Leaflet (PIL), and their translations) for easier navigation and tracking within the FHIR server. For example:
  - `List.code`: `http://hl7.org/fhir/ValueSet/list-example-codes|collection`
  - `List.entry.item`: References to `Bundle` resources (e.g., `Bundle/epi-456` for SMPC, `Bundle/epi-457` for PIL).
  - Use case: A regulator queries the `List` to retrieve all ePI versions for a product.

**Note on Version Relationships**: To track how a version relates to its predecessors, the `Composition.relatesTo` element references the `Composition` resources in predecessor `Bundle` versions using their version-specific `Bundle.identifier`. For example, a merged draft `Composition` includes `relatesTo` entries for each source draft’s `Bundle.identifier` (e.g., `epi-456-draft-stability`, `epi-456-draft-safety`), with a custom code (`derived-from`) indicating the relationship. This approach ensures traceability without requiring separate resources like `Provenance`.

#### Custom Code System
The `Composition.relatesTo.code` uses the following custom code system:
- **URI**: `http://yourcompany.com/codes`
- **Codes**:
  - `derived-from`: Indicates a version is derived from a predecessor (e.g., draft from authorized version, merged draft from source drafts).
  - `replaces`: Indicates a version replaces a previous erroneous version (e.g., during a rollback).

Implementers must use this code system for `relatesTo.code` to ensure consistency and support validation.

#### Identifiers for Versioning

- **Bundle.id**: A server-specific logical identifier (`id` type) that remains constant across all versions of an ePI document within a single FHIR server (e.g., `epi-456`). It enables resource retrieval (e.g., `GET /Bundle/epi-456`) and versioning (e.g., `GET /Bundle/epi-456/_history/1`). When exchanging a `Bundle` with an external server (e.g., EMA’s FHIR server), the receiving server assigns its own `Bundle.id` (e.g., `ema-epi-12345`), as `Bundle.id` is not preserved across systems.
- **Bundle.meta.versionId**: A version-specific identifier (`id` type) that uniquely distinguishes each version of the `Bundle` within a server (e.g., `1`, `2`, `3`). The `Bundle.meta.versionId` increments by one each time the `Bundle` changes (e.g., new draft, approval, merge, withdrawal). The combination of `Bundle.id` and `Bundle.meta.versionId` (e.g., `epi-456/1`) is unique per version on a given server. For example, updating `Bundle` metadata without changing the `Composition` increments `Bundle.meta.versionId` (e.g., from `5` to `6`) but not `Composition.version`.
- **Bundle.identifier**: A set of business-level identifiers (`Identifier` type) that provide globally unique references for the ePI document and its versions. Each ePI `Bundle` must include two `Bundle.identifier` entries:
  - **Consistent Identifier**: Remains constant across all versions of the ePI document (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`). This identifier groups all versions (drafts and authorized) under the same logical ePI, enabling queries like `GET /Bundle?identifier=http://yourcompany.com/epi|epi-456`.
  - **Version-Specific Identifier**: Changes for each version of the ePI document (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-draft-initial` for the initial draft, `epi-456-v1` for the first authorized version). This identifier tracks individual versions across systems, enabling queries like `GET /Bundle?identifier=http://yourcompany.com/epi-version|epi-456-draft-stability`.
- **Version-Specific Identifier Naming Convention**:
  - **Authorized Versions**: Use `epi-<id>-v<version>` (e.g., `epi-456-v1` for version 1).
  - **Draft Versions**: Use `epi-<id>-draft-<description>` (e.g., `epi-456-draft-stability` for a stability update).
  - **Merged Drafts**: Use `epi-<id>-draft-merged` or include a specific description (e.g., `epi-456-draft-merged-stability-safety`).
- **Implementation Note**: Ensure both `Bundle.identifier` entries are included in every ePI `Bundle` with consistent `system` and `value` conventions. The consistent identifier’s `system` (e.g., `http://yourcompany.com/epi`) defines the namespace for the ePI document, while the version-specific identifier’s `system` (e.g., `http://yourcompany.com/epi-version`) defines the namespace for version tracking. Use conditional updates (e.g., `PUT /Bundle?identifier=http://yourcompany.com/epi|epi-456`) to preserve your `Bundle.id` when storing updated versions from external servers. Multiple `identifier` entries may include manufacturer and regulatory identifiers (e.g., `system: http://ema.europa.eu/epi`). When exchanging with external servers, use the consistent `Bundle.identifier` to match incoming `Bundle` instances to your ePI document and the version-specific `Bundle.identifier` to track specific versions.

### Authorized Versions

Authorized versions are regulator-approved ePI `Bundle` resources, forming the official sequence of the drug label. Key attributes include:

- **`Composition.relatesTo`**: References the predecessor `Composition` resource (e.g., the approved draft) via its version-specific `Bundle.identifier` (e.g., `epi-456-draft-merged`), using the `derived-from` code.
- **`Bundle.identifier`**: Includes the consistent identifier (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) and a version-specific identifier (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-v1`).
- **`Bundle.meta.versionId`**: A whole-number identifier (e.g., `2`, `6`) that increments by one with each `Bundle` change.
- **`Composition.version`**: A whole-number business version (e.g., `1`, `2`) that increments by one with each `Composition` change, aligned with regulatory conventions.
- **`Composition.status`**: Set to `final` to indicate regulatory approval.
- **`Bundle.meta.lastUpdated`**: The timestamp of the approval or last update to the version.

### Draft Versions

Draft versions are proposed updates derived from the latest authorized version, each a separate ePI `Bundle` resource. Key attributes include:

- **`Composition.relatesTo`**: References the predecessor `Composition` resource in the latest authorized version via its version-specific `Bundle.identifier` (e.g., `epi-456-v1`), using the `derived-from` code.
- **`Bundle.identifier`**: Matches the consistent identifier of the authorized versions (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) and includes a version-specific identifier (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-draft-stability`).
- **`Bundle.meta.profile`**: Includes a profile or tag (e.g., `http://hl7.org/fhir/StructureDefinition/epi-draft`) to indicate the draft status.
- **`Bundle.meta.versionId`**: A whole-number identifier (e.g., `3`, `4`) that increments by one with each `Bundle` change.
- **`Composition.version`**: A whole-number version (e.g., `2`) that increments by one with each `Composition` change, reflecting the anticipated authorized version number if approved.
- **`Composition.status`**: Set to `preliminary` to indicate the draft is not yet approved.

### Incorporating Drafts into Authorized Versions

When a draft is approved by the regulator, it is incorporated into the sequential branch as a new authorized `Bundle`. The process is as follows:

1. **Create a New Authorized Bundle**:
   - Copy the approved draft `Bundle` to create a new `Bundle` instance.
   - Assign the next `Bundle.meta.versionId` in the sequence (e.g., `6`).
   - Update `Bundle.identifier` to include the consistent identifier (e.g., `epi-456`) and a new version-specific identifier (e.g., `epi-456-v2`).
   - Update `Composition.relatesTo` to reference the approved draft’s version-specific `Bundle.identifier` (e.g., `epi-456-draft-merged`).
   - Retain the `Composition.version` from the draft (e.g., `2`).
   - Set `Composition.status` to `final`.
   - Update `Bundle.meta.lastUpdated` to the approval timestamp.

2. **Archive the Draft**:
   - Update the draft `Bundle` to reflect its incorporation (e.g., by tagging it as `approved`).
   - Retain the draft `Bundle` in a read-only state for audit purposes.

### Merging Drafts

Two or more drafts may be merged into a single draft `Bundle` for regulatory submission. The process is as follows:

1. **Create a Consolidated Draft Bundle**:
   - Create a new `Bundle` instance incorporating changes from the source drafts.
   - Retain the consistent `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) and assign a new version-specific `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-draft-merged`).
   - Assign the next `Bundle.meta.versionId` (e.g., `5`).
   - Update `Composition.relatesTo` to include entries for each source draft’s version-specific `Bundle.identifier` (e.g., `epi-456-draft-stability`, `epi-456-draft-safety`).
   - Assign the next `Composition.version` (e.g., `2`) to reflect the consolidated content.
   - Set `Composition.status` to `preliminary`.

### Withdrawing Drafts

Drafts that are withdrawn by the submitting organization are not incorporated into the authorized sequence. The process is as follows:

1. **Mark the Draft as Withdrawn**:
   - Update the draft `Bundle` by setting `Composition.status` to `entered-in-error`.
   - Assign the next `Bundle.meta.versionId` to reflect the status change (e.g., `8`).
   - Retain the existing `Composition.relatesTo` to preserve the derivation relationship.
   - Optionally, include a narrative in `Composition.text` explaining the reason for withdrawal.

2. **Retain for Audit**:
   - Retain the draft `Bundle` in the system for audit and traceability, ensuring it is not used for further development unless reactivated.

### Implementation Considerations

- **Storage and Retrieval**: Store ePI `Bundle` resources in a FHIR server or document repository. Use the consistent `Bundle.identifier` (e.g., `http://yourcompany.com/epi/epi-456`) to retrieve all versions of an ePI document and the version-specific `Bundle.identifier` (e.g., `http://yourcompany.com/epi-version/epi-456-draft-stability`) to retrieve a specific version. Implementers may use a `List` resource to group related drafts or versions for easier navigation.
- **Version Identifiers**: Use whole numbers for both `Bundle.meta.versionId` (e.g., `1`, `2`, `3`) and `Composition.version` (e.g., `1`, `2`), incrementing by one with each `Bundle` or `Composition` change, respectively. The version-specific `Bundle.identifier` provides a human-readable, cross-system version identifier (e.g., `epi-456-draft-stability`).
- **Version Relationships**: Use `Composition.relatesTo` with the `derived-from` code to track derivation relationships (e.g., draft from authorized version, merged drafts). Validate `relatesTo.targetIdentifier` by querying the FHIR server for the referenced `Bundle` (e.g., `GET /Bundle?identifier=http://yourcompany.com/epi-version|epi-456-draft-stability`). If the identifier is not found (e.g., in a cross-server exchange), log the issue and consider fallback mechanisms like manual reconciliation.
- **Regulatory Compliance**: Ensure versioning practices comply with regional regulations (e.g., FDA, EMA). Include regulatory-assigned identifiers (e.g., `system: http://ema.europa.eu/epi`) in `Bundle.identifier` where required, alongside manufacturer identifiers.
- **Concurrency**: Support concurrent draft development by isolating draft `Bundle` instances derived from the latest authorized version. Use `Composition.relatesTo` to track derivation relationships. To prevent conflicts during concurrent updates, use FHIR’s optimistic locking with `Bundle.meta.versionId` (e.g., `If-Match` header in `PUT` requests) or implement a draft-specific workflow to coordinate changes.
- **Auditability**: Retain all `Bundle` resources, including withdrawn drafts, to support audits and regulatory inspections. The version-specific `Bundle.identifier` and `Composition.relatesTo` enhance auditability by enabling precise version tracking.
- **Version Rollbacks**: If an authorized version is found to be erroneous, create a new authorized `Bundle` reverting to the previous valid version’s content, increment `Bundle.meta.versionId` and `Composition.version`, and use `Composition.relatesTo` with the `replaces` code to reference the erroneous version.
- **Performance**: For ePIs with many versions (e.g., hundreds of drafts and authorized versions), optimize queries using FHIR search parameters like `_count` or `_since` (e.g., `GET /Bundle?identifier=http://yourcompany.com/epi|epi-456&_count=50`). Index `Bundle.identifier` on the FHIR server for faster retrieval.
- **Cross-Server Exchange and Conditional Updates**:
  - When exchanging ePI `Bundle` resources with external systems (e.g., EMA’s FHIR server), the receiving server will typically assign a new `Bundle.id` (e.g., `ema-epi-12345`) while preserving both `Bundle.identifier` entries (consistent and version-specific) and the `Composition.relatesTo` element. The consistent `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) ensures the ePI’s identity is maintained, while the version-specific `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-v1`) tracks the specific version.
  - To maintain consistency of `Bundle.id` on your server when receiving an updated ePI `Bundle` from an external server, use a conditional update (e.g., `PUT /Bundle?identifier=http://yourcompany.com/epi|epi-456`). This updates the existing `Bundle` with the matching consistent `Bundle.identifier` (e.g., `Bundle.id: epi-456`) instead of creating a new resource with a different `Bundle.id`. The server assigns the next `Bundle.meta.versionId` (e.g., `5`) and updates the version-specific `Bundle.identifier` (e.g., `epi-456-v2`).
  - Example Workflow:
    - You submit a `Bundle` with `id: epi-456`, `meta.versionId: 1`, `identifier: [{system: http://yourcompany.com/epi, value: epi-456}, {system: http://yourcompany.com/epi-version, value: epi-456-draft-initial}]`, and `Composition.relatesTo` referencing no predecessor (initial version) to the EMA.
    - The EMA stores it with `id: ema-epi-12345`, preserving both `identifier` entries and `relatesTo`.
    - The EMA returns an updated `Bundle` (e.g., after approval) with `id: ema-epi-12345`, `meta.versionId: 1`, `identifier: [{system: http://yourcompany.com/epi, value: epi-456}, {system: http://yourcompany.com/epi-version, value: epi-456-v1}]`, and `Composition.relatesTo` referencing `epi-456-draft-initial`.
    - You issue a conditional update: `PUT /Bundle?identifier=http://yourcompany.com/epi|epi-456`, updating `Bundle.id: epi-456` with `meta.versionId: 2` and version-specific `identifier: epi-456-v1`, preserving your server’s `Bundle.id`.
  - Coordinate with external systems (e.g., EMA) on `Bundle.identifier` systems to ensure interoperability. Include additional `identifier` entries for regulatory identifiers (e.g., `system: http://ema.europa.eu/epi`, `value: ema-789`) if required. Ensure the `Composition.relatesTo` element is preserved during exchanges.
  - If conditional updates are not supported by your server, map incoming `Bundle` instances to your ePI using the consistent `Bundle.identifier` and create a new version with the next `Bundle.meta.versionId` and version-specific `Bundle.identifier`, retaining the `Composition.relatesTo` element.

## Version Lifecycle Scenario

The following table illustrates a version lifecycle for an ePI document, starting with a draft submitted as part of an original application, followed by its approval, and subsequent draft versions for stability and safety updates, which are merged and approved, with an additional draft withdrawn. The scenario demonstrates the sequential versioning model, with authorized versions (`Composition.status: final`) and draft versions (`Composition.status: preliminary`) in a single branch. The consistent `Bundle.identifier` (`system: http://yourcompany.com/epi`, `value: epi-456`) is implied for all versions but not shown for brevity.

| Bundle ID | Bundle versionId | Composition version | Composition status | Version-Specific Identifier | Description                              | Derived From            | Timestamp                  |
|-----------|------------------|---------------------|--------------------|-----------------------------|------------------------------------------|-------------------------|----------------------------|
| epi-456   | 1                | 1                   | preliminary        | epi-456-draft-initial       | Draft submitted with original application | None                    | 2025-01-15T09:00:00Z       |
| epi-456   | 2                | 1                   | final              | epi-456-v1                  | Draft approved, becomes authorized v1     | epi-456 (1)             | 2025-03-01T12:00:00Z       |
| epi-456   | 3                | 2                   | preliminary        | epi-456-draft-stability     | Draft for stability update                | epi-456 (2)             | 2025-04-01T10:00:00Z       |
| epi-456   | 4                | 2                   | preliminary        | epi-456-draft-safety        | Draft for safety update                   | epi-456 (2)             | 2025-04-15T11:00:00Z       |
| epi-456   | 5                | 2                   | preliminary        | epi-456-draft-merged        | Merged stability and safety drafts        | epi-456 (3, 4)          | 2025-05-01T14:00:00Z       |
| epi-456   | 6                | 2                   | final              | epi-456-v2                  | Merged draft approved, authorized v2      | epi-456 (5)             | 2025-06-01T12:00:00Z       |
| epi-456   | 7                | 3                   | preliminary        | epi-456-draft-safety-2      | Draft for additional safety update        | epi-456 (6)             | 2025-07-01T10:00:00Z       |
| epi-456   | 8                | 3                   | entered-in-error   | epi-456-draft-safety-2      | Draft withdrawn                           | epi-456 (6)             | 2025-07-15T15:00:00Z       |

**Notes**:
- The consistent `Bundle.identifier` (`system: http://yourcompany.com/epi`, `value: epi-456`) groups all versions of the ePI document.
- The version-specific `Bundle.identifier` (`system: http://yourcompany.com/epi-version`, `value: epi-456-draft-initial`, etc.) tracks individual versions, using human-readable values for cross-system traceability.
- `Bundle.meta.versionId` increments by one with each `Bundle` change (e.g., `1` to `8`), including drafts, approvals, merges, and withdrawals.
- `Composition.version` increments by one with each `Composition` change (e.g., `1`, `2`, `3`), with drafts reflecting the anticipated authorized version number.
- Version relationships are tracked via `Composition.relatesTo`, referencing predecessor `Composition` resources by their version-specific `Bundle.identifier` (e.g., `draft-merged` references `epi-456-draft-stability` and `epi-456-draft-safety`).
- The table includes a merge of stability and safety drafts (`draft-merged`) and a withdrawn draft (`draft-safety-2`) to illustrate all lifecycle aspects.
- Timestamps reflect a realistic regulatory review timeline.

## Constraints and Extensions

- **Constraint**: All ePI `Bundle` resources must have a consistent `Bundle.identifier` to ensure they pertain to the same drug label, plus a version-specific `Bundle.identifier` for each version.
- **Constraint**: Authorized `Bundle` resources must have `Composition.status` set to `final`, drafts must use `preliminary`, and withdrawn drafts must use `entered-in-error`.
- **Constraint**: `Bundle.meta.versionId` and `Composition.version` must be whole numbers (e.g., `1`, `2`, `3`), incrementing by one with each `Bundle` or `Composition` change, respectively.
- **Constraint**: `Composition.relatesTo` must be included in each `Composition` (except the initial version) to reference the version-specific `Bundle.identifier` of the predecessor `Bundle` containing the related `Composition`, using the `derived-from` or `replaces` code.

## Security and Access Control

- Restrict access to draft `Bundle` resources to authorized organizations (e.g., the submitting company and regulator). Use FHIR’s `Bundle.meta.security` or `Bundle.meta.tag` to label drafts as restricted (e.g., `http://terminology.hl7.org/CodeSystem/v3-Confidentiality|R` for restricted access). Implement OAuth 2.0 or SMART on FHIR for role-based access control, ensuring drafts are accessible only to authorized users until approved.
- Ensure that authorized `Bundle` resources are accessible to all authorized stakeholders (e.g., healthcare providers, patients) once approved, using appropriate access policies (e.g., public read access for `Composition.status: final`).

## Examples

### Merged Draft Bundle (Stability and Safety)
```json
{
  "resourceType": "Bundle",
  "id": "epi-456",
  "meta": {
    "versionId": "5",
    "lastUpdated": "2025-05-01T14:00:00Z",
    "profile": ["http://hl7.org/fhir/StructureDefinition/epi-draft"]
  },
  "identifier": [
    {
      "system": "http://yourcompany.com/epi",
      "value": "epi-456"
    },
    {
      "system": "http://yourcompany.com/epi-version",
      "value": "epi-456-draft-merged"
    }
  ],
  "type": "document",
  "entry": [
    {
      "fullUrl": "Composition/epi-456-merged-comp",
      "resource": {
        "resourceType": "Composition",
        "id": "epi-456-merged-comp",
        "status": "preliminary",
        "version": "2",
        "relatesTo": [
          {
            "code": {
              "coding": [
                {
                  "system": "http://yourcompany.com/codes",
                  "code": "derived-from"
                }
              ]
            },
            "targetIdentifier": {
              "system": "http://yourcompany.com/epi-version",
              "value": "epi-456-draft-stability"
            }
          },
          {
            "code": {
              "coding": [
                {
                  "system": "http://yourcompany.com/codes",
                  "code": "derived-from"
                }
              ]
            },
            "targetIdentifier": {
              "system": "http://yourcompany.com/epi-version",
              "value": "epi-456-draft-safety"
            }
          }
        ]
      }
    }
  ]
}