Extension: EcogPerformanceStatus
Id: ecogPerformanceStatus
Title: "ECOG Performance Status"
Description: "Eastern Cooperative Oncology Group (ECOG) performance status."
* valueCodeableConcept 1..1
* valueCodeableConcept from https://steve-macharia.github.io/Oncology-IG-Kenya/ValueSet/ecog-performance-status (preferred)
* ^context[0].type = #element
* ^context[0].expression = "Observation"
