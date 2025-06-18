Profile: OncologyKenyaLocation
Parent: Location
Id: oncology-kenya-location
Title: "Oncology Kenya Location"
Description: """
FHIR Location profile tailored for cancer care delivery points in Kenya.
Supports capture of facilities relevant to cancer diagnosis, treatment, and palliative care,
aligned with national cancer control strategies and KEMRI cancer registry reporting.
"""

* name 1..1 MS
* status 1..1 MS
* mode = #instance (exactly)
* type 1..1 MS
* address 1..1 MS
* address.city 1..1
* address.district 0..1
* address.country 1..1
* managingOrganization 0..1 MS
* physicalType 0..1
* position 0..1
* telecom 0..1

// Example: County referral cancer center in Nyandarua
Instance: example-nyandarua-cancer-center
InstanceOf: OncologyKenyaLocation
Title: "Nyandarua County Cancer Treatment Centre"
Description: "A representative oncology center supporting diagnosis, treatment and follow-up for Nyandarua County, aligned with the National Cancer Registry."
* name = "Nyandarua County Referral Hospital - Oncology Unit"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* mode = #instance
* address.text = "Nyahururu Road, Ol Kalou, Nyandarua County"
* address.city = "Ol Kalou"
* address.district = "Nyandarua"
* address.country = "KE"
* telecom.system = #phone
* telecom.value = "+254712345678"
* managingOrganization = Reference(Organization/nyandarua-county-health)
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* position.latitude = -0.3408
* position.longitude = 36.3784

// Example: National Cancer Referral Centre
Instance: example-kenyatta-national-hospital-oncology
InstanceOf: OncologyKenyaLocation
Title: "KNH National Cancer Centre"
Description: "Kenyatta National Hospital's Oncology Centre, providing national-level cancer diagnosis and specialized care."
* name = "Kenyatta National Hospital - Cancer Treatment Centre"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* mode = #instance
* address.text = "Hospital Road, Nairobi"
* address.city = "Nairobi"
* address.country = "KE"
* telecom.system = #phone
* telecom.value = "+254720000000"
* managingOrganization = Reference(Organization/ministry-of-health)
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* position.latitude = -1.3008
* position.longitude = 36.8065
