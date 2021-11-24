### Overview

## Scope

The Longitudinal Maternal & Infant Health Information for Research FHIR R4 implementation guide (IG) is for the US Realm and based on US Core profiles where applicable. The IG will define patient metadata, including social determinants of health and associated clinical data, in support of research questions that explore the root causes for maternal/infant morbidity and mortality. The IG will focus on longitudinal maternal care, which includes antepartum (including pre-pregnancy), intrapartum, and postpartum care of a pregnant woman. The scope of this IG will define how, from which sources (e.g., electronic health records, research protocols), and when researchers will access data and will specify how to capture and link the maternal longitudinal record with the infant record(s).

## Maternal Research Use Cases

This IG will include key data elements in a longitudinal record of a mother and child for two initial research use cases:

*    Pregnancy and subsequent death within a specific time frame:  This use case is focused on women who died within a year (365 days) of a pregnancy regardless of cause of death or pregnancy outcome.
*    Pregnancy-induced hypertension (PIH): This use case focuses on women with a diagnosis of pregnancy-induced hypertension.

Purpose: The intent of this IG is to facilitate the capture of research data for predictive analysis, risk assessment, and retrospective research and to include data capture processes in FHIR resources based on a range of use cases that focus on:
* risks for infants related to maternal exposure to medications taken during pregnancy
* potential adverse maternal obstetric history impacts on infant outcomes
* accessing relevant sensitive health information
* retrospective population-based analysis of inherited disorders

This guide fundamentally relies on the relationship between creating structural relationships between:
* maternal and infant records to effectively diagnose and treat otherwise fatal infant outcomes
* maternal and birth records to maternal and infant death records
* maternal and infant records in multiple disparate systems

The establishment of a FHIR IG for research data that includes pregnancy, pregnancy outcomes, pregnancy-related conditions, co-morbidities, and procedures is essential for analyses of specific maternal and infant health conditions and treatments. This IG, harmonized across a broad set of use cases, will support mapping maternal data across health records from specialty care and linking mother and infant data. This will support researchers in identifying root causes of maternal mortality and pediatric developmental problems, including social determinants of health such as limited income, poor nutrition, lack of medical coverage, etc. The goal of the project is to create a method to standardize data for comparative analysis over time to improve health outcomes.

## Relationship to other Standards

A number of existing standards have been published that specify peri-natal clinical information. This guide specifies how maternal health researchers can quantify clinical information related to this population from clinical information which may exist, or be transmitted between systems, in accordance with any of the below standards:
*     US Core
*     Vital Records Common Profiles Library
*     Vital Records Birth and Fetal Death Reporting
*     Vital Records Mortality and Morbidity Reporting
*     Electronic Initial Case Report (eICR) within Electronic Case Reporting (eCR)
*     Supplemental Pregnancy templates for C-CDA
*     Birth Defects CDA/Draft FHIR CI
*     Birth Reporting DAM (extension of VR DAM).
*     IHE BFDR profiles (https://www.ihe.net/uploadedFiles/Documents/QRPH/IHE_QRPH_Suppl_BFDR-E.pdf)
*     NCHS Utah and Michigan SMART on FHIR app

## Acknowledgements
(Todo: projectteam members)



### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Public Health</td>
<td><a href="http://www.hl7.org/Special/committees/pher" target="_new">http://www.hl7.org/Special/committees/pher</a></td>
</tr>
</tbody>
</table>


