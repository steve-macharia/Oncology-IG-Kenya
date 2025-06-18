Instance: medby-ig
InstanceOf: ImplementationGuide
Title: "Oncology Implementation Guide for Kenya (Oncology-IG-Kenya)"
Description: """
This Implementation Guide demonstrates how HL7® FHIR® can be leveraged to enhance oncology care in Kenya. It includes standardized profiles such as OncologyKenyaPatient and OncologyObservationKenya, tailored search parameters, and extensions reflecting Kenya's SHA and health system realities.

It is developed independently by a Kenyan health tech enthusiast to stimulate innovation, interoperability, and alignment with national cancer priorities.
"""
Usage: #definition

* url = "http://example.org/ImplementationGuide/medby"
* version = "0.1.0"
* name = "oncologyfhirigkenya"
* status = #draft
* date = "2025-06-18"
* publisher = "Steve Macharia"
* contact[0].name = "Steve Macharia"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "medbyTech254@gmail.com"
* packageId = "ke.oncology.fhir.ig"
* license = #CC0-1.0
* experimental = true
* fhirVersion = #4.0.1

// Profiles
* definition.resource[+]
  * reference = Reference(OncologyKenyaPatient)
  * name = "OncologyKenyaPatient"
  * description = "Patient profile customized for oncology care in Kenya."

* definition.resource[+]
  * reference = Reference(OncologyObservationKenya)
  * name = "OncologyObservationKenya"
  * description = "Observation profile for cancer data elements including staging, tumor markers, and performance status."

// ValueSets
* definition.resource[+]
  * reference = Reference(CancerStageVS)
  * name = "CancerStageVS"
  * description = "ValueSet for TNM and other staging codes relevant in Kenya."

* definition.resource[+]
  * reference = Reference(TumorMarkerVS)
  * name = "TumorMarkerVS"
  * description = "ValueSet for tumor markers such as CA-125, CEA."

* definition.resource[+]
  * reference = Reference(CancerObservationMethodVS)
  * name = "CancerObservationMethodVS"
  * description = "ValueSet for observation methods used in oncology diagnosis, such as histology or imaging."

* definition.resource[+]
  * reference = Reference(ECOGStatusVS)
  * name = "ECOGStatusVS"
  * description = "ValueSet for ECOG performance status used in functional assessment of patients."

// Search Parameters
* definition.resource[+]
  * reference = Reference(search-sha-id)
  * name = "Search by SHA ID"
  * description = "Search patients by SHA ID"

* definition.resource[+]
  * reference = Reference(search-facility-upi)
  * name = "Search by Facility UPI"
  * description = "Search patients by facility UPI"

* definition.resource[+]
  * reference = Reference(search-county)
  * name = "Search by County"
  * description = "Search patients by county (address.state)"

* definition.resource[+]
  * reference = Reference(search-education-level)
  * name = "Search by Education Level"
  * description = "Search patients by education level"

* definition.resource[+]
  * reference = Reference(search-occupation)
  * name = "Search by Occupation"
  * description = "Search patients by occupation"

// Page definition
* definition.page.nameUrl = "index.html"
* definition.page.title = "Home"
* definition.page.generation = #html
