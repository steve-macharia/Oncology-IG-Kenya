---
title: Oncology-IG-Kenya
---

## Oncology Implementation Guide for Kenya (Oncology-IG-Kenya)

### Transforming Cancer Care Through FHIR-Based Digital Innovation

> This Implementation Guide is a demonstration of how HL7® FHIR® can be leveraged to enhance the quality, continuity, and coordination of oncology care in Kenya. It is developed independently by a Kenyan health tech enthusiast, with a passion for improving cancer outcomes through open standards and interoperable digital solutions.

---

### Home

- **Version:** 0.1.0  
- **Status:** Draft as of 2025-06-16  
- **Canonical URL:** `http://example.org/ImplementationGuide/medby`  
- **Computable Name:** `oncologyfhirigkenya`  
- **Build Info:** Local CI using HL7® FHIR® Build Tools

---

### Purpose & Background

Kenya faces a growing cancer crisis. This FHIR Implementation Guide (IG) is designed to model a comprehensive, standards-based oncology care pathway. It reflects the realities of Kenya’s healthcare system while showcasing how HL7® FHIR® can be adapted to support every stage of oncology—from prevention and early detection, through diagnosis and treatment, to survivorship and palliative care.

> **Note:** This guide is a **proof-of-concept** and not an official publication of the Ministry of Health or Social Health Authority (SHA). It is intended to catalyze innovation, inform national discussions, and serve as a resource for implementers aligned with Kenya's digital health goals.

---

### Kenya’s Cancer Burden: A Snapshot

According to [World Bank data (2020)](https://documents1.worldbank.org/curated/en/964571592290457869/pdf/Economic-and-Social-Consequences-of-Cancer-in-Kenya-Case-Studies-of-Selected-Households.pdf), the cancer landscape in Kenya is defined by:

- **47,887** new cancer cases and **32,987** deaths in 2018  
- **80%** of diagnoses occur at advanced stages (Stage III or IV)  
- Over **30%** of households with a cancer patient fall below the poverty line, even with SHA coverage  
- Fewer than **30%** of public health facilities offer cancer screening  
- Only **7** public hospitals provide radiotherapy services  
- Kenya has just **36 oncologists** for a population exceeding 50 million  
- Many patients travel over **100 km** for access to diagnostic or treatment services  

These statistics underscore the urgent need for scalable, interoperable digital health solutions to improve access, equity, and quality of care.

---

### Oncology Care Pathway (FHIR Mapping)

The table below outlines how core stages of oncology care map to HL7® FHIR® resources:

| Care Stage                   | FHIR Coverage |
|-----------------------------|---------------|
| Screening & Early Detection | `Patient`, `Observation`, `ServiceRequest`, `Encounter` |
| Diagnosis (Imaging, Lab)    | `Condition`, `Specimen`, `Procedure`, `DiagnosticReport`, `Observation` |
| Treatment Planning          | `CarePlan`, `Consent`, `Encounter`, `PractitionerRole` |
| Chemotherapy & Radiotherapy | `MedicationRequest`, `MedicationAdministration`, `Procedure` |
| Monitoring & Side Effects   | `Observation`, `QuestionnaireResponse`, `CarePlan` |
| Survivorship & Follow-Up    | `Encounter`, `CarePlan`, `DocumentReference` |
| Palliative Care             | `MedicationRequest`, `Observation`, `RelatedPerson` |
| Financial Coverage          | `Claim`, `ExplanationOfBenefit`, `Coverage` |
| Referral & Logistics        | `Task`, `Communication`, `Location`, `Organization` |

> Each mapped profile is tailored to fit Kenya’s workflows, policy frameworks, and resource constraints, promoting better data capture and care continuity.

---

### Implementation Notes

This IG includes profiles that support key tasks across the oncology spectrum:

- Structured documentation of **cancer staging**, **histopathology**, and **tumor markers**
- Capture and coordination of **chemotherapy regimens**, including administration and side effects
- Tools for tracking **follow-up visits**, **treatment plans**, and **financial distress screening**
- Support for managing **referrals**, **treatment locations**, and **documentation sharing**

These components are designed to promote semantic interoperability, improve data quality for decision-making, and reduce fragmentation of cancer care services.

---

### Contact & Repository

- **Email:** medbyTech254@gmail.com  
- **GitHub:** [![GitHub](https://img.shields.io/badge/github-steve--macharia-blue?logo=github)](https://github.com/steve-macharia)  
- **Website:** [![Website](https://img.shields.io/badge/website-medby--tech.netlify.app-brightgreen?logo=netlify)](https://medby-tech.netlify.app/)

---

This Implementation Guide is a personal initiative by a Kenyan digital health enthusiast. While not officially endorsed, it aligns with national digital health priorities and demonstrates what is possible when global standards are contextualized to meet local needs.
