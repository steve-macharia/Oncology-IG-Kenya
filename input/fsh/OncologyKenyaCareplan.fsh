Profile: OncologyKenyaCarePlan
Parent: CarePlan
Id: oncology-kenya-careplan
Title: "Oncology Care Plan Kenya"
Description: """
A structured CarePlan profile for oncology management in Kenya. Aligns with the Kenya National Cancer Control Strategy (2023–2027), Cancer Policy (2020–2030), KEMRI and County Cancer Registries. Supports multidisciplinary cancer care coordination, treatment protocols, and reporting using ICD-10 exclusively.
"""

// Mandatory core elements
* status 1..1 MS
* intent 1..1 MS
* subject 1..1 MS
* period 1..1 MS
* title MS
* description MS
* careTeam 0..* MS
* addresses 0..* MS
* goal 0..* MS
* activity 0..* MS
* activity.detail MS
* activity.detail.code 1..1 MS
* activity.detail.status 1..1 MS
* activity.detail.scheduled[x] only Period or Timing
* supportingInfo 0..* MS
* category 0..* MS

// ICD-10 Terminology bindings
* activity.detail.code from http://id.who.int/icd10 (required)
* category from http://id.who.int/icd10 (extensible)

// Kenyan-specific extensions
* extension contains
    CarePlanContextCounty named county 0..1 and
    CarePlanReferralSource named referralSource 0..1 and
    CarePlanRegistryFlag named reportToRegistry 0..1

// Custom Extensions
Extension: CarePlanContextCounty
Id: careplan-context-county
Title: "County Where Care Plan is Managed"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: CarePlanReferralSource
Id: careplan-referral-source
Title: "Referral Source for Oncology Care Plan"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.sha.go.ke/fhir/ValueSet/kenya-referral-sources (extensible)

Extension: CarePlanRegistryFlag
Id: careplan-registry-flag
Title: "Flag for National Cancer Registry Reporting"
* value[x] only boolean

// Example Condition referenced in addresses
Instance: breast-cancer-condition
InstanceOf: Condition
Title: "Breast Cancer Condition"
Description: "Confirmed malignant neoplasm of upper-inner quadrant of breast"
* code = http://id.who.int/icd10#C50.2 "Malignant neoplasm of upper-inner quadrant of breast"
* subject = Reference(Patient/example)
* clinicalStatus = #active
* verificationStatus = #confirmed

// Example Goal referenced in goal[0]
Instance: tumor-reduction-goal
InstanceOf: Goal
Title: "Tumor Reduction Goal"
Description: "Reduce tumor size prior to surgery"
* lifecycleStatus = #active
* subject = Reference(Patient/example)
* description.text = "Reduce tumor size before surgery"
* target[0].measure.text = "Tumor size"
* target[0].dueDate = "2025-06-01"

// Example CarePlan instance
Instance: example-oncology-careplan
InstanceOf: OncologyKenyaCarePlan
Title: "Breast Cancer Treatment Plan - Uasin Gishu"
Description: "Multimodal care plan for a 45-year-old female with Stage II breast cancer"
* status = #active
* intent = #plan
* subject = Reference(Patient/example)
* period.start = "2025-03-01"
* period.end = "2026-03-01"
* title = "Breast Cancer Treatment Plan"
* description = "Includes chemotherapy, surgery, and radiotherapy"
* careTeam[0] = Reference(CareTeam/breast-cancer-multidisciplinary-team)
* goal[0] = Reference(Goal/tumor-reduction-goal)
* activity[0].detail.code = http://id.who.int/icd10#Z51.1 "Chemotherapy session for neoplasm"
* activity[0].detail.status = #scheduled
* activity[0].detail.scheduledPeriod.start = "2025-03-15"
* activity[0].detail.scheduledPeriod.end = "2025-06-15"
* addresses[0] = Reference(Condition/breast-cancer-condition)
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#UasinGishu
* extension[referralSource].valueCodeableConcept = https://www.sha.go.ke/fhir/CodeSystem/referral-source#dispensary
* extension[reportToRegistry].valueBoolean = true
