// Define Diagnostic Report Profile
Profile: OncologyKenyaDiagnosticReport
Parent: DiagnosticReport
Id: oncology-kenya-diagnosticreport
Title: "Oncology Kenya Diagnostic Report"
Description: "Defines pathology and laboratory reports for oncology patients in Kenya, integrating with DHIS2 and cancer registries."

// Category and Conclusion Code
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (required)
* conclusionCode from http://loinc.org (required)

// Report Metadata
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* encounter 0..1 MS
* performer 1..* MS
* issued 1..1 MS

// Results and Imaging
* result 0..* MS
* imagingStudy 0..* MS
* presentedForm 0..* MS
