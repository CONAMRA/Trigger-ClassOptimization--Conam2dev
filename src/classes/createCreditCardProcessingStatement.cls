global class createCreditCardProcessingStatement {
	/* CC variables */
	public String processorName {get; set;}
    public String mid {get; set;}
    /* CC variables */
    
    /* BS variables */
    public String bankName {get; set;}
    public String accountNo {get; set;}
    public String routingNo {get; set;}
    public Boolean primary {get; set;}
    public Opportunity objOpportunity {get;set;}
	/* BS variables */

	public createCreditCardProcessingStatement(ApexPages.StandardController controller) {
		String OppId = ApexPages.currentPage().getParameters().get('Id');
		if (OppId != null && OppId.trim() != '') {

			list <Opportunity> Opportunities = [SELECT 
													RecordType.Name, Gross_Total_Deposit_Pricing_Amount__c, 
													Account.Number_of_Terminals_at_Location__c, 
													Annual_CC_sales_Avg_4_Mo_times_12__c, Annual_Gross_sales_Avg_2_Mo_times_12__c,
												    Account.Name, Business_Name_On_Check_Reference__c, 
												    AddressOnCheckIf_no_please_explain__c, 
												    Address_on_Check_Match_CC_statements__c, 
												    Are_there_special_wiring_instructions__c, Confirmed_Information_From_QC__c, 
												    Address_on_Check_Match_FRSA__c, Address_on_Check_Match_Bank_Statement__c, 
												    Visa_Info__c, Year__c, Year_4__c, Year_3__c, Year_2__c, 
												    X4_consecutive_months_of_Bank_Statements__c, X1_Year_Credit_Card_Statement__c,
												    X1_Year_Bank_Statements__c, Write_Off_Date__c, Wire_Amount__c, 
												    WireAmount_Date_and_time_confirmed__c, 
												    What_is_their_home_mortgage_balance__c, What_is_the_value_of_their_home__c,
												    Welcome_Kit_Sent__c, Welcome_Kit_Sent_Due_Date__c,
												    Wage_Garnishment_w_in_the_past_12_months__c, Voided_Check_Received__c, 
												    V_MC_Monthly_Sales__c, User__c, Unqualified_Reason__c, 
												    Unfavorable_Landlord_Reference__c, Underwriting_Notes__c, 
												    Underwriting_Approval__c, Underwriter_s_Score__c, USER_ID__c, UCC_Ordered__c,
												    UCC_Filing__c, UCC_Filing_Reason__c, UCC_File_Number__c, 
												    UCC_Debtor_Legal_Name__c, UCC_Date__c, UCC_Acknowledgement_Date__c, 
												    Type_of_Entity__c, Type_of_Change__c, Type, Transition_Initials__c, 
												    Transferred_By__c, Tracking_Code_Opp__c, Time_For_Renewal_Date__c, 
												    Third_Party_Payoff__c, Third_Party_Payoff_Amount__c, 
												    Third_Party_Company_Name__c, Test_Programs__c, Tentative_Funding_Date__c, 
												    Telemarketing_Comments__c, Tax_Liens_Open__c, 
												    Tax_Liens_Judgment_on_Business__c, SystemModstamp, Syndication_Amount__c, 
												    SyncedQuoteId, Swft_Financial_Campagin__c, Survey_Needed__c, 
												    Subscribed_to_Newsletter__c, Submitted_For_Funding_Approval__c, 
												    Submitted_For_Funding_Approval_Exception__c, Submit_to_UW_Processing__c, 
												    Submit_to_Sales_Assistant__c, State_Of_Location__c, Stage_Rescind_Reason__c,
												    StageName, Split_Fund_Set_Up__c, Specified_ROI__c, Site_Visit_Ordered__c,
												    Site_Survey_Ordered__c, Site_Survey_Ordered_Due_Date__c, 
												    Site_Survey_Available__c, Signed_Loan_Docs_Received__c, 
												    Signed_Contract_Received__c, Set_up_Lockbox_for_AMEX_Only__c, 
												    Service_Category__c, Sent_Rapid_Funding_Addendum__c, Sent_Mailer__c, 
												    Sent_Loan_Docs__c, Send_RMB_app_AMEX_ONLY__c, Send_Auto_Updates__c, 
												    Second_Batch__c, Search_Type_Opp__c, Sales_Note_to_UW_Processing__c, 
												    Sales_Assistant_For_Deal__c, SIC_CODE__c, Routing_Number__c, 
												    Risk_Alert_Source__c, Risk_Alert_Date__c, 
												    Revolving_Debt_Currently_Past_Due__c, Resulting_Process__c, 
												    Rescind_Reason__c, Renewal__c, Renewal_Number__c, Renewal_Eligibility__c,
												    Remaining_Balance__c, Referring_URL_Opp__c, Reference_Number__c,
												    RecordTypeId, Received_Rapid_Funding_Addendum__c, 
												    Reason_s_For_Funding_Exceptions__c, Re_Price_Reasons__c, Re_Decision_Date__c,
												    RENEWAL_DATE__c, QC_Start_Date__c, QC_Person__c, 
												    QC_Issue_Return_to_Sales_Assistant__c, QC_Gross_Monthly_Sales__c, 
												    QC_Decline_Reason__c, QC_Decision__c, QC_Decision_Date__c, 
												    QC_Calculator_Average__c, Purpose_of_Funds__c, Product__c, Processor_Name__c,
												    Processing_and_or_Origination_Fee_s__c, Processing_Sign_off_Discrepency__c,
												    Processing_Representative__c, Processing_Rep_Assigned__c,
												    Processing_Notes__c, Processing_Initial_Review_Complete__c, Probability,
												    Pricebook2Id, Previous_Sales_Rep__c, Previous_Opportunity__c, 
												    Previous_Deal_60_Paid_Off__c, Prefunding_Call_Phone_Number__c, 
												    Prefunding_Call_Performed_by__c, Prefunding_Call_Completed_Date__c, 
												    Pre_Qual_Unqualified_Reasons__c, Pre_Qual_Person__c, 
												    Pre_Qual_Person_Assigned__c, Pre_Qual_Pending_Date__c, 
												    Pre_Qual_Loss_Reason__c, Pre_Qual_FAIL_Reason__c, Pre_Qual_Decision__c,
												    Pre_Qual_Decision_Date__c, Postcard_Code__c, Possible_Funding_Today__c,
												    Percent_Payback__c, Percent_Paid_Off__c, Payoff_Letter_Received__c, 
												    Payoff_Check_Sent__c, Payoff_Amount__c, Pay_Off_ROI__c, Pay_Back_Amount__c,
												    Partner_Application_Number__c, Paid_Off_Letter_Rec_d__c, Paid_Off_Date__c,
												    Packet_Preparation_Sent__c, PSOE_Voided_Check__c, PSOE_QC_Calc__c,
												    PSOE_No_QC_Calc__c, PSOE_Loan_Key_Suppliment__c, PSOE_Funding_Checklist__c,
												    PSOE_FRSA__c, PSOE_Competitor_Payoff__c, PSOE_Business_Term__c,
												    PQ_Data_Entry_Date__c, PPC_Creative_Opp__c, PASSWORD__c, OwnerId,
												    Owned_Business_less_1year__c, Other_UCC_Filings__c, Opportunity_Number__c,
												    Opportunity_Level__c, Open_Account_Pay_Off_Letter_Sent__c,
												    Open_Account_Pay_Off_Letter_Requested__c, On_Hold_Reason__c,
												    Number_of_NSF_4__c, Number_of_NSF_3__c, Number_of_MIDs_used_for_Pricing__c,
												    Notified_NxGen_of_Approval__c, Not_Interested_Reason__c, NextStep,
												    New_Split__c, New_Processor_Setup_Completed__c, New_Lead_Source__c,
												    New_FRSA_Has_Been_Received__c, New_Advance_Amount__c, Name, NVMS_Status__c,
												    NVMS_Report__c, NVMS_File_Number__c, NSF_picklist__c, NSF__c, NSF_2__c,
												    NAMAA__c, Mortgage_Delinquent__c,
												    Months_of_Processing_Statements_Included__c, Monthly_cc_sales__c, 
												    Monthly_Gross_Deposit_4__c, Monthly_Gross_Deposit_3__c, 
												    Monthly_Gross_Debits_4__c, Monthly_Gross_Debits_3__c, 
												    Monthly_Gross_Debits_2__c, Monthly_Gross_Debits_1__c, 
												    Monthly_Average_Balance_4__c, Monthly_Average_Balance_3__c, Month__c,
												    Month_Average_Gross_Sales_2__c, Month_Average_Gross_Sale_1__c, 
												    Month_Average_Balance_2__c, Month_Average_Balance_1__c, Month_4__c, 
												    Month_3__c, Month_2__c, Merchant_has_Other_Account_Opp_with_RA__c, 
												    Manual_Applicant_1_FICO__c, Management_Sign_Off__c, 
												    MRA_3_Minute_are_complete__c, MI_Website_if_availible__c, MI_Score__c, 
												    MI_Gross_Monthly_Sales_of_the_Business__c, 
												    MI_Confirm_length_of_time_with_processor__c, 
												    MI_Cash_Advance_Balance_Owed_if_applicab__c, MID_6__c, MID_5__c, MID_4__c, 
												    MID_3__c, MID_2__c, MID_1__c, MEB__c, MEB_4__c, MEB_3__c, MEB_2__c,
												    Loan_Term_Days__c, Legible_4_months_processing_statements__c,
												    Legal_Name__c, Lead_ID_Opp__c, Lead_Created_Dated_Opp__c, LeadSource, 
												    Keyword_Serach_Type_Opp__c, Judgements_Open__c, IsWon, IsDeleted, IsClosed,
												    International_Sale_Hidden_Text__c, Intended_use_of_cash__c,
												    Installment_Debt_Currently_Past_Due__c, Initial_underwriting_approval__c,
												    Individual_Bankruptcies__c, Individual_Bankruptcies_Additional_Notes__c,
												    ImageNow_Complete__c, Id, How_did_you_hear_about_us__c, 
												    Home_value_confirmed_through__c, Have_all_UW_conditions_been_satisfied__c, 
												    Has_the_check_been_requested__c, HasOpportunityLineItem, 
												    HIGH_RISK_Business_Tender_Shift__c, HIGH_RISK_Business_Prohibited_List__c, 
												    Gross_monthly_sales__c, Gross_Monthly_Sales_Dollars__c, Funding_Status__c, 
												    Funded_by_WC__c, Funded_by_WC_Due_Date__c, ForecastCategoryName, 
												    ForecastCategory, Fixed_Amount__c, FiscalYear, FiscalQuarter, Fiscal, 
												    First_Batch__c, Fails_Minimum_Propriotary_Score__c, 
												    FRSA_legal_name_same_as_in_Salesforce__c, FRSA_complete_and_legible__c, 
												    ExpectedRevenue, Existing_Customer__c, Exceptions__c, 
												    Estimated_Days_to_Repay__c, Email_Validation_Code__c, Email_Address__c, 
												    Eligible_for_Decline_Program__c, Eligible_Photo_ID__c, 
												    EC_X4_consecutive_months_of_processing__c, 
												    EC_Company_in_business_6_months__c, Does_the_Merchant__c, 
												    Does_Merchant_Own_The_Business_Location__c, 
												    Does_Ave_V_MC_Volume_Agree_w_Calculator__c, 
												    Did_the_Partner_Submit_a_Full_Packet__c, Description, Decline_Reason__c, 
												    Decline_Letter_Sent__c, Decline_Letter_Sent_Due_Date__c, Decision_Date__c, 
												    Deal_Terms_Notes_Explain_Changes__c, Deal_Ready_For_Processing__c, 
												    Deal_Defaulted__c, Date_Split_Changed__c, Data_Entry_Date__c, 
												    Current_Tax_Returns__c, Current_ROI__c, Current_Profit_Loss__c, 
												    Current_Processor__c, Current_Balance_Sheet__c, CreatedDate, CreatedById, 
												    Contact__c, ContactID__c, Confirmed_wire_amount_with__c, 
												    Confirmed_primary_signer_fax_number__c, Confirmed_primary_signer_e_mail__c, 
												    Confirmed_legal_name_in_Westlaw__c, 
												    Confirmed_competitor_Payoff_Information__c, 
												    Confirmed_business_phone_number__c, Confirmed_business_fax_number__c, 
												    Confirmed_business_email_address__c, Confirmed_business_DBA_name__c, 
												    Confirmed_bank_information__c, Confirmed_additional_signer_phone_s__c, 
												    Confirmed_additional_signer_fax_number__c, 
												    Confirmed_additional_signer_e_mail__c, 
												    Confirmed_additional_business_2_address__c, 
												    Confirmed_additional_business_2_DBA__c, 
												    Confirmed_additional_business_1_address__c, 
												    Confirmed_additional_business_1_DBA__c, 
												    Confirmed_Westlaw_real_property_search__c, 
												    Confirmed_QC_Calc_Against_Deal_Terms__c, Confirmed_Primary_Signer_phone_s__c,
												    Confirmed_Needs_Follow_Up_Due_Date__c, Confirmed_FRSA_Dates__c, 
												    Confirmed_Contact_Phone_Number__c, Confirmed_Contact_Mobile_Number__c, 
												    Confirmed_Add_l_Signer_Phone_Number__c, 
												    Confirmed_Add_l_Signer_Mobile_Number__c, 
												    Confirm_DBA_Address_against_Google_Maps__c, Completed_NAMAA_Tag__c, 
												    Compensation_Factors__c, Comments_on_Bank_Statements__c, Closed_Reason__c, 
												    Closed_Account_Paid_Off_Letter_Sent__c, CloseDate, 
												    Charge_offs_in_the_last_3_months__c, Canceled_Site_Survey__c, 
												    Canceled_Site_Survey_Due_Date__c, Campaign_name__c, CampaignId, 
												    Calculator__c, Calculate_Due_Dates__c, CRR__c, 
												    CH_Business_Ownership_Confirmed__c, Business_name_check_match_contract__c, 
												    Business_Tax_Lien_Filing_State_s__c, Business_Tax_Lien_Date_Filed__c, 
												    Business_Status__c, Business_Open_Tax_Liens__c, 
												    Business_Open_Tax_Lien_Type__c, Business_Open_Tax_Lien_Amount__c, 
												    Business_Not_In_Good_Standing__c, Business_Judgements__c, 
												    Business_Category__c, Business_Bankruptcies__c, 
												    Business_Bankruptcies_Additional_Notes__c, 
												    Billing_Addr_matches_Physical_Location__c, Begin_Activity_Monitoring__c, 
												    Begin_Activity_Monitoring_Due_Date__c, Bankruptcies__c, Bank_Statements__c, 
												    Bank_Statement_Legal_DBA_FRSA__c, Bank_Statement_LegalDBA_Voided_Check__c, 
												    Bank_Name__c, BankInfo_Date_and_time_confirmed__c, 
												    BK_statmnt_less_than_gross_sales_on_app__c, BA_FICO_score_500__c, 
												    BAM_Match_Selection__c, Average_Ticket__c, Auto_Survey_ID__c, 
												    AsOfDate_for_Remaining_Balance__c, Are_there_any_Odd_Large_Deposits__c, 
												    Are_there_any_Competitor_Debits__c, Are_card_types_selected_correct__c, 
												    Approved_With_Conditions__c, Approval_Process_Entry_Time__c, 
												    Applicant_2_FICO__c, Any_New_UCC_Found__c, Any_New_Competitor_Tag__c, 
												    Amount, All_necessary_site_inspections_ordered__c, 
												    All_card_types_set_up_to_be_Captured__c, Advance_terms_match_FRSA__c, 
												    Advance_Payoff_Date__c, Account_Number_For_Funding__c, Account_In_Risk__c, 
												    Account_Database_Entry__c, Account_Database_Entry_Due_Date__c, AccountId,
												    Accepted_Rapid_Funding__c, AE_Calculator_Average__c, ACH_Requested__c, 
												    ACH_Confirmed__c, Notes_from_Prefunding_Call__c, Funding_Notes__c, 
												    Site_Survey_Available_Due_Date__c, UW_Auto_Decisioned_By__c, 
												    Add_on_check_matches_Acc_Info__c, Does_voided_check_Acc_and_ABA_match__c
												FROM 
													Opportunity
												WHERE 
													Id = : apexpages.currentpage().getparameters().get('id')];
													
			if (Opportunities != null && !Opportunities.isEmpty()) {
				objOpportunity = Opportunities.get(0);
			} else {
				objOpportunity = new Opportunity();
			}

			//this.objOpportunity  = (Opportunity)controller.getRecord();
		} else {
			objOpportunity = new Opportunity();
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Opportunity Id Does not Exist!'));
		}
	}

	public void doSave() {
		String oppId = ApexPages.currentPage().getParameters().get('Id');

		// bank statement record
		Bank_Statement__c bsNew = new Bank_Statement__c();
		bsNew.Opportunity__c = oppId;
		bsNew.Bank_Name__c = bankName;
		bsNew.Account_Number__c = accountNo;
		bsNew.Wire_Bank_Routing_Number__c = routingNo;
		bsNew.Primary__c = primary;
		Savepoint sp = Database.setSavepoint();
		
		try {
			if(bsNew != null){
				insert bsNew;
			}
		} 
		catch (Exception e) {
			Database.rollback(sp);
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
	}

	public void doSave1() {
		String oppId = ApexPages.currentPage().getParameters().get('Id');

		// cc record
		Credit_Card_Processing_Statements__c ccpsNew = new Credit_Card_Processing_Statements__c();
		ccpsNew.Opportunity__c = oppId;
		ccpsNew.Processor_Name__c = processorName;
		ccpsNew.Last_Four_of_MID__c = mid;
		Savepoint sp = Database.setSavepoint();

		try {
			if(ccpsNew != null){
				insert ccpsNew;
			}
		} 
		catch (Exception e) {
			Database.rollback(sp);
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
	}

	public PageReference save() {
		try {
			if(objOpportunity != null){
				upsert objOpportunity;
				ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm, 'Saved Successfully!'));
			}
		} 
		catch (Exception e) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
		return null;
	}

}