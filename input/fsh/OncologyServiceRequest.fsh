Profile: OncologyKenyaServiceRequest
Parent: ServiceRequest
Id: oncology-kenya-service-request
Title: "Oncology Service Request Kenya"
Description: """
A specialized ServiceRequest profile for oncology-related referrals, diagnostics, and procedures in Kenya. Informed by the Kenya National Cancer Control Strategy (2023–2027), Kenya Cancer Policy (2020–2030), and data practices from KEMRI and county cancer registries.
Supports service ordering for biopsies, imaging, oncology specialist reviews, palliative care referrals, and tracking within a multidisciplinary care model.
"""

// Mandatory Core Elements
* status 1..1 MS
* intent 1..1 MS
* subject 1..1 MS
* code 1..1 MS
* occurrence[x] only dateTime or Period or Timing
* requester 0..1 MS
* performer 0..* MS
* reasonCode 0..* MS
* supportingInfo 0..* MS
* authoredOn 0..1 MS
* priority MS
* encounter 0..1 MS

// ICD-10 Bindings
* code from http://id.who.int/icd10 (required)
* reasonCode from http://id.who.int/icd10 (extensible)

// Kenyan-Specific Extensions
* extension contains
    ServiceRequestContextCounty named county 0..1 and
    ServiceRequestRegistryFlag named reportToRegistry 0..1 and
    ServiceRequestReferralType named referralType 0..1

// Custom Extensions
Extension: ServiceRequestContextCounty
Id: service-request-context-county
Title: "County Where Request Originated"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: ServiceRequestRegistryFlag
Id: service-request-registry-flag
Title: "Flag for National Cancer Registry Reporting"
* value[x] only boolean

Extension: ServiceRequestReferralType
Id: service-request-referral-type
Title: "Referral Type (Internal or External)"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.sha.go.ke/fhir/ValueSet/kenya-referral-types (extensible)

// Example Instance
Instance: example-oncology-service-request
InstanceOf: OncologyKenyaServiceRequest
Title: "Referral for Breast Ultrasound - Kiambu County"
Description: "Service request for breast ultrasound to evaluate palpable lump in patient"
* status = #active
* intent = #order
* code = http://id.who.int/icd10#Z01.6 "Radiological examination, not elsewhere classified"
* subject = Reference(Patient/example)
* occurrenceDateTime = "2025-07-01"
* requester = Reference(Practitioner/oncologist-kiambu)
* performer[0] = Reference(Organization/kiambu-imaging-center)
* reasonCode[0] = http://id.who.int/icd10#C50.9 "Malignant neoplasm of breast, unspecified"
* authoredOn = "2025-06-25"
* priority = #urgent
* encounter = Reference(Encounter/example-oncology-encounter)
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Kiambu
* extension[referralType].valueCodeableConcept = https://www.sha.go.ke/fhir/CodeSystem/referral-type#external
* extension[reportToRegistry].valueBoolean = true
