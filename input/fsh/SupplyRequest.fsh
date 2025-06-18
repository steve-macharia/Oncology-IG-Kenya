Profile: OncologyKenyaSupplyRequest
Parent: SupplyRequest
Id: oncology-kenya-supplyrequest
Title: "Oncology Kenya Supply Request"
Description: """
A FHIR R4-based SupplyRequest profile for cancer-specific medical supplies in Kenya.
Supports drug procurement, diagnostic supply needs, and inventory tracking aligned with
Kenya’s National Cancer Control Strategy (2023–2027), Kenya Cancer Policy (2020–2030), 
and practical needs of facilities reporting to the KEMRI registry and SHA ecosystem.
"""

// Core elements for oncology supply management
* status 1..1 MS
* item[x] 1..1 MS
* quantity 1..1 MS
* authoredOn 0..1 MS
* requester 0..1 MS
* supplier 0..1 MS
* reasonCode 0..1
* deliverFrom 0..1
* deliverTo 0..1

// ---------------------------------------------
// ✅ Example 1: Request for chemotherapy drug
// ---------------------------------------------
Instance: example-chemotherapy-supply-request
InstanceOf: OncologyKenyaSupplyRequest
Title: "Example Chemotherapy Drug Supply Request"
Description: "Request for 30 vials of Paclitaxel for breast cancer treatment at Nyandarua County Hospital"
* status = #active
* itemCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* itemCodeableConcept.coding[0].code = #L01CD01
* itemCodeableConcept.coding[0].display = "Paclitaxel"
* quantity.value = 30
* quantity.unit = "vial"
* authoredOn = "2025-06-15"
* requester = Reference(PractitionerRole/example-oncology-specialist-nyandarua)
* supplier = Reference(Organization/kemsa)
* reasonCode.coding[0].system = "http://snomed.info/sct"
* reasonCode.coding[0].code = #367336001
* reasonCode.coding[0].display = "Chemotherapy"
* deliverTo = Reference(Location/example-nyandarua-cancer-center)

// ---------------------------------------------
// ✅ Example 2: Request for biopsy needles
// ---------------------------------------------
Instance: example-biopsy-needle-supply-request
InstanceOf: OncologyKenyaSupplyRequest
Title: "Example Biopsy Needle Supply Request"
Description: "Urgent request for 15 biopsy needles for diagnostic services at KNH Oncology Centre"
* status = #active
* itemCodeableConcept.coding[0].system = "http://snomed.info/sct"
* itemCodeableConcept.coding[0].code = #3457005
* itemCodeableConcept.coding[0].display = "Biopsy needle"
* quantity.value = 15
* quantity.unit = "unit"
* authoredOn = "2025-06-10"
* requester = Reference(PractitionerRole/example-oncology-nurse-knh)
* supplier = Reference(Organization/kemsa)
* reasonCode.coding[0].system = "http://snomed.info/sct"
* reasonCode.coding[0].code = #183807002
* reasonCode.coding[0].display = "Diagnostic procedure"
* deliverTo = Reference(Location/example-kenyatta-national-hospital-oncology)
