## Overview

The electronic Product Information (ePI) in FHIR is represented as a `Bundle` resource of type `document`, containing a `Composition` resource as the first entry, along with referenced resources such as `MedicinalProductDefinition`, `Organization`, and others that collectively define the drug label. Drug labels have a sequential lifecycle, with a single branch of versions that includes both authorized (approved) and draft versions under regulatory review. This page describes how to manage the versioning of ePI document bundles, supporting the following lifecycle requirements:

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

### FHIR Resource Representation

The version control model is implemented using the following FHIR resources:

- **Bundle (type: document)**: The ePI document itself, containing the `Composition` and referenced resources (e.g., `MedicinalProductDefinition`, `Organization`). Each version, whether authorized or draft, is a distinct `Bundle` instance stored in a FHIR server.
- **Provenance**: Tracks the history and relationships between ePI `Bundle` versions, including events such as creation, approval, merging, or withdrawal. `Provenance` resources are stored **separately** in the FHIR server, not as entries within the ePI `Bundle`, to maintain the immutability of the document and support lifecycle relationships. Each `Provenance` resource links to one or more `Bundle` instances via the `Provenance.target` element (e.g., targeting `Bundle/epi-456`) and may reference source `Bundle` instances via `Provenance.entity` (e.g., for drafts or merges). This separation ensures traceability and auditability without altering the ePI document's content.
- **List**: Optionally used to group related versions (e.g., all drafts for a specific submission) for easier navigation and tracking within the FHIR server.
- **DocumentReference**: Optionally used to reference ePI `Bundle` instances in external systems or repositories, facilitating version management and discovery.

**Note on Provenance Separation**: Storing `Provenance` resources separately aligns with FHIR best practices for tracking resource lifecycles and supports the sequential versioning model described in this guide. For example, a `Provenance` resource documenting the merge of two draft `Bundle` instances references both source `Bundle` resources in `Provenance.entity` and targets the resulting `Bundle` in `Provenance.target`. This approach enables querying of lifecycle events (e.g., `GET /Provenance?target=Bundle/epi-456`) and ensures compliance with regulatory requirements for audit trails independent of the approved ePI document.

#### Identifiers for Versioning

- **Bundle.id**: A server-specific logical identifier (`id` type) that remains constant across all versions of an ePI document within a single FHIR server (e.g., `epi-456`). It enables resource retrieval (e.g., `GET /Bundle/epi-456`) and versioning (e.g., `GET /Bundle/epi-456/_history/1`). When exchanging a `Bundle` with an external server (e.g., EMA’s FHIR server), the receiving server typically assigns its own `Bundle.id` (e.g., `ema-epi-12345`), as `Bundle.id` is not preserved across systems.
- **Bundle.meta.versionId**: A version-specific identifier (`id` type) that uniquely distinguishes each version of the `Bundle` within a server (e.g., `1`, `2`, `3`). The `Bundle.meta.versionId` increments by one each time the `Bundle` changes (e.g., new draft, approval, merge, withdrawal). The combination of `Bundle.id` and `Bundle.meta.versionId` (e.g., `epi-456/1`) is unique per version on a given server.
- **Bundle.identifier**: A set of business-level identifiers (`Identifier` type) that provide globally unique references for the ePI document and its versions. Each ePI `Bundle` must include two `Bundle.identifier` entries:
  - **Consistent Identifier**: Remains constant across all versions of the ePI document (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`). This identifier groups all versions (drafts and authorized) under the same logical ePI, enabling queries like `GET /Bundle?identifier=http://yourcompany.com/epi|epi-456`.
  - **Version-Specific Identifier**: Changes for each version of the ePI document (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-v1` for the first authorized version, `epi-456-draft-stability` for a draft). This identifier tracks individual versions across systems, enabling queries like `GET /Bundle?identifier=http://yourcompany.com/epi-version|epi-456-draft-stability`.
- **Implementation Note**: Ensure both `Bundle.identifier` entries are included in every ePI `Bundle` with consistent `system` and `value` conventions. The consistent identifier’s `system` (e.g., `http://yourcompany.com/epi`) defines the namespace for the ePI document, while the version-specific identifier’s `system` (e.g., `http://yourcompany.com/epi-version`) defines the namespace for version tracking. Use conditional updates (e.g., `PUT /Bundle?identifier=http://yourcompany.com/epi|epi-456`) to preserve your `Bundle.id` when storing updated versions from external servers. Multiple `identifier` entries may include manufacturer and regulatory identifiers (e.g., `system: http://ema.europa.eu/epi`). When exchanging with external servers, use the consistent `Bundle.identifier` to match incoming `Bundle` instances to your ePI document and the version-specific `Bundle.identifier` to track specific versions.

### Authorized Versions

Authorized versions are regulator-approved ePI `Bundle` resources, forming the official sequence of the drug label. Key attributes include:

- **`Bundle.identifier`**: Includes the consistent identifier (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) and a version-specific identifier (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-v1`).
- **`Bundle.meta.versionId`**: A whole-number identifier (e.g., `1`, `2`) that increments by one with each `Bundle` change.
- **`Composition.version`**: A whole-number business version (e.g., `1`, `2`) that increments by one with each `Composition` change, aligned with regulatory conventions.
- **`Composition.status`**: Set to `final` to indicate regulatory approval.
- **`Bundle.meta.lastUpdated`**: The timestamp of the approval or last update to the version.
- **`Provenance`**: A `Provenance` resource linked to each `Bundle`, documenting the approval event, the approving authority (e.g., via `Provenance.agent.who`), and the relationship to the previous authorized version or draft (via `Provenance.entity.what` and `Provenance.entity.role` set to `source`).

### Draft Versions

Draft versions are proposed updates derived from the latest authorized version, each a separate ePI `Bundle` resource. Key attributes include:

- **`Bundle.identifier`**: Matches the consistent identifier of the authorized versions (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) and includes a version-specific identifier (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-draft-stability`).
- **`Bundle.meta.profile`**: Includes a profile or tag (e.g., `http://hl7.org/fhir/StructureDefinition/epi-draft`) to indicate the draft status.
- **`Bundle.meta.versionId`**: A whole-number identifier (e.g., `3`, `4`) that increments by one with each `Bundle` change.
- **`Composition.version`**: A whole-number version (e.g., `2`) that increments by one with each `Composition` change, reflecting the anticipated authorized version number if approved.
- **`Composition.status`**: Set to `preliminary` to indicate the draft is not yet approved.
- **`Provenance`**: A `Provenance` resource linked to the draft `Bundle`, documenting:
  - The source version (typically the latest authorized `Bundle`) via `Provenance.entity.what` with `Provenance.entity.role` set to `source`.
  - The organization responsible for the draft (e.g., the pharmaceutical company) via `Provenance.agent.who`.
  - The creation or submission event (e.g., `draft-created`, `draft-submitted`) via `Provenance.activity`.

### Incorporating Drafts into Authorized Versions

When a draft is approved by the regulator, it is incorporated into the sequential branch as a new authorized `Bundle`. The process is as follows:

1. **Create a New Authorized Bundle**:
   - Copy the approved draft `Bundle` to create a new `Bundle` instance.
   - Assign the next `Bundle.meta.versionId` in the sequence (e.g., `5`).
   - Update `Bundle.identifier` to include the consistent identifier (e.g., `epi-456`) and a new version-specific identifier (e.g., `epi-456-v2`).
   - Retain the `Composition.version` from the draft (e.g., `2`).
   - Set `Composition.status` to `final`.
   - Update `Bundle.meta.lastUpdated` to the approval timestamp.

2. **Document the Approval with Provenance**:
   - Create a `Provenance` resource linked to the new authorized `Bundle`.
   - Reference the approved draft `Bundle` as the source via `Provenance.entity.what` (using its version-specific `Bundle.identifier`) with `Provenance.entity.role` set to `source`.
   - Record the approval event via `Provenance.activity` (e.g., using a code like `approve` from a relevant code system).
   - Identify the regulator as the approving agent via `Provenance.agent.who`.

3. **Archive the Draft**:
   - Update the draft `Bundle` to reflect its incorporation (e.g., by tagging it as `approved` or linking it to the new authorized `Bundle` via `Provenance`).
   - Retain the draft `Bundle` in a read-only state for audit purposes.

### Merging Drafts

Two or more drafts may be merged into a single draft `Bundle` for regulatory submission. The process is as follows:

1. **Create a Consolidated Draft Bundle**:
   - Create a new `Bundle` instance incorporating changes from the source drafts.
   - Retain the consistent `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) and assign a new version-specific `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-draft-merged`).
   - Assign the next `Bundle.meta.versionId` (e.g., `4`).
   - Assign the next `Composition.version` (e.g., `2`) to reflect the consolidated content.
   - Set `Composition.status` to `preliminary`.

2. **Document the Merge with Provenance**:
   - Create a `Provenance` resource linked to the new draft `Bundle`.
   - Reference the source draft `Bundle` resources via multiple `Provenance.entity` entries, each with `Provenance.entity.role` set to `source` and using their version-specific `Bundle.identifier`.
   - Record the merge event via `Provenance.activity` (e.g., `merge-drafts`).
   - Identify the organization performing the merge via `Provenance.agent.who`.

### Withdrawing Drafts

Drafts that are withdrawn by the submitting organization are not incorporated into the authorized sequence. The process is as follows:

1. **Mark the Draft as Withdrawn**:
   - Update the draft `Bundle` by setting `Composition.status` to `entered-in-error`.
   - Assign the next `Bundle.meta.versionId` to reflect the status change (e.g., `6`).
   - Optionally, include a narrative in `Composition.text` explaining the reason for withdrawal.

2. **Document the Withdrawal with Provenance**:
   - Create a `Provenance` resource linked to the draft `Bundle`.
   - Record the withdrawal event via `Provenance.activity` (e.g., `withdraw`).
   - Identify the responsible organization via `Provenance.agent.who`.
   - Reference the draft `Bundle` via `Provenance.entity.what` (using its version-specific `Bundle.identifier`) with `Provenance.entity.role` set to `source`.

3. **Retain for Audit**:
   - Retain the draft `Bundle` and its `Provenance` in the system for audit and traceability, ensuring it is not used for further development unless reactivated.

### Implementation Considerations

- **Storage and Retrieval**: Store ePI `Bundle` resources in a FHIR server or document repository. Use the consistent `Bundle.identifier` (e.g., `http://yourcompany.com/epi/epi-456`) to retrieve all versions of an ePI document and the version-specific `Bundle.identifier` (e.g., `http://yourcompany.com/epi-version/epi-456-draft-stability`) to retrieve a specific version. Implementers may use a `List` resource to group related drafts or versions for easier navigation.
- **Version Identifiers**: Use whole numbers for both `Bundle.meta.versionId` (e.g., `1`, `2`, `3`) and `Composition.version` (e.g., `1`, `2`), incrementing by one with each `Bundle` or `Composition` change, respectively. The version-specific `Bundle.identifier` provides a human-readable, cross-system version identifier (e.g., `epi-456-draft-stability`).
- **Provenance Granularity**: Maintain a robust `Provenance` history to ensure traceability. Each significant event (e.g., draft creation, approval, merging, withdrawal, or exchange with an external server) should have a corresponding `Provenance` resource. Use the version-specific `Bundle.identifier` in `Provenance.entity` to reference specific versions across systems.
- **Regulatory Compliance**: Ensure versioning practices comply with regional regulations (e.g., FDA, EMA). Include regulatory-assigned identifiers (e.g., `system: http://ema.europa.eu/epi`) in `Bundle.identifier` where required, alongside manufacturer identifiers.
- **Concurrency**: Support concurrent draft development by isolating draft `Bundle` instances derived from the latest authorized version. Use `Provenance` to track dependencies and merges, referencing version-specific `Bundle.identifier` values.
- **Auditability**: Retain all `Bundle` and `Provenance` resources, including withdrawn drafts, to support audits and regulatory inspections. The version-specific `Bundle.identifier` enhances auditability by enabling precise version tracking.
- **Cross-Server Exchange and Conditional Updates**:
  - When exchanging ePI `Bundle` resources with external systems (e.g., EMA’s FHIR server), the receiving server will typically assign a new `Bundle.id` (e.g., `ema-epi-12345`) while preserving both `Bundle.identifier` entries (consistent and version-specific). The consistent `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi`, `value: epi-456`) ensures the ePI’s identity is maintained, while the version-specific `Bundle.identifier` (e.g., `system: http://yourcompany.com/epi-version`, `value: epi-456-v1`) tracks the specific version.
  - To maintain consistency of `Bundle.id` on your server when receiving an updated ePI `Bundle` from an external server, use a **conditional update** (e.g., `PUT /Bundle?identifier=http://yourcompany.com/epi|epi-456`). This updates the existing `Bundle` with the matching consistent `Bundle.identifier` (e.g., `Bundle.id: epi-456`) instead of creating a new resource with a different `Bundle.id`. The server assigns the next `Bundle.meta.versionId` (e.g., `5`) and updates the version-specific `Bundle.identifier` (e.g., `epi-456-v2`).
  - Example Workflow:
    - You submit a `Bundle` with `id: epi-456`, `meta.versionId: 1`, `identifier: [{system: http://yourcompany.com/epi, value: epi-456}, {system: http://yourcompany.com/epi-version, value: epi-456-draft-initial}]` to the EMA.
    - The EMA stores it with `id: ema-epi-12345`, preserving both `identifier` entries.
    - The EMA returns an updated `Bundle` (e.g., after approval) with `id: ema-epi-12345`, `meta.versionId: 1`, `identifier: [{system: http://yourcompany.com/epi, value: epi-456}, {system: http://yourcompany.com/epi-version, value: epi-456-v1}]`.
    - You issue a conditional update: `PUT /Bundle?identifier=http://yourcompany.com/epi|epi-456`, updating `Bundle.id: epi-456` with `meta.versionId: 2` and version-specific `identifier: epi-456-v1`, preserving your server’s `Bundle.id`.
  - Document exchanges with `Provenance` resources to maintain traceability. For example, when storing an EMA-returned `Bundle`, create a `Provenance` resource with `activity: import`, targeting your updated `Bundle` (e.g., `Bundle/epi-456/_history/2`) and referencing the EMA’s `Bundle` via `Provenance.entity` using its version-specific `identifier` (e.g., `http://yourcompany.com/epi-version/epi-456-v1`).
  - Coordinate with external systems (e.g., EMA) on `Bundle.identifier` systems to ensure interoperability. Include additional `identifier` entries for regulatory identifiers (e.g., `system: http://ema.europa.eu/epi`, `value: ema-789`) if required.
  - If conditional updates are not supported by your server, map incoming `Bundle` instances to your ePI using the consistent `Bundle.identifier` and create a new version with the next `Bundle.meta.versionId` and version-specific `Bundle.identifier`, documenting the exchange with `Provenance`.
  - See the [Version Lifecycle Scenario](#version-lifecycle-scenario) for examples of `Bundle.id`, `Bundle.meta.versionId`, and dual `Bundle.identifier` entries in draft and authorized versions, which can be extended to cross-server exchanges.

## Version Lifecycle Scenario

The following table illustrates a version lifecycle for an ePI document, starting with a draft submitted as part of an original application, followed by its approval, and subsequent draft versions for stability and safety updates, which are merged and approved, with an additional draft withdrawn. The scenario demonstrates the sequential versioning model, with authorized versions (`Composition.status: final`) and draft versions (`Composition.status: preliminary`) in a single branch. The consistent `Bundle.identifier` (`system: http://yourcompany.com/epi`, `value: epi-456`) is implied for all versions but not shown for brevity.

| Bundle ID | Bundle versionId | Composition version | Composition status | Version-Specific Identifier | Description                              | Provenance Event | Derived From            | Timestamp                  |
|-----------|------------------|---------------------|--------------------|-----------------------------|------------------------------------------|------------------|-------------------------|----------------------------|
| epi-456   | 1                | 1                   | preliminary        | epi-456-draft-initial       | Draft submitted with original application | draft-created    | None                    | 2025-01-15T09:00:00Z       |
| epi-456   | 2                | 2                   | final              | epi-456-v1                  | Draft approved, becomes authorized v1     | approve          | epi-456 (1)             | 2025-03-01T12:00:00Z       |
| epi-456   | 3                | 3                   | preliminary        | epi-456-draft-stability     | Draft for stability update                | draft-created    | epi-456 (2)             | 2025-04-01T10:00:00Z       |
| epi-456   | 4                | 4                   | preliminary        | epi-456-draft-safety        | Draft for safety update                   | draft-created    | epi-456 (2)             | 2025-04-15T11:00:00Z       |
| epi-456   | 5                | 5                   | preliminary        | epi-456-draft-merged        | Merged stability and safety drafts        | merge-drafts     | epi-456 (3, 4)          | 2025-05-01T14:00:00Z       |
| epi-456   | 6                | 6                   | final              | epi-456-v2                  | Merged draft approved, authorized v2      | approve          | epi-456 (5)             | 2025-06-01T12:00:00Z       |
| epi-456   | 7                | 7                   | preliminary        | epi-456-draft-safety-2      | Draft for additional safety update        | draft-created    | epi-456 (6)             | 2025-07-01T10:00:00Z       |
| epi-456   | 8                | 8                   | entered-in-error   | epi-456-draft-safety-2      | Draft withdrawn                           | withdraw         | epi-456 (6)             | 2025-07-15T15:00:00Z       |

**Notes**:
- The consistent `Bundle.identifier` (`system: http://yourcompany.com/epi`, `value: epi-456`) groups all versions of the ePI document.
- The version-specific `Bundle.identifier` (`system: http://yourcompany.com/epi-version`, `value: epi-456-draft-initial`, etc.) tracks individual versions, using human-readable values for cross-system traceability.
- `Bundle.meta.versionId` increments by one with each `Bundle` change (e.g., `1`, `2`, `3`), including drafts, approvals, merges, and withdrawals.
- `Composition.version` increments by one with each `Composition` change (e.g., `1`, `2`, `3`), with drafts reflecting the anticipated authorized version number.
- The table includes a merge of stability and safety drafts (`draft-merged`) and a withdrawn draft (`draft-safety-2`) to illustrate all lifecycle aspects.
- Each row corresponds to a `Provenance` resource documenting the event (e.g., `draft-created`, `approve`), stored separately in the FHIR server.
- Timestamps reflect a realistic regulatory review timeline.

## Constraints and Extensions

- **Constraint**: All ePI `Bundle` resources must have a consistent `Bundle.identifier` to ensure they pertain to the same drug label, plus a version-specific `Bundle.identifier` for each version.
- **Constraint**: Authorized `Bundle` resources must have `Composition.status` set to `final`, drafts must use `preliminary`, and withdrawn drafts must use `entered-in-error`.
- **Constraint**: `Bundle.meta.versionId` and `Composition.version` must be whole numbers (e.g., `1`, `2`, `3`), incrementing by one with each `Bundle` or `Composition` change, respectively.
- **Extension**: Implementers may define an extension on `Bundle` or `Composition` to store regulatory-specific version metadata, such as submission IDs or approval dates (e.g., `composition-description`).
- **Profile**: Implementers should define a profile for draft ePI `Bundle` resources (e.g., `http://hl7.org/fhir/StructureDefinition/epi-draft`) to enforce draft-specific constraints.

## Security and Access Control

- Restrict access to draft `Bundle` resources to authorized organizations (e.g., the submitting company and regulator).
- Ensure that authorized `Bundle` resources are accessible to all authorized stakeholders (e.g., healthcare providers, patients) once approved.
- Use FHIR security labels or `Bundle.meta.security` to enforce access policies.
