// Define Coverage Profile
Profile: OncologyKenyaCoverage
Parent: Coverage
Id: oncology-kenya-coverage
Title: "Oncology Kenya Coverage"
Description: "Defines insurance and reimbursement details under SHA in Kenya, ensuring financial tracking and integration with NCCP Data Systems."

// Coverage Type (e.g., Public, Private, NGO-supported)
* type from http://terminology.health.go.ke/ValueSet/coverage-type-kenya (required)

// Financial Period
* period.start 1..1 MS
* period.end 0..1 MS

// Policy and Beneficiary Details
* policyHolder 1..1 MS
* subscriber 0..1 MS
* subscriberId 0..1 MS
* beneficiary 1..1 MS
* relationship 1..1 MS

// Cost and Payment Details
* payor 1..* MS
* class.type 1..1 MS
* class.value 1..1 MS
* costToBeneficiary 0..* MS