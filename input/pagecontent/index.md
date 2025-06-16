---
title: Oncology-IG-Kenya
---

# Oncology Implementation Guide for Kenya (Oncology-IG-Kenya)

## Transforming Cancer Care Through FHIR-Based Digital Innovation

> "This Implementation Guide is a demonstration of how HL7® FHIR® can be leveraged to enhance the quality, continuity, and coordination of oncology care in Kenya. It is developed independently by a Kenyan health tech enthusiast, with a passion for improving cancer outcomes through open standards and interoperable digital solutions."

---

## 📌 Purpose

Kenya faces a growing cancer crisis. This FHIR Implementation Guide (IG) aims to model a comprehensive, standards-based oncology care pathway, grounded in local realities, to demonstrate how HL7® FHIR® can support cancer prevention, diagnosis, treatment, and survivorship across the continuum of care.

This is *not an official guide from the Ministry of Health or NHIF, but rather a **proof-of-concept* created to stimulate innovation, collaboration, and alignment with national priorities.

---

## 🇰🇪 Kenya’s Cancer Burden: A Snapshot

Kenya’s cancer burden is growing rapidly and disproportionately affects lower-income households. According to [World Bank data (2020)](https://documents1.worldbank.org/curated/en/964571592290457869/pdf/Economic-and-Social-Consequences-of-Cancer-in-Kenya-Case-Studies-of-Selected-Households.pdf):

- 📈 *47,887* new cancer cases and *32,987* deaths were recorded in 2018, making cancer the *third leading cause of mortality* in Kenya.
- 🏥 *80%* of patients are diagnosed at *advanced stages* (Stage III or IV), severely limiting treatment effectiveness.
- 💸 Over *30%* of households affected by cancer fall below the poverty line due to catastrophic treatment costs, even with NHIF coverage.
- 🧪 Fewer than *30%* of public health facilities offer cancer screening, and only *7* facilities offer radiotherapy.
- 👨‍⚕️ There are only *36 oncologists* in Kenya for a population of 50+ million (Cancer Policy, 2020).
- 🚑 Patients often travel *over 100 km* to reach diagnostic and treatment services.

These statistics highlight the urgent need for *digitally-enabled care coordination*, efficient referral tracking, and standardized clinical documentation – all achievable using HL7® FHIR®.

---

## 🧠 About This Implementation Guide

This Implementation Guide presents a FHIR-based model of the full *oncology care pathway*, including:

| Care Stage                     | FHIR Coverage                                          |
|-------------------------------|--------------------------------------------------------|
| *Screening & Early Detection* | Patient, Observation, ServiceRequest, Encounter |
| *Diagnosis (Imaging, Lab)*     | Condition, Specimen, Procedure, DiagnosticReport, Observation |
| *Treatment Planning*          | CarePlan, Consent, Encounter, PractitionerRole |
| *Chemotherapy & Radiotherapy* | MedicationRequest, MedicationAdministration, Procedure |
| *Monitoring & Side Effects*   | Observation, QuestionnaireResponse, CarePlan |
| *Survivorship & Follow-Up*    | Encounter, CarePlan, DocumentReference |
| *Palliative Care*             | MedicationRequest, Observation, RelatedPerson |
| *Financial Coverage*          | Claim, ExplanationOfBenefit, Coverage |
| *Referral & Logistics*        | Task, Communication, Location, Organization |

Each profile is aligned with *Kenyan cancer workflows*, national policy recommendations, and infrastructural constraints. Profiles support essential tasks like:

- Tracking cancer stage, histopathology results, tumor markers (e.g., PSA, CA-125)
- Recording treatment intent, chemotherapy regimens, and adverse effects
- Capturing patient follow-up schedules, financial distress, and care gaps

---

## 📚 Policy and Evidence Base

This IG is based on real data, research, and policies, including:

- 🔹 **[Kenya National Cancer Policy 2020–2030](https://arua-ncd.org/wp-content/uploads/2022/10/Kenya-Cancer-Policy-2020.pdf)**  
  Recommends decentralized diagnosis and treatment, digital registries, and improved data flow.

- 🔹 **[World Bank: Economic & Social Consequences of Cancer in Kenya (2020)](https://documents1.worldbank.org/curated/en/964571592290457869/pdf/Economic-and-Social-Consequences-of-Cancer-in-Kenya-Case-Studies-of-Selected-Households.pdf)**  
  Reveals the dire economic toll cancer takes on families, and the fragmentation in financial coverage.

- 🔹 **[Countdown 2030: Inequities in Cancer Services (2023)](https://www.countdown2030.org/wp-content/uploads/2023/02/Cancer-services.pdf)**  
  Assesses readiness across counties and calls for investment in diagnostics and digital tracking.

- 🔹 **[Kenyatta National Hospital Cancer Delivery Study (UoN)](https://erepository.uonbi.ac.ke/bitstream/handle/11295/99920/Mainnah_Factors%20Influencing%20Provision%20Of%20Cancer%20Treatment%20In%20Public%20Health%20Facilities%20In%20Kenya%20The%20Case%20Of%20Kenyatta%20National%20Teaching%20And%20Referral%20Hospital%20In%20Nairobi.pdf?sequence=1&isAllowed=y)**  
  Documents operational bottlenecks in medication supply, side effect care, and diagnostic access.

- 🔹 **[AKU Research: Side Effects Experience by Cancer Patients (2020)](https://ecommons.aku.edu/cgi/viewcontent.cgi?article=1284&context=eastafrica_fhs_sonam)**  
  Highlights the lived experience of toxicity and mental stress from chemotherapy.

---

## 🤝 Call for Collaboration

This project is open for partnership, testing, and learning.

If you're a:

- *Healthtech innovator* working on oncology systems
- *MoH official* seeking data standards for cancer registries
- *Researcher or academic* exploring cancer informatics
- *Oncology provider* looking to improve documentation
- *NGO, donor, or digital health startup* focused on NCDs

Then this FHIR IG is your sandbox. It is open-source, adaptable, and ready to evolve.

*Let’s work together to build an open, interoperable future for cancer care in Kenya.*

---

## 📬 Contact

- *Email:* medbyTech254@gmail.com  
- *GitHub Repository:* [github.com/steve-macharia/Oncology-IG-Kenya](https://github.com/steve-macharia/Oncology-IG-Kenya)

---

This Implementation Guide is a personal initiative by a Kenyan digital health enthusiast. It reflects no official endorsement but aligns with national priorities to show what is possible when global standards meet local innovation.# oncology-fhir-ig-kenya

Feel free to modify this index page with your own awesome content!
