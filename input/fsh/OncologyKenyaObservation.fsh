Profile: OncologyObservationKenya
Parent: Observation
Id: oncology-observation-kenya
Title: "Oncology Observation Kenya"
Description: "Observation profile for cancer-related data elements in Kenya's oncology care, supporting reporting, staging, diagnosis, and national registry alignment."

// Core elements
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)

* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/observation-codes (extensible)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1..1 MS
* value[x] 0..1 MS

// Cancer staging
* code from http://fhir.org/guides/kenya/ValueSet/cancer-stage (extensible)
* value[x] from http://fhir.org/guides/kenya/ValueSet/cancer-stage-values (extensible)

// Tumor markers
* component 0..* MS
* component.code from http://fhir.org/guides/kenya/ValueSet/tumor-marker (example)
* component.value[x] 0..1

// ICD-O-3 Morphology extension
* extension contains Icdo3Morphology named icdo3Morphology 0..1 MS

// ICD-O-3 Topography extension
* extension contains Icdo3Topography named icdo3Topography 0..1 MS

// ECOG Performance Status extension
* extension contains EcogPerformanceStatus named ecogPerformanceStatus 0..1 MS

// Cancer Registry Reporting extension
* extension contains RegistryReporting named registryReporting 0..1 MS

// Specimen
* specimen 0..1 MS
* specimen only Reference(Specimen)

// Body site
* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

// Interpretation
* interpretation 0..1 MS
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)

// Method of observation
* method 0..1 MS
* method from http://fhir.org/guides/kenya/ValueSet/cancer-observation-method (example)

// Reference range
* referenceRange 0..* MS
