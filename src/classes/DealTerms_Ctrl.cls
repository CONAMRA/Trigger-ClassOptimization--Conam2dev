public class DealTerms_Ctrl {

	public Opportunity oppRecord {get;set;}
	public String fundedAmount {get;set;}
	public String estimatedDailyTransactions {get;set;}
	public string percentage_Comp {get;set;}
	public Sales_Check_List__c salesChkFld {get;set;}
	List <Opportunity> oppList;
	String oppId;
	public DealTerms_Ctrl() {
		oppId = ApexPages.currentPage().getParameters().get('Id');

		if (oppId != null && oppId.trim() != '') {
			oppList = getOppList();
			if (!oppList.isEmpty()) {
				oppRecord = oppList.get(0);
				/*if((null !=oppRecord.Total_Repay_Amount__c) && (null !=oppRecord.Pay_Back_Amount__c)) {  Percentage_comp = ((oppRecord.Total_Repay_Amount__c) / (oppRecord.Pay_Back_Amount__c)).setScale(2)+'' ;     } */
				if (!oppRecord.Sales_Check_Lists__r.isEmpty()) {
					SalesChkFld = oppRecord.Sales_Check_Lists__r.get(0);
				}
			}
			fundedAmount = FormulaFieldUtility.fundedAmount;
			if (FormulaFieldUtility.estimatedDailyRepay != null && !FormulaFieldUtility.estimatedDailyRepay.equals('')) {
				estimatedDailyTransactions = ((Decimal.valueof(FormulaFieldUtility.estimatedDailyRepay)).setScale(2)) + '';
			}
		} else {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Opportunity Id Does not Exist!'));
		}
	}

	public PageReference doSave() {
		try {
			upsert oppRecord;
			List <Opportunity> tempOppList = getOppList();
			if (null != tempOppList) {
				oppRecord = tempOppList.get(0);
			}
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm, 'Deal Terms Information Saved Successfully!'));
		} catch (Exception e) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
		return null;
	}

	private list <Opportunity> getOppList() {
		return new list <Opportunity> {
			[SELECT
				Id, Amount, Percent_Payback__c, Paid_Off_Letter_Rec_d__c,
				Pay_Back_Amount__c, Estimated_Days_to_Repay__c, Previous_FICO__c,
				Loan_Term_Days__c, QC_Calculator_Average__c, Previous_Applicant_2_FICO__c,
				AE_Calculator_Average__c, Gross_monthly_sales__c,
				QC_Gross_Monthly_Sales__c, UWEligible_for_Rapid_Funding__c,
				Remaining_Balance__c, Percent_Paid_Off__c, Competitor_Advance_Company__c,
				X20_Day_Average_Daily_Repay__c, Current_ROI__c,
				Total_Repay_Amount__c, Accepted_Rapid_Funding__c,
				Purpose_of_Funds__c, New_Percent_Payback__c,
				Deal_Repriced_Need_New_FRSA__c, New_Payback_Price__c,
				New_FRSA_Has_Been_Received__c, Visa_Info__c, Product__c,
				Average_Daily_Repay__c, Tentative_Funding_Date__c, Current_Balance_Sheet__c,
				Expected_Daily_Repay__c, X10_Day_Average_Daily_Repay__c, If_Renewal_Preceding_Opportunity__c,
				If_Renewal_Preceding_Opportunity__r.Current_ROI__c,
				If_Renewal_Preceding_Opportunity__r.Average_Daily_Repay__c,
				If_Renewal_Preceding_Opportunity__r.Total_Repay_Amount__c,
				If_Renewal_Preceding_Opportunity__r.Expected_Daily_Repay__c,
				If_Renewal_Preceding_Opportunity__r.Purchase_Amount__c,
				If_Renewal_Preceding_Opportunity__r.X10_Day_Average_Daily_Repay__c,
				If_Renewal_Preceding_Opportunity__r.Advance_ID__c,
				If_Renewal_Preceding_Opportunity__r.Renewal_Number__c,
				If_Renewal_Preceding_Opportunity__r.X20_Day_Average_Daily_Repay__c,
				If_Renewal_Preceding_Opportunity__r.Remaining_Balance__c,
				If_Renewal_Preceding_Opportunity__r.Percent_Paid_Off__c,
				If_Renewal_Preceding_Opportunity__r.Pay_Back_Amount__c,
	
				Previous_Balance__c, New_Split__c, Re_Price_Reasons__c, New_Advance_Amount__c,
				Est_Days_to_Repay__c, New_Advance_Price__c, Pre_Qual_Decision_Date__c,
				Existing_Competitor_Advance2__c, Third_Party_Company_Name__c, Payoff_Amount__c,
				Third_Party_Payoff_Amount__c, Payoff_Check_Sent__c, Pre_Qual_Pending_Date__c,
				Confirmed_competitor_Payoff_Information__c, Has_the_check_been_requested__c,
				Third_Party_Payoff__c, QC_Decision__c, Pre_Qual_Decision__c,
				UCC_Filing__c, UCC_Date__c, PQ_Data_Entry_Date__c, Pre_Qual_Unqualified_Reasons__c,
				UCC_Filing_Reason__c, UCC_Ordered__c, Pre_Qual_Person_Assigned__c,
				UCC_File_Number__c, UCC_Acknowledgement_Date__c, Pre_Qual_FAIL_Reason__c,
				Decision_Date__c, QC_Start_Date__c, QC_Decision_Date__c, Underwriting_Approval__c,
				Re_Decision_Date__c, UW_Assigned_Date_Stamp__c, Decline_Reason__c, Rescind_Reason__c,
				Unqualified_Reason__c, Exceptions__c, Test_Programs__c, Underwriter_s_Score__c,
				Initial_File_Review_Complete__c, Approved_With_Conditions__c,
				All_Approved_With_Conditions_Met__c, All_Approved_With_Conditions_Met_date__c,
				Auto_Decisioned_By__c, Underwriter_Assigned__c, Pre_Qual_Person__c,
				Site_Survey_Ordered__c, Site_Survey_Ordered_Due_Date__c, Site_Survey_Available__c,
				Site_Survey_Available_Due_Date__c, Canceled_Site_Survey__c, All_necessary_site_inspections_ordered__c,
				QC_Decline_Reason__c, UW_Auto_Decisioned_By__c, Eligible_for_Decline_Program__c,
				Initial_File_Review2__c,
				//VISA_MC_CC__c,
				VISA_MC__c,
				AMEX__c,
				//AMEX_CC__c,
				//Discover_CC__c,
				Discover__c,
				//Debit_CC__c,
				Debit__c,
				//EBT_CC__c,
				EBT__c,
				Purchase_Amount__c, QC_Person__c, ImageNow_Complete__c, (SELECT Competitor_Advance_Company__c FROM Sales_Check_Lists__r),
				QC_Issue_Return_to_Sales_Assistant__c, Deal_Terms_Interview_s_Required__c, UW_On_hold_Reasons__c
			FROM
				Opportunity
			WHERE
				Id = : oppId LIMIT 1]
		};
	}
}