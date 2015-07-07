global with sharing class Application {
	//Contact 
	global String FirstName {get; set;}
	global String LastName {get; set;}
	global String JobTitle {get; set;}		
	global String DateOfBirth {get; set;} ////FORMAT YYYYMMDD
 
	global String HomeAddress1 {get; set;}
	global String HomeAddress2 {get; set;}
	global String HomeCity {get; set;}	
	global String HomeState {get; set;}
	global String HomeZip {get; set;}	
	global String HomeMobilePhone {get; set;}
	global Integer BorrowerOwnershipPct {get; set;}	
	global String SSN {get; set;}	
	global String ResidenceStatus {get; set;}
	global String HomeCountry {get; set;}	
	
	// Account
	global String MerchantID {get; set;}	
	global String LegalBusName {get; set;}	
	global String Industry {get; set;}	
	global String SubIndustry {get; set;}
	global String BusinessAddress1 {get; set;}
	global String BusinessAddress2 {get; set;}
	global String BusinessCity {get; set;}	
	global String BusinessState {get; set;}
	global String BusinessZip {get; set;}	 
	global String BusinessMobilePhone {get; set;}
 	global String BusinessCountry {get; set;}	
 
	global Integer avgAnnualRevenue {get; set;}		
	global String legalStructure {get; set;}	
	global String ageOfBusinessYrs {get; set;}	 //FORMAT YYYYMMDD
	global String ageOfBusinessMonths {get; set;}	
	global String federalTaxId {get; set;}			
		
	// Opportunity
	global String loanIntent {get; set;}	
	global String existingCashAdvance {get; set;}	
	global Decimal cashAdvance {get; set;}	
	global Decimal mCACompany {get; set;}		
	global Integer avgMonthSales {get; set;}		//*
	global String majorCreditCardsProc {get; set;}	//*	
	global Integer avgMonthTrans {get; set;}	
	global Integer ccSalesLastMonth {get; set;}	
	global Integer ccSalesLast1Month {get; set;}		
	global Integer ccSalesLast2Month {get; set;}	
	global Integer ccSalesLast3Month {get; set;}	
	global Integer numOfTransLastMonth {get; set;}	
	global Integer numOfTrans1Month {get; set;}		
	global Integer numOfTrans2Month {get; set;}		
	global Integer numOfTrans3Month {get; set;}		
	
	global String sourceSystem 	{get; set;}		
	global String leadSource {get; set;}  //A001*
	global String campaignID {get; set;} // find default*
	global String closeDate {get; set;} //FORMAT YYYYMMDD
	
	global String stage	{get; set;} // Prospecting*
    global String product	{get; set;} // Product__c*
	global String oppRecType {get; set;} //find *
	global String externalID {get; set;} //*
 	
 

}