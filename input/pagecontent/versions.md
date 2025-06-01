### Overview

Drug labels have a complex lifecycle, involving an authoritative version (akin to a "master branch") approved by health authorities and multiple concurrent draft versions under regulatory review. This page describes how to manage the versioning of ePI document bundles using a version control model inspired by Git, supporting the following lifecycle requirements:

- A **master branch** captures the sequence of approved ePI versions authorized by health authorities.
- Multiple **draft versions** may exist concurrently, representing proposed updates under regulatory review.
- Approved draft versions are **squashed and merged** into the master branch, forming a new approved version.
- Draft versions may be **merged together** before submission or approval to consolidate changes.
- Draft versions may be **withdrawn** by the submitting organization or **rejected** by the regulator, in which case they are not merged into the master branch.

This versioning approach ensures traceability, reproducibility, and alignment with regulatory processes while leveraging FHIR resources and principles.

See the [Example Workflow](#example-workflow) for JSON samples demonstrating `Provenance` resources stored separately, linking to ePI `Bundle` instances via `Provenance.target` and `Provenance.entity`.

### Version Control Model

The version control model for ePI document bundles is structured around the following concepts:

1. **Master Branch**: Represents the canonical, regulator-approved versions of the ePI. Each approved version is a distinct `Bundle` resource with a unique identifier and version number, stored in the master branch history.
2. **Draft Branches**: Represent concurrent draft versions of the ePI under development or regulatory review. Each draft is a separate `Bundle` resource, derived from a specific version in the master branch or another draft.
3. **Merging**: Approved drafts are squashed (consolidated into a single set of changes) and merged into the master branch, creating a new approved `Bundle`. Drafts may also be merged with each other to consolidate proposed changes.
4. **Discarding**: Drafts that are withdrawn or rejected are marked as inactive and not merged into the master branch, preserving the integrity of the approved history.

#### FHIR Resource Representation

The version control model is implemented using the following FHIR resources:

- **Bundle (type: document)**: The ePI document itself, containing the `Composition` and referenced resources (e.g., `MedicinalProductDefinition`, `Organization`). Each version, whether a master branch (approved) or draft, is a distinct `Bundle` instance stored in a FHIR server.
- **Provenance**: Tracks the history and relationships between ePI `Bundle` versions, including events such as derivation, merging, approval, rejection, or withdrawal. `Provenance` resources are stored **separately** in the FHIR server, not as entries within the ePI `Bundle`, to maintain the immutability of the document and support complex lifecycle relationships. Each `Provenance` resource links to one or more `Bundle` instances via the `Provenance.target` element (e.g., targeting `Bundle/epi-123`) and may reference source `Bundle` instances via `Provenance.entity` (e.g., for drafts or merges). This separation ensures traceability and auditability without altering the ePI document's content.
- **List**: Optionally used to group related versions (e.g., all drafts for a specific submission) for easier navigation and tracking within the FHIR server.

**Note on Provenance Separation**: Storing `Provenance` resources separately aligns with FHIR best practices for tracking resource lifecycles and supports the Git-like versioning model described in this guide. For example, a `Provenance` resource documenting the merge of two draft `Bundle` instances (e.g., Draft A and Draft B into Draft C) references both source `Bundle` resources in `Provenance.entity` and targets the resulting `Bundle` in `Provenance.target`. This approach enables querying of lifecycle events (e.g., `GET /Provenance?target=Bundle/epi-123`) and ensures compliance with regulatory requirements for audit trails independent of the approved ePI document.

#### Master Branch

The master branch is a sequence of approved ePI `Bundle` resources, each representing a regulator-authorized version of the drug label. Key attributes include:

- **`Bundle.identifier`**: A globally unique identifier for the ePI document, consistent across all versions (e.g., a UUID or regulatory-assigned ID).
- **`Bundle.meta.versionId`**: A FHIR-managed version identifier (e.g., "1", "2") that increments with each approved version.
- **`Composition.version`**: A business version number (e.g., "1.0", "1.1") aligned with regulatory versioning conventions, stored in the `Composition` resource within the `Bundle`.
- **`Bundle.meta.lastUpdated`**: The timestamp of the approval or last update to the version.
- **`Provenance`**: A `Provenance` resource linked to each `Bundle`, documenting the approval event, the approving authority (e.g., via `Provenance.agent.who`), and the relationship to the previous master branch version (via `Provenance.entity.what` and `Provenance.entity.role` set to "derivation").

#### Draft Branches

Draft versions are represented as separate ePI `Bundle` resources, each derived from an existing master branch version or another draft. Key attributes include:

- **`Bundle.identifier`**: Matches the identifier of the master branch `Bundle` to indicate the ePI document being modified.
- **`Bundle.meta.profile`**: Includes a profile or tag (e.g., `http://hl7.org/fhir/StructureDefinition/epi-draft`) to indicate the draft status.
- **`Bundle.meta.versionId`**: A temporary version identifier for the draft, managed by the system hosting the draft.
- **`Composition.status`**: Set to `preliminary` to indicate the draft is not yet approved.
- **`Provenance`**: A `Provenance` resource linked to the draft `Bundle`, documenting:
  - The source version (e.g., the master branch `Bundle` or another draft) via `Provenance.entity.what` with `Provenance.entity.role` set to "source".
  - The organization responsible for the draft (e.g., the pharmaceutical company) via `Provenance.agent.who`.
  - The creation or modification event (e.g., "draft created", "draft submitted") via `Provenance.activity`.

#### Merging Drafts into the Master Branch

When a draft is approved by the regulator, it is squashed (consolidated into a single, coherent set of changes) and merged into the master branch as a new approved `Bundle`. The process is as follows:

1. **Create a New Master Branch Bundle**:
   - Copy the approved draft `Bundle` to create a new `Bundle` instance.
   - Update `Bundle.meta.versionId` to the next version number in the master branch sequence.
   - Update `Composition.version` to the next regulatory version number.
   - Set `Composition.status` to `final`.
   - Update `Bundle.meta.lastUpdated` to the approval timestamp.

2. **Document the Merge with Provenance**:
   - Create a `Provenance` resource linked to the new master `Bundle`.
   - Reference the approved draft `Bundle` as the source via `Provenance.entity.what` with `Provenance.entity.role` set to "source".
   - Record the approval event via `Provenance.activity` (e.g., using a code like "approve" from a relevant code system).
   - Identify the regulator as the approving agent via `Provenance.agent.who`.

3. **Archive the Draft**:
   - Update the draft `Bundle` to reflect its incorporation into the master branch (e.g., by tagging it as "approved" or linking it to the new master `Bundle` via `Provenance`).
   - Optionally, retain the draft `Bundle` in a read-only state for audit purposes.

#### Merging Drafts Together

Drafts may be merged to consolidate changes before regulatory submission. This is represented as follows:

1. **Create a Consolidated Draft Bundle**:
   - Create a new `Bundle` instance incorporating changes from the source drafts.
   - Retain the same `Bundle.identifier` to indicate it pertains to the same ePI document.
   - Assign a new `Bundle.meta.versionId` for the consolidated draft.
   - Set `Composition.status` to `preliminary`.

2. **Document the Merge with Provenance**:
   - Create a `Provenance` resource linked to the new draft `Bundle`.
   - Reference the source draft `Bundle` resources via multiple `Provenance.entity` entries, each with `Provenance.entity.role` set to "source".
   - Record the merge event via `Provenance.activity` (e.g., "merge drafts").
   - Identify the organization performing the merge via `Provenance.agent.who`.

#### Withdrawing or Rejecting Drafts

Drafts that are withdrawn by the submitting organization or rejected by the regulator are not merged into the master branch. The process is as follows:

1. **Mark the Draft as Inactive**:
   - Update the draft `Bundle` by setting `Composition.status` to `entered-in-error` (for withdrawal) or adding a custom tag to indicate rejection (e.g., `rejected`).
   - Optionally, include a narrative in `Composition.text` explaining the reason for withdrawal or rejection.

2. **Document the Status Change with Provenance**:
   - Create a `Provenance` resource linked to the draft `Bundle`.
   - Record the withdrawal or rejection event via `Provenance.activity` (e.g., "withdraw" or "reject").
   - Identify the responsible party (e.g., the organization or regulator) via `Provenance.agent.who`.
   - Reference the draft `Bundle` via `Provenance.entity.what` with `Provenance.entity.role` set to "source".

3. **Retain for Audit**:
   - Retain the draft `Bundle` and its `Provenance` in the system for audit and traceability, ensuring it is not used for further development unless reactivated.

### Implementation Considerations

- **Storage and Retrieval**: Store ePI `Bundle` resources in a FHIR server or document repository. Use `Bundle.identifier` and `Bundle.meta.versionId` for retrieval and version tracking. Implementers may use a `List` resource to group related drafts or versions for easier navigation.
- **Version Identifiers**: Align `Composition.version` with regulatory versioning conventions (e.g., "1.0", "1.1"). Use `Bundle.meta.versionId` for system-managed versioning, ensuring uniqueness within the master branch.
- **Provenance Granularity**: Maintain a robust `Provenance` history to ensure traceability. Each significant event (e.g., draft creation, approval, rejection) should have a corresponding `Provenance` resource.
- **Regulatory Compliance**: Ensure that versioning practices comply with regional regulations (e.g., FDA, EMA). For example, include regulatory submission identifiers in `Bundle.identifier` or `Composition.extension` where required.
- **Concurrency**: Support concurrent draft development by isolating draft `Bundle` instances. Use `Provenance` to track dependencies and merges between drafts.
- **Auditability**: Retain all `Bundle` and `Provenance` resources, including withdrawn or rejected drafts, to support audits and regulatory inspections.

### Example Workflow

The following illustrates a typical versioning workflow:

1. **Initial Approved Version**:
   - A `Bundle` (ID: `epi-123`, versionId: `1`, Composition.version: `1.0`) is approved and stored in the master branch.
   - A `Provenance` resource records the approval by the regulator.

2. **Draft Creation**:
   - Two drafts are created from version `1`:
     - Draft A (`Bundle` ID: `epi-123`, versionId: `draft-a`, Composition.status: `preliminary`).
     - Draft B (`Bundle` ID: `epi-123`, versionId: `draft-b`, Composition.status: `preliminary`).
   - `Provenance` resources link each draft to the master version `1`.

3. **Draft Merge**:
   - Draft A and Draft B are merged into a new draft (`Bundle` ID: `epi-123`, versionId: `draft-c`).
   - A `Provenance` resource records the merge, referencing Draft A and Draft B as sources.

4. **Draft Approval**:
   - Draft C is approved by the regulator.
   - A new master branch `Bundle` is created (ID: `epi-123`, versionId: `2`, Composition.version: `1.1`, Composition.status: `final`).
   - A `Provenance` resource links the new master version to Draft C and records the approval.

5. **Draft Rejection**:
   - A separate draft (`Bundle` ID: `epi-123`, versionId: `draft-d`) is rejected.
   - The draft's `Composition.status` is set to `entered-in-error`, and a `Provenance` resource records the rejection event.

### Constraints and Extensions

- **Constraint**: All ePI `Bundle` resources must have a consistent `Bundle.identifier` to ensure they pertain to the same drug label.
- **Constraint**: The master branch `Bundle` resources must have `Composition.status` set to `final`, while drafts must use `preliminary` or `entered-in-error`.
- **Extension**: Implementers may define an extension on `Bundle` or `Composition` to store regulatory-specific version metadata, such as submission IDs or approval dates.
- **Profile**: Implementers should define a profile for draft ePI `Bundle` resources (e.g., `http://hl7.org/fhir/StructureDefinition/epi-draft`) to enforce draft-specific constraints.
- Ensure that master branch `Bundle` resources are accessible to all authorized stakeholders (e.g., healthcare providers, patients) once approved.
- Use FHIR security labels or `Bundle.meta.security` to enforce access policies.

