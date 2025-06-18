// ===== SearchParameter: SHA ID =====
Instance: search-sha-id
InstanceOf: SearchParameter
Title: "Search by SHA ID"
Description: "Allows filtering patients by SHA ID"
Usage: #definition

* name = "sha-id"
* code = #sha-id
* base = #Patient
* type = #token
* status = #active
* expression = "Patient.identifier.where(system = 'https://sha.go.ke/ids/patient')"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-sha-id"

// ===== SearchParameter: Facility UPI =====
Instance: search-facility-upi
InstanceOf: SearchParameter
Title: "Search by Facility UPI"
Description: "Allows filtering patients by Facility UPI"
Usage: #definition

* name = "facility-upi"
* code = #facility-upi
* base = #Patient
* type = #token
* status = #active
* expression = "Patient.identifier.where(system = 'http://facility.health.go.ke/upi')"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-facility-upi"

// ===== SearchParameter: County (Address.state) =====
Instance: search-county
InstanceOf: SearchParameter
Title: "Search by County"
Description: "Allows filtering patients by County (address.state)"
Usage: #definition

* name = "county"
* code = #county
* base = #Patient
* type = #string
* status = #active
* expression = "Patient.address.state"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-county"

// ===== SearchParameter: Education Level (Extension) =====
Instance: search-education-level
InstanceOf: SearchParameter
Title: "Search by Education Level"
Description: "Allows filtering patients by Education Level extension"
Usage: #definition

* name = "education-level"
* code = #education-level
* base = #Patient
* type = #token
* status = #active
* expression = "Patient.extension.where(url = 'https://oncology.ig.kenya/StructureDefinition/patient-educationLevel').value"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-education-level"

// ===== SearchParameter: Occupation (Extension) =====
Instance: search-occupation
InstanceOf: SearchParameter
Title: "Search by Occupation"
Description: "Allows filtering patients by Occupation extension"
Usage: #definition

* name = "occupation"
* code = #occupation
* base = #Patient
* type = #token
* status = #active
* expression = "Patient.extension.where(url = 'https://oncology.ig.kenya/StructureDefinition/patient-occupation').value"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-occupation"

// ===== SearchParameter: National ID (Kenya) =====
Instance: search-national-id
InstanceOf: SearchParameter
Title: "Search by National ID"
Description: "Filter patients by Kenyan National ID"
Usage: #definition

* name = "national-id"
* code = #national-id
* base = #Patient
* type = #token
* status = #active
* expression = "Patient.identifier.where(system = 'https://sha.go.ke/ids/national-id')"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-national-id"

// ===== SearchParameter: Date of Birth =====
Instance: search-birthdate
InstanceOf: SearchParameter
Title: "Search by Date of Birth"
Description: "Filter patients by date of birth"
Usage: #definition

* name = "birthdate"
* code = #birthdate
* base = #Patient
* type = #date
* status = #active
* expression = "Patient.birthDate"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-birthdate"

// ===== SearchParameter: Gender =====
Instance: search-gender
InstanceOf: SearchParameter
Title: "Search by Gender"
Description: "Filter patients by biological sex"
Usage: #definition

* name = "gender"
* code = #gender
* base = #Patient
* type = #token
* status = #active
* expression = "Patient.gender"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-gender"

// ===== SearchParameter: Cancer Type =====
Instance: search-cancer-type
InstanceOf: SearchParameter
Title: "Search by Cancer Type"
Description: "Filter patients by cancer diagnosis (Condition.code)"
Usage: #definition

* name = "cancer-type"
* code = #cancer-type
* base = #Condition
* type = #token
* status = #active
* expression = "Condition.code"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-cancer-type"

// ===== SearchParameter: Cancer Stage =====
Instance: search-cancer-stage
InstanceOf: SearchParameter
Title: "Search by Cancer Stage"
Description: "Filter patients by cancer staging captured in an Observation"
Usage: #definition

* name = "cancer-stage"
* code = #cancer-stage
* base = #Observation
* type = #token
* status = #active
* expression = "Observation.code.where(coding.code = 'cancer-stage')"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-cancer-stage"

// ===== SearchParameter: Sub-County =====
Instance: search-sub-county
InstanceOf: SearchParameter
Title: "Search by Sub-County"
Description: "Filter patients by sub-county (address.district)"
Usage: #definition

* name = "sub-county"
* code = #sub-county
* base = #Patient
* type = #string
* status = #active
* expression = "Patient.address.district"
* xpathUsage = #normal
* url = "https://oncology.ig.kenya/SearchParameter/search-sub-county"
