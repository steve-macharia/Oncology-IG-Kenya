Profile: OncologyKenyaProcedure
Parent: Procedure
Id: oncology-kenya-procedure
Title: "Oncology Procedure Kenya"
Description: """
Procedure profile tailored for oncology use in Kenya, supporting documentation of diagnostic, surgical, medical, radiotherapy, and palliative interventions. Aligned with Kenya National Cancer Control Strategy (2023–2027), Cancer Policy (2020–2030), KEMRI registry practices, and county-level reporting, using ICD-10 as the sole terminology for reporting procedures and conditions.
"""

// Core metadata and constraints
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* performed[x] 1..1 MS
* performed[x] only dateTime or Period
* reasonCode 0..* MS
* outcome MS
* bodySite 0..* MS
* category MS
* note 0..* MS
* performer 0..* MS
* performer.actor MS
* location MS
* complication 0..* MS
* usedReference 0..* MS

// ICD-10 terminology bindings
* code from http://id.who.int/icd10 (required)
* reasonCode from http://id.who.int/icd10 (extensible)
* complication from http://id.who.int/icd10 (extensible)
* outcome from http://id.who.int/icd10 (preferred)
* category from http://id.who.int/icd10 (extensible)

// Local extensions for Kenyan setting
* extension contains
    ProcedureContextCounty named county 0..1 and
    ProcedureCancerStage named cancerStage 0..1 and
    ProcedureReferralSource named referralSource 0..1 and
    ProcedureRegistryReportFlag named reportToRegistry 0..1

// Custom Extensions
Extension: ProcedureContextCounty
Id: procedure-context-county
Title: "County Where Procedure Was Performed"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: ProcedureCancerStage
Id: procedure-cancer-stage
Title: "Cancer Stage at Time of Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from http://id.who.int/icd10 (extensible)

Extension: ProcedureReferralSource
Id: procedure-referral-source
Title: "Referral Source for Procedure"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.sha.go.ke/fhir/ValueSet/kenya-referral-sources (extensible)

Extension: ProcedureRegistryReportFlag
Id: procedure-registry-report-flag
Title: "Flag for National Registry Reporting"
* value[x] only boolean

// Example (ICD-10 based)
Instance: example-surgical-biopsy
InstanceOf: OncologyKenyaProcedure
Title: "Surgical Biopsy at Moi Teaching and Referral Hospital"
Description: "Surgical biopsy performed for suspected breast cancer"
* status = #completed
* code = http://id.who.int/icd10#85.12 "Open biopsy of breast"
* subject = Reference(Patient/example)
* performedDateTime = "2025-03-15T08:30:00+03:00"
* outcome = http://id.who.int/icd10#Z09.0 "Follow-up examination after surgery for malignant neoplasm"
* bodySite.text = "Right breast"
* location = Reference(Location/moi-hospital)
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#UasinGishu
* extension[cancerStage].valueCodeableConcept = http://id.who.int/icd10#C50.9 "Breast cancer, unspecified"
* extension[referralSource].valueCodeableConcept = https://www.sha.go.ke/fhir/CodeSystem/referral-source#subcounty-hospital
* extension[reportToRegistry].valueBoolean = true
