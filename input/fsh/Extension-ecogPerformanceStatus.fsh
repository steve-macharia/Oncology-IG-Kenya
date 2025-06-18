Extension: EcogPerformanceStatus
Id: ecogPerformanceStatus
Title: "ECOG Performance Status"
Description: "Eastern Cooperative Oncology Group (ECOG) performance status."
* valueCodeableConcept 1..1
* valueCodeableConcept from http://fhir.org/guides/kenya/ValueSet/ecog-status (preferred)
* ^context[0].type = #element
* ^context[0].expression = "Observation"
