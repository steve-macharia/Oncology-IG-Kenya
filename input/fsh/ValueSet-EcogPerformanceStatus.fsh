ValueSet: EcogPerformanceStatusVS
Id: ecog-performance-status
Title: "ECOG Performance Status"
Description: "Standard ECOG performance status codes used to assess patient functional status."
* ^url = "http://example.org/fhir/ValueSet/ecog-performance-status"
* ^status = #active
* ^version = "1.0.0"
* include codes from system http://example.org/fhir/CodeSystem/ecog-status
* http://example.org/fhir/CodeSystem/ecog-status#0 "Fully active"
* http://example.org/fhir/CodeSystem/ecog-status#1 "Restricted in strenuous activity"
* http://example.org/fhir/CodeSystem/ecog-status#2 "Ambulatory, self-care only"
* http://example.org/fhir/CodeSystem/ecog-status#3 "Limited self-care"
* http://example.org/fhir/CodeSystem/ecog-status#4 "Completely disabled"
