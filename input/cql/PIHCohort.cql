library PIHCohort version '0.0.01'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.001' called FHIRHelpers

codesystem "SNOMEDCT": 'http://snomed.info/sct'

valueset "Eclampsia SNOMED": 'http://www.hl7.org/fhir/us/mihr/ValueSet/pregnancy-eclampsia-mmm-SNOMED'
valueset "Eclampsia ICD": 'http://www.hl7.org/fhir/us/mihr/ValueSet/pregnancy-eclampsia-mmm-ICD'
valueset "Chronic Hypertension SNOMED": 'http://www.hl7.org/fhir/us/mihr/ValueSet/pregnancy-chronic-hypertension-mmm-SNOMED'
valueset "Chronic Hypertension ICD": 'http://www.hl7.org/fhir/us/mihr/ValueSet/pregnancy-chronic-hypertension-mmm-ICD'
valueset "Induced Hypertension SNOMED": 'http://www.hl7.org/fhir/us/mihr/ValueSet/pregnancy-induced-hypertension-mmm-SNOMED'
valueset "Induced Hypertension ICD": 'http://www.hl7.org/fhir/us/mihr/ValueSet/pregnancy-induced-hypertension-mmm-ICD'


parameter "Measurement Period" Interval<DateTime>

context Patient

define "PIH Conditions":
	[Condition: "Eclampsia SNOMED"]
	union [Condition: "Eclampsia ICD"]
	union [Condition: "Chronic Hypertension SNOMED"]
	union [Condition: "Chronic Hypertension ICD"]
	union [Condition: "Induced Hypertension SNOMED"]
	union [Condition: "Induced Hypertension ICD"]
    	

define "Initial Population":
	exists("PIH Conditions")

define "SDE Related Person":
	[RelatedPerson]

define "SDE Allergy Intolerance":
	[AllergyIntolerance]

define "SDE BMI":
	[Observation: code ~ '39156-5']

define "SDE Blood Pressure":
	[Observation: code ~ '85354-9']

define "SDE Height":
	[Observation: code ~ '8302-2']

define "SDE Body Temperature":
	[Observation: code ~ '8310-5']

define "SDE Body Weight":
	[Observation: code ~ '29463-7']

define "SDE Care Plan":
	[CarePlan]

define "SDE Care Team":
	[CareTeam]

define "SDE Conditions":
	[Condition]

//USCore suggests that there's two different Diagnostic Report profiles that need to be caught but
//it boils down to just catching all Diagnostic Reports
define "SDE Diagnostic Report":
	[DiagnosticReport]

define "SDE Document Reference":
	[DocumentReference]

define "SDE Encounter":
	[Encounter]

define "SDE Goal":
	[Goal]

define "SDE Head Circumference":
	[Observation: code ~ '9843-4']

define "SDE Heart Rate":
	[Observation: code ~ '8867-4']

define "SDE Immunization":
	[Immunization]

define "SDE Device":
	[Device]

define "SDE Lab Observation":
	[Observation: category ~ 'laboratory']

define "SDE Location":
	[Location]

define "SDE Medication":
	[Medication]

define "SDE Medication Request":
	[MedicationRequest]

define "SDE Organization":
	[Organization]

define "SDE Patient":
	[Patient]

define "SDE Pediatric BMI":
	[Observation: code ~ '59576-9']

define "SDE Occipital Frontal Head Circumference":
	[Observation: code ~ '8289-1']

define "SDE Pediatric Weight for Height":
	[Observation: code ~ '77606-2']

define "SDE Practitioner":
	[Practitioner]

define "SDE Practitioner Role":
	[PractitionerRole]

define "SDE Procedure":
	[Procedure]

define "SDE Provenance":
	[Provenance]

define "SDE Oximetry":
	[Observation: code ~ '2708-6']

define "SDE Respiratory Rate":
	[Observation: code ~ '9279-1']

define "SDE Smoking Status":
    [Observation: category ~ 'social-history']

define "SDE Vital Signs":
	[Observation: category ~ 'vital-signs']


/**
*    CQFMeasures Common Logic
**/
define function "Normalize Interval"(choice Choice<FHIR.dateTime, FHIR.Period, FHIR.Timing, FHIR.instant, FHIR.string, FHIR.Age, FHIR.Range> ):
  case
  	  when choice is FHIR.dateTime then
    	Interval[FHIRHelpers.ToDateTime(choice as FHIR.dateTime), FHIRHelpers.ToDateTime(choice as FHIR.dateTime)]
  		when choice is FHIR.Period then
  		FHIRHelpers.ToInterval(choice as FHIR.Period)
  		when choice is FHIR.instant then
  			Interval[FHIRHelpers.ToDateTime(choice as FHIR.instant), FHIRHelpers.ToDateTime(choice as FHIR.instant)]
  		when choice is FHIR.Age then
  		  Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age),
  			  FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity(choice as FHIR.Age) + 1 year)
  		when choice is FHIR.Range then
  		  Interval[FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).low),
  			  FHIRHelpers.ToDate(Patient.birthDate) + FHIRHelpers.ToQuantity((choice as FHIR.Range).high) + 1 year)
  		when choice is FHIR.Timing then
  		  Interval[FHIRHelpers.ToDateTime((choice as FHIR.Timing).event), FHIRHelpers.ToDateTime((choice as FHIR.Timing).event)]
    when choice is FHIR.string then
      Message(null as Interval<DateTime>, true, '1', 'Error', 'Cannot compute an interval from a String value')
  		else
  			null as Interval<DateTime>
  	end