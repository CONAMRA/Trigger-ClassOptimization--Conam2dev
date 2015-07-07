public class BusinessReview_Ctrl {

	public Opportunity oppRecord { get; set; }
    public Account accRecord { get; set; }
    public String creditAlert { get; private set; } 
    public String SCFAlert { get; private set; } 
    public String businessCategoryAlert { get; private set; }
    public String businessAlertCount { get; private set; }
    public String criteriaDecision { get; private set; }
    public String isTheBusinessTypeConsideredLuxury { get; private set; }

 
	public BusinessReview_Ctrl() {
		String oppId = ApexPages.CurrentPage().getParameters().get('Id');

		if (oppId != null && oppId.trim() != '') {
			List <Opportunity> oppList = [SELECT 
												Id, Type_of_Entity__c, Business_Status__c, AccountId,
												Confirmed_business_DBA_name__c, Confirmed_legal_name_in_Westlaw__c,
												If_no_please_explain_principal_westlaw__c,
												CH_Business_Ownership_Confirmed__c, NAMAA__c,
												Eligible_Photo_ID__c, Other_UCC_Filings__c,
												Confirmed_Westlaw_real_property_search__c,
												Does_Merchant_Own_The_Business_Location__c,
												Confirm_DBA_Address_against_Google_Maps__c,
												FRSA_legal_name_same_as_in_Salesforce__c,
												Business_Judgements__c, EC_Company_in_business_6_months__c,
												Business_Open_Tax_Lien_Amount__c,
												Business_Tax_Lien_Date_Filed__c, Business_Open_Tax_Lien_Type__c,
												Business_Tax_Lien_Filing_State_s__c, UW_able_to_confirm_Entity_Type__c,
												Business_Bankruptcies__c, Business_Open_Tax_Liens__c,
												Annual_CC_sales_Avg_4_Mo_times_12__c,
												Annual_Gross_sales_Avg_2_Mo_times_12__c,
												Current_Processor__c, Processor_Name__c,
												Confirmed_Business_Information_from_QC__c,
												Confirmed_FRSA_Dates__c, Average_Ticket__c, Current_Tax_Returns__c, 
												Current_Profit_Loss__c,
												Current_Balance_Sheet__c, X1_Year_Credit_Card_Statement__c,
												X1_Year_Bank_Statements__c, BA_FICO_score_500__c, SIC_CODE__c,
												Business_Category__c, BAM_Match_Selection__c,
												CRR__c, CRR__r.FICO__c,
												EC_X4_consecutive_months_of_processing__c, 
												X4_consecutive_months_of_Bank_Statements__c,
												EC_X12_separate_daily_deposits_per_month__c,
												BA_X2_years_in_business__c,
												EC_Criteria_Decision__c,
												Merchant_Website__c, UWEligible_for_Rapid_Funding__c
											FROM 
												Opportunity 
											WHERE 
												Id = : oppId LIMIT 1];

			if (!oppList.isEmpty()) {
				oppRecord = oppList.get(0);
			}
			// Business Alerts
			creditAlert = FormulaFieldUtility.QCConditionalCriteria;
			SCFAlert = FormulaFieldUtility.QCSCFAlert;
			BusinessCategoryAlert = FormulaFieldUtility.QCBusinessCategoryAlert;
			BusinessAlertCount = FormulaFieldUtility.BABusinessAlertCount;
			CriteriaDecision = FormulaFieldUtility.ECCriteriaDecision;
			isTheBusinessTypeConsideredLuxury = FormulaFieldUtility.BAIsTheBusinessTypeConsideredLuxury;

		} 
		else {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Opportunity Id Does not Exist!'));
		}
	}

	public PageReference doSave() {

		try {
			if (oppRecord != null) {
				upsert oppRecord;
				ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm,'Business Review Information Saved Successfully!'));
			}
		} 
		catch (Exception e) {

			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
		return null;
	}

}