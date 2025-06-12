//Define Condition Profile
Profile: OncologyKenyaCondition
Parent: Condition
Id : oncology-kenya-condition
Title: "oncology kenya condition"
Description: "condition profile from oncology diagnoses in Kenya, ensuring structured documentation and national cancer registry reporting."
* code from http://hl7.org/fhir/sid/icd-10 (required)
* category from http://terminology.health.go.ke/ValueSet/condition-category-kenya (extensible)
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)
* severity from http://hl7.org/fhir/ValueSet/condition-severity (preferred)
* onset[x] 1..1 MS
* recordedDate 1..1 MS