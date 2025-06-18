Extension: Icdo3Morphology
Id: Icdo3Morphology
Title: "ICD-O-3 Morphology"
Description: "Morphology code from ICD-O-3 to describe the tumor histology."
* valueCoding 1..1
* valueCoding.system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* valueCoding.code 1..1
* ^context[0].type = #element
* ^context[0].expression = "Observation"
