// Define Cancer Registry Report Profile
Profile: OncologyKenyaRegistryReport
Parent: DocumentReference
Id: oncology-kenya-registry-report
Title: "Oncology Kenya Registry Report"
Description: "Defines structured cancer registry reporting format for Kenya, integrating with KEMRI Cancer Registry, Nairobi Cancer Registry, and DHIS2."

// Document Type and Status
* type from http://hl7.org/fhir/ValueSet/document-classcodes (required)
* status from http://hl7.org/fhir/ValueSet/document-reference-status (required)

// Report Metadata
* category 0..1 MS
* date 1..1 MS
* author 1..* MS
* authenticator 0..1 MS
* custodian 1..1 MS

// Content and Format
* content.attachment.contentType 1..1 MS
* content.attachment.data 0..1 MS
* content.attachment.url 0..1 MS
* content.format 0..1 MS
