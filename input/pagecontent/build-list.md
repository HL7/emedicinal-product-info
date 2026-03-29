The FHIR `List` resource is a versatile configuration tool within the ePI ecosystem. It is primarily used to track and manage collections of ePI documents, acting as a real-time registry of authorized product information.

## Primary Use Cases

There are four primary industry use cases for implementing the ePI Tracking List:

### Medicinal Product
A list of ePIs for a given medicinal product. Regulatory agencies or Marketing Authorization Holders can use this `List` to track all localized language instances and document types (e.g., SmPC, PIL) for a single authorized product.
👉 [View Medicinal Product Showcase](examples/epi-list-showcase-1.html){:target="_blank"}

### Medicinal Product Group
A list of ePIs for a given class or category of drugs. Health authorities or researchers can use a `List` to track all ePIs related to a specific therapeutic category, such as all approved respiratory vaccines or oncology products.
👉 [View Drug Category Showcase](examples/epi-list-showcase-3.html){:target="_blank"}

### Jurisdiction
A list of ePIs authorized by a health authority within their jurisdiction. For example, all ePIs authorized by PMDA for use in Japan, or all ePIs centrally authorized for use by the EMA.

### Jurisdiction Group
A list of ePIs authorized by multiple health authorities for use within a region. Regional health authorities or global organizations can use a `List` to track approved ePI documents across an entire region (e.g., all ePIs authorized by ASEAN member countries).
👉 [View Jurisdiction Group Showcase](examples/epi-list-showcase-2.html){:target="_blank"}

---

## Core List Elements

The FHIR `List` data model is mapped extensively to support these four ePI paradigms:

*   **`extension` (Metadata)**: The profile supports capturing the list's `VersionNumber`, `Jurisdiction`, `MedicineDomain`, and the `RegulatoryAgency` that authorized the ePIs.
*   **`identifier`**: The `List` supports multiple identifiers. Typically, `List.identifier` carries the persistent UUID that spans across versions, while `List.id` tracks the specific version instance UUID.
*   **`status`**: Set to `current` to indicate the tracking list itself is actively maintained and published.
*   **`mode`**: Set to `working` because ePI tracking lists are living documents that evolve as new products are approved, updated, or withdrawn.
*   **`code`**: Maps to the specific classification of the ePI List: `medicinal-product`, `medicinal-product-group`, `jurisdiction`, or `jurisdiction-group`.
*   **`subject`**: Optional reference to the medicinal product(s) the ePIs are related to. This is heavily utilized in single-product lists but frequently omitted in large, regional jurisdiction trackers.
*   **`source`**: The organization that instantiated the list.
*   **`entry.item`**: The core mechanism of the list. This references the actual ePI `Bundle`. You provide the target `Bundle.identifier` UUID in `entry.item.identifier` and a brief readable title in `entry.item.display`.
*   **`entry.flag`**: Defines the specific type of ePI document presented in the entry. Standard flags include `smpc` (Summary of Product Characteristics), `pil` (Patient Information Leaflet), `ifu` (Instructions for Use), `pack-artwork`, and `dhcp` (Dear Healthcare Professional Letter).
*   **`entry.deleted`**: Used to mark superseded or withdrawn ePIs without completely removing their historical audit record from the list.

---

## How to Build the List

Building an ePI Tracking List from a business process perspective is simple:

1.  **Initialize the List**: Create a new FHIR `List` resource. Immediately set the `status` to `current` and the `mode` to `working`.
2.  **Define the Scope**: Assign the correct list classification `code` based on the 4 use cases, and apply the appropriate metadata extensions (`RegulatoryAgency`, `VersionNumber`).
3.  **Add Entries**: As new ePI `Bundle`s are approved by the health authority, append a new `entry` object to the List. The `entry.item.identifier` should strictly point to the newly registered `Bundle` UUID. Use `entry.item.display` to provide an immediate human-readable context.
4.  **Tag Appropriately**: Use `entry.flag` to explicitly label the specific class of ePI document (e.g., `smpc`, `pack-artwork`).
5.  **Maintain History**: An entry should only be deleted (by setting `entry.deleted` to `true`) if it is no longer needed (e.g., Marketing Authorization is withdrawn) or if the ePI's `bundle.identifier` has changed. Since an ePI's `bundle.identifier` persists across normal version updates, the existing entry will naturally point to the current version without needing to be marked as deleted.
