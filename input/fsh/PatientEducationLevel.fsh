Extension: PatientEducationLevel
Id: patient-educationLevel
Title: "Patient Education Level"
Description: "Captures the highest level of formal education attained by a patient in Kenya. Supports cancer registry reporting, care planning, and socioeconomic assessment."

* ^url = "https://oncology.ig.kenya/StructureDefinition/patient-educationLevel"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2025-06-18"
* ^publisher = "Steve Macharia"
* ^contact[0].name = "Steve Macharia"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "medbyTech254@gmail.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#KE "Kenya"
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* ^purpose = "Support national oncology reporting and stratify cancer-related interventions by patient education level in the Kenyan context."

// This is a complex extension with three sub-extensions:
* extension contains
    level 1..1 MS and
    dataSource 0..1 MS and
    verifiedBy 0..1 MS

// Education level sub-extension
* extension[level].value[x] only CodeableConcept
* extension[level].valueCodeableConcept from http://terminology.health.go.ke/ValueSet/education-level-kenya (preferred)
  * ^short = "Highest education level attained"
  * ^definition = "Coded description of the patient's highest level of formal education completed."

// Source of the education data (e.g., self-report)
* extension[dataSource].value[x] only CodeableConcept
  * ^short = "Source of education information"
  * ^definition = "Describes how the education level was obtained, e.g., self-reported, guardian, or official document."

// Verifying clinician
* extension[verifiedBy].value[x] only Reference(Practitioner)
  * ^short = "Verifier of the education information"
  * ^definition = "Healthcare provider who confirmed this education level, if not self-reported."
