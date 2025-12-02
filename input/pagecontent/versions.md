This page describes the recommended approach for versioning an ePI document throughout its lifecycle. This includes from drafts submitted for review, updates during label assessment, approvals, withdrawals, ePI merges or ePI split.

## Overview

The ePI document is represented as a FHIR Document Bundle containing a Composition resource and other related resources. Only the Bundle and Composition resources are needed to support this version control method.

The following sections describe how to use the relevant Bundle and Composition elements to achieve the desired outcomes for version control, audit trails, and traceability.

### Bundle Version Elements

- **Bundle.id**: A server-managed Universally Unique Identifier (UUID) that uniquely identifies the Bundle resource instance on the server. This ID is not persistent across versions. As a server managed id it will be overwritten each time it is moved or copied to a different FHIR server.
- **Bundle.meta.versionId**: A server-managed version number, incremented with each update to this ePI (e.g., 1, 2, 3, 4).
- **Bundle.meta.lastUpdated**: A server-managed timestamp indicating the last modification time of this Bundle.
- **Bundle.identifier**: A business-managed UUID that remains the same across all versions of a specific ePI. This identifier is used to group a set of ePIs together across versions.  
  Unlike the server-managed identifier, this identifier is assigned by a business user's structured authoring software. This identifier remains unchanged by FHIR servers even if the ePI is copied or moved to a different server. This identifier serves as a common identifier for use across organizations or departments.

### Composition Version Elements

- **Composition.identifier**: A business-managed UUID that is unique for each version of the ePI. A new UUID is generated for each version to distinguish this ePI from any other versions.
- **Composition.version**: A business-managed version number (e.g., 1, 2, 3, 4), incremented with each update to this ePI.
- **Composition.status**: Indicates the lifecycle status of the ePI, with values restricted to `preliminary`, `final`, `cancelled`, `entered-in-error`, or `deprecated`.
- **Composition.relatesTo**: Used to establish a lifecycle link between two or more related ePIs. E.g., a draft label is related to the authorized label it was copied from.

#### Composition.status Terminology

<table style="border-collapse: collapse; width: 100%;">
  <thead style="background-color: #f0f0f0;">
    <tr>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">Value</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">Purpose / Use Case in ePI</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">The ePI is a draft (e.g., during initial submission, variation, renewal or any update process). It is still under review by the company or regulatory authority and not yet approved for use.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">final</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">The ePI has been officially approved by the regulatory authority and is the current authorized electronic product information in force.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">cancelled</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">A draft ePI that was abandoned (e.g., submission withdrawn before approval or a parallel variation draft that is no longer pursued).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">entered-in-error</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">The ePI was created or published by mistake and must be ignored (e.g., accidental duplicate).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">deprecated</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">A previously approved (final) ePI that has been officially superseded or withdrawn (e.g., marketing authorisation revoked, product discontinued, or replaced by a newer approved version).</td>
    </tr>
  </tbody>
</table>

#### Composition.relatesTo Terminology

<table style="border-collapse: collapse; width: 100%;">
  <thead style="background-color: #f0f0f0;">
    <tr>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">Value</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">Purpose / Use Case in ePI</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">derived-from</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Used when creating a new draft ePI by copying content from an existing approved (final) ePI as the starting point (e.g., for a variation, renewal, or safety update).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">amends</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Used when a new approved ePI modifies or adds content to a previous approved ePI, especially in merge scenarios where content from multiple approved ePIs is consolidated into one.</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Used when a newer version (draft or final) completely supersedes an earlier version of the same ePI lineage (e.g., subsequent drafts during review, or a new approved version replacing the previous approved one).</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">retracts</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Used to formally withdraw or invalidate a previous version (usually in combination with status = deprecated or entered-in-error).</td>
    </tr>
  </tbody>
</table>

## Version Control Scenario Example

### Step 1: Creating a New Version
1. A new Bundle is created with a new `Bundle.id` and an initial `Bundle.meta.versionId` of "1".
2. The `Bundle.identifier` remains the same as in previous versions to maintain continuity.
3. A new Composition is included with a new `Composition.identifier` and an updated `Composition.version`.
4. The `Composition.relatesTo` field references the prior version’s Composition, if applicable.

### Step 2: Updating an Existing Version
1. The server updates the existing Bundle, incrementing `Bundle.meta.versionId` and updating `Bundle.meta.lastUpdated`.
2. The `Bundle.identifier` remains unchanged.
3. The Composition may be updated with a new `Composition.identifier` and `Composition.version` if the update constitutes a new document version.

### Step 3: Tracking and Audit
1. Both `Bundle.identifier` and `Composition.identifier` allow tracking of the ePI document across systems.
2. The `Composition.relatesTo` field provides a version history by linking to prior Compositions.
3. Server-managed fields (`Bundle.id`, `meta.versionId`, `meta.lastUpdated`) ensure compliance with FHIR versioning.

## Viewing ePI Lifecycles

### Tabular view of an ePI lifecycle

<table style="border-collapse: collapse; width: 100%; font-size: 0.95em;">
  <thead style="background-color: #f0f0f0;">
    <tr>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">#</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">ePI Document</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">Action</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">bundle.identifier</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">composition.identifier</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">composition.version</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">composition.status</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">composition.relatesTo</th>
      <th style="border: 1px solid #d3d3d3; padding: 8px; text-align: left;">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Initial ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company creates initial draft</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-A1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">-</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Submitted as part of MAA to EMA</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Initial ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company updates draft</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-A2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-A1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">First update to initial draft</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Initial ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company updates draft</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-A3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-A2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Second update to initial draft</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Initial ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">EMA approves ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-A4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">final</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-A3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Approved ePI for use</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">5</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Safety Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company creates draft from approved ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-B1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">5</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">derived-from UUID-A4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">New ePI for safety update, submitted to EMA</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">6</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Stability Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company creates draft from approved ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-C1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">6</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">derived-from UUID-A4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">New ePI for stability update, submitted to EMA</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">7</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Safety Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company updates draft</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-B2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">7</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-B1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">First update to safety draft</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">8</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Safety Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company updates draft</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-B3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">8</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-B2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Second update to safety draft</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">9</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Stability Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Company updates draft</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-C2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">9</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">preliminary</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-C1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">First update to stability draft</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">10</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Stability Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">EMA approves ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-C3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">10</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">final</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-C2</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Stability update approved by EMA</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">11</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Safety Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">EMA approves ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-B4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">11</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">final</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">replaces UUID-B3</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Safety update approved by EMA after stability update</td>
    </tr>
    <tr>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">12</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Stability Update ePI</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Merge content from approved safety update</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-1</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">UUID-C4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">12</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">final</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">amends UUID-C3, derived-from UUID-B4</td>
      <td style="border: 1px solid #d3d3d3; padding: 8px;">Updated stability ePI incorporates safety update content</td>
    </tr>
  </tbody>
</table>

### Graphical view of an ePI lifecycle

The version-control metadata in the ePI Bundle/Composition can easily be rendered as a diagram (e.g., using Mermaid, GraphViz, draw.io). See the following figures for examples.

**Figure 1** – From initial draft to first approved ePI

<span style="display: inline-block; vertical-align: middle;">
  <img src="ePI-lifecycle-initial-to-approval.png" alt="Initial approval workflow" style="width: 600px; height: auto;" />
</span>

**Figure 2** – Parallel safety and stability variations with final merge

<span style="display: inline-block; vertical-align: middle;">
  <img src="ePI-lifecycle-branching-and-merge.png" alt="Parallel variations and merge" style="width: 600px; height: auto;" />
</span>

**Figure 3** – Deprecation / withdrawal of an authorised ePI

<span style="display: inline-block; vertical-align: middle;">
  <img src="ePI-lifecycle-withdrawal-example.png" alt="Withdrawal example" style="width: 600px; height: auto;" />
</span>
