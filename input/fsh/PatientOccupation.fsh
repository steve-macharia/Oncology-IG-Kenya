Extension: PatientOccupation
Id: patient-occupation
Title: "Patient Occupation"
Description: "The current or most recent occupation of the patient."
* ^url = "https://steve-macharia.github.io/Oncology-IG-Kenya/StructureDefinition/patient-occupation"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1