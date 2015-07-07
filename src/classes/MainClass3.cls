public class MainClass3 {
	
	 //public PermissionSetUtility objPermissionSetUtility{get;set;}
	 public OppObject_Detail objOppDetail { get; set; }
     public Opportunity opp { get; set; }
     //public Underwriting__c und{get;set;}
     public Merchant__c mer { get; set; }
     //public Opportunity_Bank__c oppBank{get;set;}
     public Sales_Check_List__c salesCheckList { get; set; }
     public list<OpportunityDetailTabs> objOpportunityDetail { get; set; } 
	 //String msg {get;set;}

	public MainClass3() { 

		InitializeClass();
	}

	public MainClass3(ApexPages.StandardController controller) {
		InitializeClass();
	}

	public void InitializeClass() {
		ID OppId = ApexPages.currentPage().getParameters().get('Id');
		objOppDetail = new OppObject_Detail('Opportunity Details', OppId);
		objOpportunityDetail = new list <OpportunityDetailTabs> ();

		List <PermissionSetAssignment> userPSA = [SELECT 
														Id, PermissionSetId, AssigneeId, SystemModstamp 
													FROM
														PermissionSetAssignment 
													WHERE 
														AssigneeId = : UserInfo.getUserId() AND PermissionSet.profileId = NULL];
		
		if (userPSA.size() > 0) {
			List <PermissionSet> pSet = [SELECT Id, Label FROM PermissionSet WHERE Id = : userPSA[0].PermissionSetId];

			for (Opp_RD_Permission_Set__c orps: Opp_RD_Permission_Set__c.getAll().values()) {
				if (IsPermissionsMatch(pSET[0].Label, orps)) {
					objOpportunityDetail.add(new OpportunityDetailTabs(orps.Vf_Page_Name__c, orps.Name, orps.Tab_Order__c));
				}
			}
			objOpportunityDetail.sort();

		} else {
			//ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'You dont have sufficient access to view this page. Please contact your administrator.'));			 
			objOpportunityDetail.add(new OpportunityDetailTabs('ErrorPage', 'Error Message', 0));
		}
	}

	private boolean IsPermissionsMatch(String permissionLabel, Opp_RD_Permission_Set__c orps) {
		boolean matched = false;
		if ((permissionLabel == 'Operations - Management (All)' && orps.Management__c == true) 
			 	|| (permissionLabel == 'Operations - Pre-Qual' && orps.Pre_Qual__c == true) 
			 	|| (permissionLabel == 'Operations - Processing' && orps.Processing_CS__c == true) 
			 	|| (permissionLabel == 'Operations - QC' && orps.QC__c == true) 
			 	|| (permissionLabel == 'Operations - UW' && orps.Underwriting__c == true) 
			 	|| (permissionLabel == 'Promac - UW' && orps.Promac_UW__c == true)) matched = true;

		return matched;
	}

	public class OpportunityDetailTabs implements Comparable {
		
		public String oppId{get;set;}
        public String tabName {get;set;}
        public String vfPageName {get;set;}
		public Decimal tabOrder {get;set;}
		
		public OpportunityDetailTabs(String vfPageName, String tabName, Decimal tabOrder) {
			
			this.vfPageName = vfPageName;
			this.tabName = tabName;
			this.oppId = apexPages.currentPage().getParameters().get('Id');
			this.tabOrder = tabOrder;
		}

		public Integer compareTo(Object compareTo) {
			Integer result = 0;
			OpportunityDetailTabs oppTab = (OpportunityDetailTabs) compareTo;
			if (this.tabOrder == oppTab.tabOrder) result = 0;
			else if (this.tabOrder > oppTab.tabOrder) result = 1;
			else result = -1;

			return result;
		}
	}

	/*public pageReference checkPermissionSet(){
            List<PermissionSetAssignment> userPSA = [Select Id, PermissionSetId, AssigneeId, SystemModstamp From PermissionSetAssignment Where AssigneeId =: UserInfo.getUserId() AND PermissionSet.profileId = NULL];
             if(userPSA.size() == 0){
                  ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'You dont have sufficient access to view this page. Please contact your administrator.'));
             }
             return null;  
        } */

	/*List<String> tabListSorted = new List<String>{
                            'Main Business',
                            'Deal Terms',
                            'Applicant & Credit',
                            'Statements',
                            'Business Review',
                            'Interviews',
                            'Site Surveys',
                            'RADocs',
                            'Processor Information',
                            'Contract Validation',
                            'Contact Roles',
                            'Customer Surveys',
                            'Activity History',
                            'Advances',
                            'Approval History',
                            'Notes & Attachments',
                            'Opportunity Documents'};
               List<String> vfPageListSorted = new List<String>{
                            'Main Business',
                            'Deal Terms',
                            'Applicant & Credit',
                            'Statements',
                            'Business Review',
                            'Interviews',
                            'Site Surveys',
                            'RADocs',
                            'Processor Information',
                            'Contract Validation',
                            'Contact Roles',
                            'Customer Surveys',
                            'Activity History',
                            'Advances',
                            'Approval History',
                            'Notes & Attachments',
                            'Opportunity Documents'};
                Map<String,String> tabVfMap = new Map<String,String>();
                for(integer i=0; i<tabListSorted.size(); i++){                         
                       tabVfMap.put(vfPageListSorted[i],tabListSorted[i]);
                } */
}