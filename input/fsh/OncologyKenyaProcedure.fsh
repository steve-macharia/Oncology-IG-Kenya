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
* code from https://steve-macharia.github.io/Oncology-IG-Kenya/ValueSet/oncology-service-codes-vs (extensible)
* reasonCode from https://steve-macharia.github.io/Oncology-IG-Kenya/ValueSet/cancer-icd10 (extensible)
* complication from https://steve-macharia.github.io/Oncology-IG-Kenya/ValueSet/cancer-icd10 (extensible)
* outcome from https://steve-macharia.github.io/Oncology-IG-Kenya/ValueSet/cancer-icd10 (preferred)

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
* valueCodeableConcept from https://steve-macharia.github.io/Oncology-IG-Kenya/ValueSet/cancer-stage (extensible)

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
* code = https://steve-macharia.github.io/Oncology-IG-Kenya/CodeSystem/oncology-service-codes#open-breast-biopsy "Open biopsy of breast"
* subject = Reference(Patient/example)
* performedDateTime = "2025-03-15T08:30:00+03:00"
* outcome = http://hl7.org/fhir/sid/icd-10#Z08.0
* outcome.text = "Follow-up examination after surgery for malignant neoplasm"
* bodySite.text = "Right breast"
* location = Reference(Location/moi-hospital)
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#UasinGishu
* extension[cancerStage].valueCodeableConcept = https://steve-macharia.github.io/Oncology-IG-Kenya/CodeSystem/cancer-stage-codes#II "Stage II"
* extension[referralSource].valueCodeableConcept = https://www.sha.go.ke/fhir/CodeSystem/referral-source#subcounty-hospital
* extension[reportToRegistry].valueBoolean = true
