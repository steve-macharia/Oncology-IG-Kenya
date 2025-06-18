Profile: OncologyKenyaPatient
Parent: Patient
Id: oncology-kenya-patient
Title: "Oncology Kenya Patient"
Description: "Customized patient profile for oncology care in Kenya, aligned with SHA, DHIS2, and national cancer registries. Ensures compliance with Kenyan Ministry of Health registration standards."

* obeys pat-1 and pat-2 and pat-3 and pat-4

// ===== Mandatory Patient Identifiers =====
* identifier 2..* MS // National ID and SHA ID are mandatory
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "At least National ID and SHA ID must be provided"

* identifier contains
    nationalID 1..1 MS and
    shaID 1..1 MS and
    facilityUPI 0..1

* identifier[nationalID].system = "http://gov.ke/national-id" (exactly)
* identifier[nationalID].value 1..1 MS

* identifier[shaID].system = "https://sha.go.ke/ids/patient" (exactly)
* identifier[shaID].value 1..1 MS

* identifier[facilityUPI].system = "http://facility.health.go.ke/upi" (exactly)

// ===== Core Patient Demographics =====
* active 1..1 MS
* name 1..1 MS
  * family 1..1 MS
  * given 1..* MS
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* birthDate 1..1 MS
* deceased[x] 0..1

// ===== Contact & Communication =====
* telecom 1..* MS
* telecom.system 1..1
* telecom.value 1..1

* address 1..1 MS
  * line 1..1 MS // Village or estate
  * district 1..1 MS // Sub-county
  * state 1..1 MS // County
  * country = "KE" (exactly)

* maritalStatus 0..1
* maritalStatus from http://terminology.health.go.ke/ValueSet/marital-status-kenya (extensible)

* contact 1..1 MS
  * relationship 1..* MS
  * relationship from http://hl7.org/fhir/ValueSet/patient-contact-relationship (extensible)
  * name 1..1 MS
  * telecom 1..1 MS
  * address 0..1
  * gender 0..1
  * gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
  * organization 0..1

// ===== Kenya-Specific Extensions =====
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality named nationality 0..1 and
    https://oncology.ig.kenya/StructureDefinition/patient-educationLevel named educationLevel 0..1 and
    https://oncology.ig.kenya/StructureDefinition/patient-occupation named occupation 0..1

// ===== Oncology-Specific Data =====
* multipleBirthBoolean 0..1
* multipleBirthInteger 0..1
* photo 0..* MS

// ===== Care Team & Management =====
* generalPractitioner 1..* MS
* managingOrganization 1..1 MS

// ===== Patient Linking =====
* link 0..* MS
  * other 1..1 MS
  * type 1..1
  * type from http://hl7.org/fhir/ValueSet/link-type (required)

// ===== Search Parameters (Defined Separately) =====
// These must be added as separate SearchParameter instances in .fsh
// - SearchParameter: sha-id (identifier[shaID])
// - SearchParameter: facility-upi (identifier[facilityUPI])
// - SearchParameter: county (address.state)
// - SearchParameter: education-level (extension:educationLevel)
// - SearchParameter: occupation (extension:occupation)

// ===== Invariants =====

Invariant: pat-1
Description: "Must have at least one given name and one family name"
Severity: #error
Expression: "name.given.exists() and name.family.exists()"

Invariant: pat-2
Description: "telecom must include both system and value"
Severity: #error
Expression: "telecom.system.exists() and telecom.value.exists()"

Invariant: pat-3
Description: "If contact is present, it must have relationship and name"
Severity: #error
Expression: "contact.relationship.exists() and contact.name.exists()"

Invariant: pat-4
Description: "address must have line, district, and state"
Severity: #error
Expression: "address.line.exists() and address.district.exists() and address.state.exists()"
