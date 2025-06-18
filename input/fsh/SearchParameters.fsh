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
