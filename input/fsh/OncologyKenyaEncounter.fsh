Profile: OncologyKenyaEncounter
Parent: Encounter
Id: oncology-kenya-encounter
Title: "Oncology Encounter Kenya"
Description: """
A profile for documenting oncology-related patient encounters in Kenya, aligned with the Kenya National Cancer Control Strategy (2023–2027), Kenya Cancer Policy (2020–2030), KEMRI registry data needs, and county-level cancer reporting workflows.
Supports tracking of staging visits, diagnosis, treatment initiation, follow-ups, referrals, and palliative care within the Kenyan oncology ecosystem.
"""

// Mandatory Core Elements
* status 1..1 MS
* class 1..1 MS
* subject 1..1 MS
* period 1..1 MS
* type 0..* MS
* reasonCode 0..* MS
* serviceProvider MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* diagnosis.use MS
* participant 0..* MS
* participant.individual MS
* location 0..* MS
* location.location MS

// Terminology Bindings (ICD-10 used for coded elements only)
* reasonCode from http://id.who.int/icd10 (extensible)
* type from http://id.who.int/icd10 (extensible)

// Kenyan-specific Extensions
* extension contains
    EncounterContextCounty named county 0..1 and
    EncounterReferralSource named referralSource 0..1 and
    EncounterRegistryFlag named reportToRegistry 0..1

// Custom Extensions
Extension: EncounterContextCounty
Id: encounter-context-county
Title: "County Where Encounter Took Place"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: EncounterReferralSource
Id: encounter-referral-source
Title: "Referral Source for Oncology Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.sha.go.ke/fhir/ValueSet/kenya-referral-sources (extensible)

Extension: EncounterRegistryFlag
Id: encounter-registry-flag
Title: "Flag for National Cancer Registry Reporting"
* value[x] only boolean

// Example Instance
Instance: example-oncology-encounter
InstanceOf: OncologyKenyaEncounter
Title: "Initial Oncology Assessment - Nyandarua County"
Description: "First oncology clinic visit for staging and treatment planning"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0] = http://id.who.int/icd10#Z01.7 "Encounter for examination for suspected neoplasm"
* subject = Reference(Patient/example)
* period.start = "2025-02-01"
* period.end = "2025-02-01"
* reasonCode[0] = http://id.who.int/icd10#C18.0 "Malignant neoplasm of cecum"
* serviceProvider = Reference(Organization/nyandarua-cancer-center)
* diagnosis[0].condition = Reference(Condition/example-colon-cancer)
* diagnosis[0].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#AD "Admission diagnosis"
* location[0].location = Reference(Location/nyandarua-oncology-clinic)
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Nyandarua
* extension[referralSource].valueCodeableConcept = https://www.sha.go.ke/fhir/CodeSystem/referral-source#healthCentre
* extension[reportToRegistry].valueBoolean = true
