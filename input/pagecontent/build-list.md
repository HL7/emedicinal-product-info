The FHIR `List` resource is a versatile configuration tool within the ePI ecosystem. It is primarily used to track and manage collections of ePI documents, acting as a real-time registry of authorized product information.

## Primary Use Cases

There are three primary industry use cases for implementing the ePI Tracking List:

### 1. Multi-Language Single Product Tracker
Regulatory agencies (like the EMA) or Marketing Authorization Holders can use a `List` to track all localized language instances for an authorized product. For example, managing the English Master SmPC and PIL alongside all 24 European translation instances mapped underneath a single tracking resource. Another example would be tracking a product in Japan, where one set of ePIs is maintained in Japanese and another translated set is provided in English.
👉 [View Single Product Showcase](epi-list-showcase-1.html)

### 2. Cross-Jurisdictional Tracker
Regional health authorities or global organizations can use a `List` to track multiple approved ePI documents across an entire region (e.g., ASEAN member states). This allows for centralized monitoring of the active electronic labeling status of diverse products spanning different countries.
👉 [View Cross-Jurisdiction Showcase](epi-list-showcase-2.html)

### 3. Drug Category or Therapeutic Class Tracker
Health authorities, public health organizations, or researchers can use a `List` to track all ePIs related to a specific therapeutic category, such as all approved respiratory vaccines or oncology products. This enables targeted monitoring and rapid querying of product information updates within critical drug classes.
👉 [View Drug Category Showcase](epi-list-showcase-3.html)

---

## Core List Elements

The FHIR `List` data model is straightforward but highly effective for tracking ePIs. Here are the most important elements you will need:

*   **`status`**: Set to `current` to indicate the tracking list itself is actively maintained and published.
*   **`mode`**: Set to `working` because ePI tracking lists are living documents that evolve as new products are approved, updated, or withdrawn.
*   **`code`**: Typically mapped to **LOINC 34390-5** (Human Pharmacy Label) to explicitly classify the list's clinical purpose globally.
*   **`title` & `note`**: Business-friendly fields to describe what the list is tracking (e.g., "Biktarvy ePI Language Tracker — EU").
*   **`entry.item`**: The core mechanism of the list. This references the actual ePI `Bundle` resource payload. 
*   **`entry.flag`**: Use this to differentiate entries safely in the tracker, such as explicitly labeling an English bundle as "Master" and a French bundle as "Translation".
*   **`entry.deleted`**: Used to mark superseded or withdrawn ePIs without completely removing their historical audit record from the list.

---

## How to Build the List

Building an ePI Tracking List from a business process perspective is simple:

1.  **Initialize the List**: Create a new FHIR `List` resource. Immediately set the `status` to `current` and the `mode` to `working`.
2.  **Define the Scope**: Use the `title` and `note` fields to clearly communicate what this list tracks to human reviewers (e.g., "ASEAN Approved Product Labels"). Assign the correct LOINC `code` (34390-5).
3.  **Add Entries**: As new ePI `Bundle`s are approved by the health authority, append a new `entry` object to the List. The `entry.item.reference` should point directly to the newly registered `Bundle`.
4.  **Tag Appropriately**: Use `entry.flag` to add useful tracking metadata that applications might need (e.g., "Type 1 PDF", "Translation", "PIL").
5.  **Maintain History**: When an ePI is superseded by a newer version (e.g., a safety update), or a Market Authorization is withdrawn, do not delete the item. Instead, set `entry.deleted` to `true` and simply append the new version if applicable.
