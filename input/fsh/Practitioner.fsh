Profile: OncologyKenyaPractitioner
Parent: Practitioner
Id: oncology-kenya-practitioner
Title: "Oncology Practitioner Kenya"
Description: """
FHIR R4 profile for practitioners involved in oncology care in Kenya.
Aligns with Kenya National Cancer Control Strategy (2023–2027), Kenya Cancer Policy (2020–2030),
KEMRI Cancer Registry guidelines, and workforce tracking as emphasized in the KESHO and Nyandarua registry reports.
Supports credentialing, role classification, and regional deployment for cancer care delivery.
"""

// Must-Support elements
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..1 MS
* name.given 1..* MS
* name.family 1..1 MS
* telecom 0..* MS
* address 0..1 MS
* address.text 0..1 MS
* address.district 0..1
* address.city 0..1
* address.state 0..1
* address.country 0..1
* gender 0..1 MS
* birthDate 0..1 MS
* qualification 1..* MS
* qualification.identifier 0..1
* qualification.code 1..1 MS
* qualification.code from https://www.kenyacode.com/fhir/ValueSet/kenya-oncology-qualification-codes (extensible)
* qualification.issuer 0..1
* communication 0..* MS

// Kenyan oncology-specific extensions
* extension contains
    PractitionerWorkCounty named workCounty 0..1 and
    PractitionerCadreCode named cadreCode 0..1

Extension: PractitionerWorkCounty
Id: practitioner-work-county
Title: "County Where Oncology Practitioner is Based"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: PractitionerCadreCode
Id: practitioner-cadre-code
Title: "Oncology Cadre Classification"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-oncology-cadres (required)

// Example Instance
Instance: example-oncology-practitioner
InstanceOf: OncologyKenyaPractitioner
Title: "Dr. Grace Wanjiku – Consultant Oncologist"
Description: "Example oncology practitioner in Nairobi, Kenya"
* identifier.system = "http://smarthealth.go.ke/practitioner-ids"
* identifier.value = "ONC-001256"
* name.family = "Wanjiku"
* name.given = "Grace"
* telecom.system = #email
* telecom.value = "grace.wanjiku@uon.ac.ke"
* address.text = "Kenyatta National Hospital, Nairobi"
* address.city = "Nairobi"
* address.country = "KE"
* gender = #female
* birthDate = "1980-04-12"
* qualification[0].code = https://www.kenyacode.com/fhir/CodeSystem/kenya-oncology-qualification-codes#CONS-ONC "Consultant Oncologist"
* qualification[0].issuer.display = "Kenya Medical Practitioners and Dentists Council"
* extension[workCounty].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Nairobi
* extension[cadreCode].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-oncology-cadres#CONSULTANT
