Profile: OncologyKenyaPractitionerRole
Parent: PractitionerRole
Id: oncology-kenya-practitioner-role
Title: "Oncology Practitioner Role Kenya"
Description: """
FHIR R4 profile for defining roles of healthcare professionals involved in oncology services in Kenya.
Supports assignment of oncology roles, facility affiliations, cancer services scope, and geographic deployment.
Based on Kenya Cancer Policy (2020–2030), National Cancer Control Strategy (2023–2027),
KEMRI cancer registry requirements, and KESHO conference findings.
"""

// Must-Support elements
* practitioner 1..1 MS
* organization 1..1 MS
* code 1..* MS
* code from https://www.kenyacode.com/fhir/ValueSet/kenya-oncology-roles (extensible)
* specialty 0..* MS
* specialty from https://www.kenyacode.com/fhir/ValueSet/kenya-oncology-specialties (extensible)
* location 0..1 MS
* healthcareService 0..* MS
* telecom 0..* MS
* active 1..1 MS
* period 0..1 MS

// Kenyan extensions
* extension contains
    PractitionerRoleCounty named countyOfService 0..1 and
    OncologyServiceFocus named oncologyServiceFocus 0..1

Extension: PractitionerRoleCounty
Id: practitioner-role-county
Title: "County of Oncology Service"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: OncologyServiceFocus
Id: oncology-service-focus
Title: "Focus Area of Oncology Service"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-oncology-service-areas (required)

Instance: example-oncology-practitioner-role
InstanceOf: OncologyKenyaPractitionerRole
Title: "Oncologist Role at KNH"
Description: "Dr. Grace Wanjiku’s role as Consultant Oncologist at Kenyatta National Hospital"
* practitioner = Reference(OncologyKenyaPractitioner/example-oncology-practitioner)
* organization = Reference(Organization/uon-oncology-center)
* code = https://www.kenyacode.com/fhir/CodeSystem/kenya-oncology-roles#CONSULTANT "Consultant Oncologist"
* specialty = https://www.kenyacode.com/fhir/CodeSystem/kenya-oncology-specialties#medical-oncology "Medical Oncology"
* active = true
* period.start = "2022-01-01"
* location = Reference(Location/nairobi-oncology-ward)
* healthcareService = Reference(HealthcareService/cancer-treatment)
* telecom.system = #phone
* telecom.value = "+254712345678"
* extension[countyOfService].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Nairobi
* extension[oncologyServiceFocus].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-oncology-service-areas#chemo "Chemotherapy"
