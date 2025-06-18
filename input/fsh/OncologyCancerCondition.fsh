// Define Oncology Condition Profile for Kenya
Profile: OncologyKenyaCondition
Parent: Condition
Id: oncology-kenya-condition
Title: "Oncology Kenya Condition"
Description: "A Condition profile for structured oncology diagnosis documentation in Kenya, aligned with national cancer registry reporting and HL7® FHIR® standards."

* ^status = #active
* ^publisher = "Kenyan Digital Health Community"
* ^contact[0].telecom.system = #email
* ^contact[0].telecom.value = "medbyTech254@gmail.com"
* ^jurisdiction[0].coding[0].system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction[0].coding[0].code = #404
* ^jurisdiction[0].coding[0].display = "Kenya"

////////////////////////////////////////////////////////////////////////////////
// Must-Have Elements for National Reporting and Oncology Care
////////////////////////////////////////////////////////////////////////////////

* code 1..1 MS
* code from http://hl7.org/fhir/sid/icd-10 (required)
* code ^short = "ICD-10 diagnosis code"
* code ^definition = "Diagnosis code for oncology condition using ICD-10 classification."

* category 0..* MS
* category from http://terminology.health.go.ke/ValueSet/condition-category-kenya (extensible)
* category ^short = "Kenya-specific condition categories"
* category ^definition = "Clinical grouping of condition as defined in Kenyan clinical policy or registry definitions."

* clinicalStatus 1..1 MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^short = "Active, recurrence, remission, resolved"
* clinicalStatus ^definition = "The clinical status of the condition, required for longitudinal tracking and outcomes."

* severity 0..1 MS
* severity from http://hl7.org/fhir/ValueSet/condition-severity (preferred)
* severity ^short = "Severity level (e.g., mild, moderate, severe)"
* severity ^definition = "Clinical severity of the cancer at diagnosis or during follow-up."

* onset[x] 1..1 MS
* onset[x] ^short = "Onset date/time or period"
* onset[x] ^definition = "Mandatory onset information for surveillance and clinical relevance."

* recordedDate 1..1 MS
* recordedDate ^short = "Date of documentation"
* recordedDate ^definition = "The date the condition was first recorded in the system."
