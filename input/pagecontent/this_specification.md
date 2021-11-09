## This IG defines a data source (ie Source) as well as a data consumer (ie Consumer). Sources may be traditional EHRs,  aggregating systems such as a Health Informaiton Exchanges (HIEs), Public Health Reporting Agencies such as the National Vital Statistics Agency or state's Electronic Death Registration System (EDRS). 

Maternal Health Researchers are the expected Consumers.

Data consumers will select a Population definition defined in this guide as well as a reporting period (see info on reporting period). The Source will provide 2 lists of Patient identifiers:
1. List of patient identifiers pertaining to recently pregnant Patients
2. List of patient identifiers pertaining to all associated children of recently pregnant Patients

Sources will also provide an association between the two sets of Patients (ie an association map between Mothers/potential Mothers and children). 

Consumers will query a data source for all known existing clinical information by Patient identifiers. If Source's data is not natively available in FHIR format, ClinicalDocuments may also be queried and used as the mechanism to produce and convey Source data to Consumers.

Once target data from Sources has been aggregated and transformed into standard FHIR, an $evaluate-measure operation will be performed on the respective FHIR server (see SANER). 

The Output of $evaluate-measure operation will be a MeasureReport consisting of all Patient Mothers (1) found to be within the defined cohort population. 

Aggregating all clinical information of all assocaited children of Mothers found to be in the cohort...

De-identification for research

## Not defined in this guide
- The methods by which data sources and data consumers discuss and agree upon the scope of clinical information. Must consider all applicable laws, policies, and organizational...