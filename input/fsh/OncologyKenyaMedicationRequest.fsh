Profile: OncologyKenyaMedicationRequest
Parent: MedicationRequest
Id: oncology-kenya-medicationrequest
Title: "Oncology Medication Request Kenya"
Description: """
A profile for prescribing cancer-related medications in Kenya. Aligned with the Kenya National Cancer Control Strategy (2023–2027), Cancer Policy (2020–2030), and reporting needs of KEMRI and county cancer registries. Supports chemotherapy, palliative care, and anti-cancer drugs with ICD-10 and Kenya EMR terminology support.
"""

// Mandatory Core Elements
* status 1..1 MS
* intent 1..1 MS
* subject 1..1 MS
* medication[x] 1..1 MS
* authoredOn 1..1 MS
* requester 1..1 MS
* dosageInstruction 0..* MS
* reasonCode 0..* MS
* note 0..* MS
* category 0..* MS

// Bindings
* medication[x] only CodeableConcept
* medicationCodeableConcept from http://id.who.int/icd10 (extensible)
* reasonCode from http://id.who.int/icd10 (extensible)
* category from https://www.kemri.go.ke/fhir/ValueSet/oncology-medication-category (example)

// Custom Kenyan Extensions
* extension contains
    MedicationRequestPrescribedCounty named county 0..1 and
    MedicationRequestRegistryFlag named reportToRegistry 0..1

Extension: MedicationRequestPrescribedCounty
Id: medicationrequest-prescribed-county
Title: "County Where Medication Was Prescribed"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: MedicationRequestRegistryFlag
Id: medicationrequest-registry-flag
Title: "Flag for Reporting Medication Request to National Registry"
* value[x] only boolean

// Example instance
Instance: example-oncology-medicationrequest
InstanceOf: OncologyKenyaMedicationRequest
Title: "Example Oncology Medication Request"
Description: "Chemotherapy prescription for a 45-year-old breast cancer patient in Nyandarua"
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* medicationCodeableConcept = http://id.who.int/icd10#Z51.1 "Chemotherapy session for neoplasm"
* authoredOn = "2025-03-01"
* requester = Reference(Practitioner/example-oncologist)
* dosageInstruction[0].text = "Administer 500mg/m2 intravenously every 21 days for 6 cycles"
* reasonCode[0] = http://id.who.int/icd10#C50.2 "Malignant neoplasm of upper-inner quadrant of breast"
* category[0] = https://www.kemri.go.ke/fhir/CodeSystem/oncology-medication-category#chemotherapy
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Nyandarua
* extension[reportToRegistry].valueBoolean = true
