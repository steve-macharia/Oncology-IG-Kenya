// Define MedicationRequest Profile
Profile: OncologyKenyaMedicationRequest
Parent: MedicationRequest
Id: oncology-kenya-medicationrequest
Title: "Oncology Kenya MedicationRequest"
Description: "Oncology-specific medication request profile for Kenya, integrating with SHA, DHIS2, and Oncology Dispensing Tool (ODT)."

// Medication details
* medication[x] from http://who.org/essential-medicines (extensible)
* status MS
* statusReason 0..1 MS

// Dosage and Administration
* dosageInstruction 1..* MS
* dosageInstruction.timing 1..1 MS
* dosageInstruction.route 1..1 MS
* dosageInstruction.method 0..1 MS

// Substitution and Dispensing
* substitution.allowedBoolean 1..1 MS
* dispenseRequest.performer 0..1 MS

// Diagnosis and Treatment Link
* reasonReference 0..* MS
