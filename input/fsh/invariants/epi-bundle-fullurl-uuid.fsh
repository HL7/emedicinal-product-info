Invariant: epi-bdl-uuid
Description: "Every entry.fullUrl in an ePI Bundle SHALL be a UUID URN (urn:uuid:...)."
Severity: #error
Expression: "fullUrl.startsWith('urn:uuid:')"
