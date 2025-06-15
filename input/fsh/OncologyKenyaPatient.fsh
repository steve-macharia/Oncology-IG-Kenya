Profile: OncologyKenyaPatient
Parent: Patient
Id: oncology-kenya-patient
Title: "Oncology Kenya Patient"
Description: "Customized patient profile for oncology care in Kenya, integrating with SHA, DHIS2, and national cancer registries."

// ===== Mandatory Patient Identifiers =====
* identifier 1..* MS // Every oncology patient must have at least one unique identifier
* identifier.system 1..1 MS
* identifier.value 1..1 MS

// ===== Core Patient Demographics =====
* active 1..1 MS // Indicates if the patient record is active
* name 1..* MS 
  * family 1..1 MS 
  * given 1..* MS
* gender 1..1
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required) // Must be provided
* birthDate 1..1 MS // Critical for oncology patients
* deceased[x] 0..1 // Included for mortality tracking

// ===== Contact & Communication =====
* telecom 1..* MS // At least one contact method required
* address 1..* MS // Address needed for follow-ups
* maritalStatus 0..1
* maritalStatus from http://terminology.health.go.ke/ValueSet/marital-status-kenya (extensible)
* contact 0..* MS
  * relationship 1..*
  * relationship from http://hl7.org/fhir/ValueSet/patient-contact-relationship (extensible) // Emergency contact required
  * name 1..1 MS
  * telecom 1..* MS
  * address 0..1 MS
  * gender 0..1
  * gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
  * organization 0..1 MS

// ===== Oncology-Specific Data =====
* multipleBirthBoolean 0..1
* multipleBirthInteger 0..1
* photo 0..* MS

// ===== Care Team & Management =====
* generalPractitioner 1..* MS // Oncology patients must have a designated primary provider
* managingOrganization 1..1 MS // Specifies the responsible organization

// ===== Patient Linking =====
* link 0..* MS
  * other 1..1 MS
  * type 1..1
  * type from http://hl7.org/fhir/ValueSet/link-type (required)
