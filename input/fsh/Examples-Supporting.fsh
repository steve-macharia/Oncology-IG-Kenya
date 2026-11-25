// Supporting example resources, referenced by the other examples in this guide.
// Everything here is invented. No real person, address or phone number.

Instance: example
InstanceOf: Patient
Usage: #example
Title: "Example Patient (synthetic)"
Description: "Invented patient used as the subject of examples in this guide. Not a real person."
* active = true
* name.family = "Example"
* name.given = "Test"
* gender = #female
* birthDate = "1980-01-01"

Instance: example-cancer-patient-nyandarua
InstanceOf: Patient
Usage: #example
Title: "Example Cancer Patient, Nyandarua (synthetic)"
Description: "Invented patient. Not a real person."
* active = true
* name.family = "Example"
* name.given = "Nyandarua"
* gender = #male
* birthDate = "1965-06-15"
* address.state = "Nyandarua"

Instance: kemsa
InstanceOf: Organization
Usage: #example
Title: "KEMSA (example)"
* active = true
* name = "Kenya Medical Supplies Authority (example)"

Instance: uon-oncology-center
InstanceOf: Organization
Usage: #example
Title: "UoN oncology centre (example)"
* active = true
* name = "University of Nairobi oncology centre (example)"

Instance: sha-kenya
InstanceOf: Organization
Usage: #example
Title: "SHA (example)"
* active = true
* name = "Social Health Authority (example)"

Instance: nyandarua-county-health
InstanceOf: Organization
Usage: #example
Title: "Nyandarua County Health (example)"
* active = true
* name = "Nyandarua County Health Department (example)"

Instance: nyandarua-cancer-center
InstanceOf: Organization
Usage: #example
Title: "Nyandarua cancer centre (example)"
* active = true
* name = "Nyandarua cancer centre (example)"

Instance: kiambu-imaging-center
InstanceOf: Organization
Usage: #example
Title: "Kiambu imaging centre (example)"
* active = true
* name = "Kiambu imaging centre (example)"

Instance: ministry-of-health
InstanceOf: Organization
Usage: #example
Title: "Ministry of Health (example)"
* active = true
* name = "Ministry of Health (example)"

Instance: nyandarua-oncology-clinic
InstanceOf: Location
Usage: #example
Title: "Nyandarua oncology clinic (example)"
* status = #active
* name = "Nyandarua oncology clinic (example)"
* managingOrganization = Reference(Organization/nyandarua-cancer-center)

Instance: nairobi-oncology-ward
InstanceOf: Location
Usage: #example
Title: "Nairobi oncology ward (example)"
* status = #active
* name = "Nairobi oncology ward (example)"

Instance: moi-hospital
InstanceOf: Location
Usage: #example
Title: "Moi hospital (example)"
* status = #active
* name = "Moi hospital (example)"

Instance: example-oncologist
InstanceOf: Practitioner
Usage: #example
Title: "Example Oncologist (synthetic)"
* active = true
* name.prefix = "Dr."
* name.given = "Example"
* name.family = "Oncologist"

Instance: oncologist-kiambu
InstanceOf: Practitioner
Usage: #example
Title: "Example Oncologist, Kiambu (synthetic)"
* active = true
* name.prefix = "Dr."
* name.given = "Kiambu"
* name.family = "Oncologist"

Instance: example-pathologist
InstanceOf: Practitioner
Usage: #example
Title: "Example Pathologist (synthetic)"
* active = true
* name.prefix = "Dr."
* name.given = "Example"
* name.family = "Pathologist"

Instance: example-oncology-specialist-nyandarua
InstanceOf: PractitionerRole
Usage: #example
Title: "Oncology specialist, Nyandarua (example)"
* active = true
* practitioner = Reference(Practitioner/example-oncologist)
* organization = Reference(Organization/nyandarua-cancer-center)
* code.text = "Oncology specialist"

Instance: example-oncology-nurse-knh
InstanceOf: PractitionerRole
Usage: #example
Title: "Oncology nurse (example)"
* active = true
* code.text = "Oncology nurse"

Instance: cancer-treatment
InstanceOf: HealthcareService
Usage: #example
Title: "Cancer treatment service (example)"
* active = true
* name = "Cancer treatment (example)"

Instance: example-sha-oncology-cover
InstanceOf: Coverage
Usage: #example
Title: "SHA oncology cover (example)"
* status = #active
* beneficiary = Reference(Patient/example)
* payor = Reference(Organization/sha-kenya)

Instance: example-colon-cancer
InstanceOf: Condition
Usage: #example
Title: "Colon cancer (example)"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = http://hl7.org/fhir/sid/icd-10#C18 "Malignant neoplasm of colon"
* subject = Reference(Patient/example)

Instance: breast-cancer-multidisciplinary-team
InstanceOf: CareTeam
Usage: #example
Title: "Breast cancer multidisciplinary team (example)"
* status = #active
* name = "Breast cancer multidisciplinary team (example)"
* subject = Reference(Patient/example)
* participant.member = Reference(Practitioner/example-oncologist)

Instance: example-cervix-observation
InstanceOf: Observation
Usage: #example
Title: "Cervical screening result (example)"
* status = #final
* code.text = "Cervical screening result (example)"
* subject = Reference(Patient/example)
* valueString = "Example result (synthetic)"

