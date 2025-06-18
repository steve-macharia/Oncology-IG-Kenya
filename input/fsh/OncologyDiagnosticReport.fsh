Profile: OncologyDiagnosticReportKenya
Parent: DiagnosticReport
Id: oncology-diagnostic-report-kenya
Title: "Oncology Diagnostic Report Kenya"
Description: """
FHIR R4-based profile for diagnostic reports in oncology within the Kenyan healthcare context.
Supports pathology, radiology, laboratory, and imaging reports aligned with:
- Kenya National Cancer Control Strategy (2023–2027)
- Kenya Cancer Policy (2020–2030)
- KEMRI cancer registries
- UHC and SHA reporting
- National staging and reporting standards
- County-based registry efforts (e.g., Nyandarua)
"""

// Required core elements for cancer diagnostic reporting
* status 1..1 MS
* category 1..* MS
* code 1..1 MS
* subject 1..1 MS
* effective[x] 1..1 MS
* issued 0..1
* performer 0..* MS
* resultsInterpreter 0..* MS
* result 1..* MS
* conclusion 0..1
* presentedForm 0..* MS

// Kenyan-specific cancer extensions
* extension contains
    ReportCancerStage named cancerStage 0..1 and
    ReportSpecimenOriginCounty named countyOfSpecimen 0..1 and
    ReportRegistryFlag named reportToCancerRegistry 0..1

// Bindings
* code from https://www.kenyacode.com/fhir/ValueSet/oncology-diagnostic-types (extensible)
* category from http://terminology.hl7.org/CodeSystem/v2-0074 (example)
* result only Reference(Observation)

// Define Extensions
Extension: ReportCancerStage
Id: report-cancer-stage
Title: "Cancer Stage Summary (e.g., TNM or Ann Arbor)"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-cancer-staging (preferred)

Extension: ReportSpecimenOriginCounty
Id: report-specimen-origin-county
Title: "County Where Specimen Was Collected"
* value[x] only CodeableConcept
* valueCodeableConcept from https://www.kenyacode.com/fhir/ValueSet/kenya-county-codes (required)

Extension: ReportRegistryFlag
Id: report-registry-flag
Title: "Send Report to National Cancer Registry"
* value[x] only boolean

// Example
Instance: example-oncology-diagnostic-report
InstanceOf: OncologyDiagnosticReportKenya
Title: "Oncology Diagnostic Report - Biopsy for Cervical Cancer"
Description: "Pathology report for cervical biopsy indicating squamous cell carcinoma"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology"
* code = https://www.kenyacode.com/fhir/CodeSystem/oncology-diagnostic-types#cervix-biopsy "Cervical Biopsy Report"
* subject = Reference(Patient/example-kenya)
* effectiveDateTime = "2025-06-10"
* issued = "2025-06-12T10:00:00+03:00"
* performer[0] = Reference(Practitioner/example-pathologist)
* resultsInterpreter[0] = Reference(Practitioner/example-oncologist)
* result[0] = Reference(Observation/example-cervix-observation)
* conclusion = "Invasive squamous cell carcinoma, Stage IIA"
* presentedForm[0].contentType = #application/pdf
* presentedForm[0].url = "https://kemri.go.ke/reports/example-cervix-biopsy.pdf"
* extension[cancerStage].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-cancer-staging#stage-iia "Stage IIA"
* extension[countyOfSpecimen].valueCodeableConcept = https://www.kenyacode.com/fhir/CodeSystem/kenya-county-codes#Nyandarua
* extension[reportToCancerRegistry].valueBoolean = true
