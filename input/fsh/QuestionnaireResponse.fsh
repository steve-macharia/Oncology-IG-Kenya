Profile: OncologyKenyaQuestionnaireResponse
Parent: QuestionnaireResponse
Id: oncology-kenya-questionnaireresponse
Title: "Oncology Questionnaire Response Kenya"
Description: """
Structured response to oncology-related questionnaires used in Kenyan cancer screening, diagnosis, treatment, palliative care, and national registry reporting workflows. Aligns with Kenya's National Cancer Control Strategy (2023–2027), Cancer Policy (2020–2030), KEMRI data elements, and county registry efforts.
"""

// Mandatory Core Elements
* status 1..1 MS
* questionnaire 1..1 MS
* subject 1..1 MS
* authored 1..1 MS
* item 1..* MS
* item.linkId 1..1 MS
* item.text MS
* item.answer 0..* MS
* item.answer.value[x] 1..1 MS

// Kenyan-Specific Extensions
* extension contains
    QuestionnaireContextCounty named county 0..1 and
    QuestionnaireReferralSource named referralSource 0..1 and
    QuestionnaireRegistryFlag named reportToRegistry 0..1

// Custom Extensions
Extension: QuestionnaireContextCounty
Id: questionnaire-context-county
Title: "County Where Questionnaire Response Occurred"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: QuestionnaireReferralSource
Id: questionnaire-referral-source
Title: "Referral Source for Oncology Questionnaire"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.sha.go.ke/fhir/ValueSet/kenya-referral-sources (extensible)

Extension: QuestionnaireRegistryFlag
Id: questionnaire-registry-flag
Title: "Flag for National Cancer Registry Reporting"
* value[x] only boolean

// Example Instance
Instance: example-oncology-questionnaireresponse
InstanceOf: OncologyKenyaQuestionnaireResponse
Title: "Breast Cancer Screening Questionnaire Response"
Description: "Completed breast cancer screening response from a community health volunteer in Kisumu"
* status = #completed
* questionnaire = "Questionnaire/breast-cancer-screening"
* subject = Reference(Patient/example)
* authored = "2025-04-10T14:30:00+03:00"
* item[0].linkId = "q1"
* item[0].text = "Have you felt a lump in your breast?"
* item[0].answer[0].valueBoolean = true
* item[1].linkId = "q2"
* item[1].text = "Have you experienced nipple discharge?"
* item[1].answer[0].valueBoolean = false
* extension[county].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Kisumu
* extension[referralSource].valueCodeableConcept = https://www.sha.go.ke/fhir/CodeSystem/referral-source#communityHealthWorker
* extension[reportToRegistry].valueBoolean = true
