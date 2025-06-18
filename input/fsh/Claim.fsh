Profile: OncologyKenyaClaim
Parent: Claim
Id: oncology-kenya-claim
Title: "Oncology Kenya Claim"
Description: """
A FHIR R4-based Claim profile tailored for cancer-related health financing in Kenya.
Supports SHA (Social Health Authority) reimbursement workflows and aligns with:
- Kenya National Cancer Control Strategy 2023–2027,
- Kenya Cancer Policy 2020–2030,
- KEMRI cancer reporting and financing infrastructure.
"""

// Core required elements for Kenyan oncology claims
* status 1..1 MS
* type 1..1 MS
* use 1..1 MS
* patient 1..1 MS
* created 1..1 MS
* insurer 1..1 MS
* provider 1..1 MS
* priority 1..1
* diagnosis 1..* MS
* item 1..* MS
* insurance 1..* MS

// Example oncology claim for chemotherapy services at Nyandarua
Instance: example-oncology-claim-nyandarua
InstanceOf: OncologyKenyaClaim
Title: "Example Oncology Claim - Nyandarua"
Description: "Claim for chemotherapy session reimbursement submitted to SHA by Nyandarua County Hospital"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional
* use = #claim
* patient = Reference(Patient/example-cancer-patient-nyandarua)
* created = "2025-06-17"
* insurer = Reference(Organization/sha-kenya)
* provider = Reference(PractitionerRole/example-oncology-specialist-nyandarua)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal

// Diagnosis - Breast Cancer
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisCodeableConcept.coding[0].system = "http://hl7.org/fhir/sid/icd-10"
* diagnosis[0].diagnosisCodeableConcept.coding[0].code = #C50
* diagnosis[0].diagnosisCodeableConcept.coding[0].display = "Malignant neoplasm of breast"

// Service Item - Chemotherapy session
* item[0].sequence = 1
* item[0].productOrService.coding[0].system = "http://snomed.info/sct"
* item[0].productOrService.coding[0].code = #108241001
* item[0].productOrService.coding[0].display = "Chemotherapy procedure"
* item[0].unitPrice.value = 5000
* item[0].unitPrice.currency = #KES
* item[0].quantity.value = 6
* item[0].net.value = 30000
* item[0].net.currency = #KES

// Insurance information - SHA
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/example-sha-oncology-cover)
