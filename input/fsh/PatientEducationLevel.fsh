Extension: PatientEducationLevel
Id: patient-educationLevel
Title: "Patient Education Level"
Description: "The highest level of education attained by the patient."
* ^url = "https://oncology.ig.kenya/StructureDefinition/patient-educationLevel"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
