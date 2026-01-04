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

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 25%;">Value</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Purpose / Use Case in ePI</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>preliminary</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">The ePI is a draft (e.g., during initial submission, variation, renewal or any update process). It is still under review by the company or regulatory authority and not yet approved for use.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>final</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">The ePI has been officially approved by the regulatory authority and is the current authorized electronic product information in force.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>cancelled</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">A draft ePI that was abandoned (e.g., submission withdrawn before approval or a parallel variation draft that is no longer pursued).</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>entered-in-error</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">The ePI was created or published by mistake and must be ignored (e.g., accidental duplicate).</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>deprecated</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">A previously approved (final) ePI that has been officially superseded or withdrawn (e.g., marketing authorisation revoked, product discontinued, or replaced by a newer approved version).</td>
    </tr>
  </tbody>
</table>

#### Composition.relatesTo Terminology

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left; width: 25%;">Value</th>
      <th style="padding: 12px; border: 1px solid #d0d0d0; text-align: left;">Purpose / Use Case in ePI</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>derived-from</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Used when creating a new draft ePI by copying content from an existing approved (final) ePI as the starting point (e.g., for a variation, renewal, or safety update).</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>amends</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Used when a new approved ePI modifies or adds content to a previous approved ePI, especially in merge scenarios where content from multiple approved ePIs is consolidated into one.</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>replaces</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Used when a newer version (draft or final) completely supersedes an earlier version of the same ePI lineage (e.g., subsequent drafts during review, or a new approved version replacing the previous approved one).</td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #d0d0d0;"><strong>retracts</strong></td>
      <td style="padding: 12px; border: 1px solid #d0d0d0;">Used to formally withdraw or invalidate a previous version (usually in combination with status = deprecated or entered-in-error).</td>
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

### Tabular view of an ePI lifecycle

<table style="width:100%; border-collapse: collapse; border: 1px solid #d0d0d0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; font-size: 13px;">
  <thead>
    <tr style="background-color: #003087; color: #ffffff;">
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 3%;">#</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 12%;">ePI Document</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 14%;">Action</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 10%;">bundle.identifier</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 10%;">comp.identifier</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 5%;">ver</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 8%;">status</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left; width: 15%;">relatesTo</th>
      <th style="padding: 10px; border: 1px solid #d0d0d0; text-align: left;">Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Initial ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company creates initial draft</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-A1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">-</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Submitted as part of MAA to EMA</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Initial ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company updates draft</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-A2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-A1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">First update to initial draft</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Initial ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company updates draft</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-A3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-A2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Second update to initial draft</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Initial ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">EMA approves ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-A4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">final</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-A3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Approved ePI for use</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">5</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Safety Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company creates draft from approved ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-B1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">5</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">derived-from UUID-A4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">New ePI for safety update, submitted to EMA</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">6</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Stability Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company creates draft from approved ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-C1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">6</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">derived-from UUID-A4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">New ePI for stability update, submitted to EMA</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">7</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Safety Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company updates draft</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-B2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">7</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-B1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">First update to safety draft</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">8</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Safety Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company updates draft</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-B3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">8</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-B2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Second update to safety draft</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">9</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Stability Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Company updates draft</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-C2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">9</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">preliminary</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-C1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">First update to stability draft</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">10</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Stability Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">EMA approves ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-C3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">10</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">final</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-C2</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Stability update approved by EMA</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">11</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Safety Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">EMA approves ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-B4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">11</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">final</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">replaces UUID-B3</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Safety update approved by EMA after stability update</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">12</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Stability Update ePI</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Merge content from approved safety update</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-1</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">UUID-C4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">12</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">final</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">amends UUID-C3, derived-from UUID-B4</td>
      <td style="padding: 10px; border: 1px solid #d0d0d0;">Updated stability ePI incorporates safety update content</td>
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
