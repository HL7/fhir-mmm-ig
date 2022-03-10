### Overview & Scope
The Longitudinal Maternal & Child Health Information for Research FHIR R4 implementation guide (IG) defines a framework to enable maternal health researchers to aggregate, calculate, and analyze clinical information of research populations to explore the root causes for maternal and child morbidity and mortality. It uses Clinical Quality Language (CQL) expressions to assist researchers in capturing clinical data based on population study cohort criteria. This IG focuses on information relevant to longitudinal maternal care, which includes antepartum (including pre-pregnancy), intrapartum, and postpartum care of a pregnant woman. It includes how to link maternal longitudinal record with associated child/children records. 

This US Realm IG supports the use of US Core profiles where possible, as well as base FHIR and Vital Records Common Profiles FHIR IG data model for the structural linkage of mother and child clinical records. 


### Background
The rates of maternal mortality have been rising in the United States since 1987. Clinical data relevant to understanding this trend are not standardized, and data exchange is not interoperable across many relevant settings. Maternal health and associated child health are inextricably linked – what happens during gestation, delivery, and after informs health outcomes of both mother and child – but relevant data is often held in separate, unconnected records. These issues impede research on maternal morbidity and longitudinal maternal care and associated impacts to infant health. Research on root causes of maternal mortality, pediatric developmental problems, and effective treatments requires exchange of information stored in disparate sources, such as electronic health record (EHR) systems, registries, and public health agencies (PHAs).

The types of information needed to research maternal health and morbidity include social determinants of health (SDOH) and associated clinical data such as antepartum, intrapartum, and postpartum care of a pregnant woman; pregnancy-related conditions and outcomes; maternal co-morbidities; child health data; and procedures. The goal of this FHIR IG is to define a model to support data exchange for predictive analysis, risk assessment, and retrospective maternal health research across the spectrum and duration of care. 

Future users may include health departments using EHR data to inform public health interventions (e.g., case identification for reportable conditions, identifying persons lost to care, etc.) and maternal and child health researchers. The standards development effort will also examine options for data exchange mechanisms, including point-in-time query (data pull) and research population creation, i.e., patient enrollment in a study.

### Maternal Research Use Cases

This IG will eventually support mapping maternal data across health records from specialty care and linking mother and child data harmonized across a broad set of use cases. This will support researchers in identifying root causes of maternal mortality and pediatric developmental problems, including SDOH such as limited income, poor nutrition, lack of medical coverage, etc. The goal of the project is to create a method to standardize data capture for comparative analysis over time to improve health outcomes and define a framework for studying additional research populations in the future.

Initial use cases of this IG focus on pregnancy and subsequent death within a specific timeframe and hypertensive disorders of pregnancy pre, ante, and postpartum. The intent is to specify the consistent capture of clinical data of interest to maternal health researchers and outline implementing FHIR resources for that capture. Currently, the IG defines two initial research use case populations: 

*	Pregnancy and subsequent death within a specific time frame: This cohort includes women who died within a year (365 days) of a pregnancy regardless of cause of death or pregnancy outcome.
*	Hypertensive Disorders of pregnancy: This use case focuses on women with a diagnosis of hypertensive disorders of pregnancy.

In both instances, the IG will establish linkages via the US Core Related Person profile to collect associated child health data that may inform maternal health research outcomes. 

In the future, the IG will expand this framework to a range of use cases including:
*	Risks for children related to maternal exposure to medications taken during pregnancy
*	Potential adverse maternal obstetric history impacts on child outcomes
*	Access to relevant sensitive health information
*	Retrospective population-based analysis of inherited disorders

This guide fundamentally relies on creating structural relationships between:
*	Maternal and child records to effectively diagnose and treat otherwise fatal child outcomes
*	Maternal and birth records and/or maternal and child death records
*	Maternal and child records in multiple disparate systems

### Audience 
The audience for this IG includes EHR vendors, developers of software tooling researchers, and associated information management systems. Researchers, business analysts, and policy managers can also benefit from a basic understanding of the use of this guide to support measure calculation for research purposes.

### Authors & Project Team  
Lantana Consulting Group 
Courtney Panaia-Rodi, Project Executive
Wendy Wise, Project Manager
Lani Johnson, Associate Project Manager
Rick Geimer, FHIR Subject Matter Expert
Zabrina Gonzaga, Terminology Subject Matter Expert
Sarah Gaunt, Senior FHIR/CDA Analyst
Dave deRoode, FHIR/CDA Analyst
Ming Dunajick, FHIR/CDA Analyst 
Ruby Nash, FHIR Analyst

Office of the Assistant Secretary for Planning and Evaluation (ASPE)
Violanda Grigorescu, MD, MSPH
Senior Health Scientist 
Division of Healthcare Quality and Outcomes, Office of Health Policy
(Violanda.Grigorescu@hhs.gov)

Centers for Disease Control and Prevention (CDC)
Margaret Lampe, RN, MPH
Nurse Epidemiologist & Project Officer of the Centers for Disease Control and Prevention Perinatal HIV Prevention Program

Lisa Romero, DrPH
Health Scientist
Centers for Disease Control and Prevention
Division of Adolescent School Health

National Institutes of Health (NIH)
Eunice Kennedy Shriver National Institute of Child Health and Human Development (NICHD)
National Information Center on Health Services Research and Health Care Technology (NICHSR)

Alison Cernich
NICHD Deputy Director
alison.cernich@nih.hhs.gov

John (Jack) Moye, Jr., MD 
Acting Director - National Children's Study
NICHD Medical Officer - Maternal & Pediatric Infectious Disease Branch
 moyej@exchange.nih.gov

Nahida Chakhtoura, MD, MsGH
NICHD Medical Officer
Maternal and Pediatric Infectious Disease Branch
nahida.chakhtoura@nih.gov

Juanita Chinn, PhD
NICHD Program Director
Population Dynamics Branch
juanita.chinn@nih.gov

Valerie Cotton 
NICHD Deputy Director
Office of Data Science and Sharing
valerie.cotton@nih.gov

Liz Amos, MLIS 
Special Assistant to the Chief Health Data Standards Officer
National Library of Medicine
liz.amos@nih.gov


Office of the National Coordinator for Health IT (ONC)
Carmen Smiley 
IT Specialist (Systems Analysis)

Rachel Abbey
Public Health Analyst & Program Officer  

Stephanie Garcia 
Senior Program Analyst 

Brittney Boakye, MPH
Program Assistant
Scientific Advancement Branch

Alan Taylor
Medical Informatics Officer, Standards and Terminology 
Albert.Taylor@hhs.gov

###	Acknowledgements
This guide was developed and produced through the efforts of Health Level Seven (HL7) and created using the Trifolia-on-FHIR tool, provided by Lantana Consulting Group. The HL7 Project Insight reference number for this project is 1736.
The editors appreciate the support and sponsorship of the HL7 Public Health Workgroup, and all volunteers and staff associated with the creation of this document. This guide would not have been possible without the support of the following groups.
Health Level Seven, HL7, CDA, CCD, FHIR and the [FLAME DESIGN] are registered trademarks of Health Level Seven International, registered in the US Trademark Office.
This material contains content from [SNOMED CT®](http://www.ihtsdo.org/snomed-ct/). SNOMED CT is a registered trademark of the International Health Terminology Standard Development Organization (IHTSDO).

This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at https://loinc.org/kb/license/. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

This material contains content from the CAP. The [Electronic Cancer Checklists](https://www.cap.org/laboratory-improvement/proficiency-testing/cap-ecc) are copyrighted by the CAP. All rights reserved.
