public with sharing class CheckPermission {

	String oppId;
	List <PermissionSet> permissionList;
	List <PermissionSetAssignment> permissionAssignList;


	public checkPermission(ApexPages.StandardController controller) {
		oppId = ApexPages.currentPage().getParameters().get('id');
		List <String> permisionSets = new List <String> {
			'Operations_Management_All',
			'Operations_Pre_Qual',
			'Operations_Processing',
			'Operations_QC',
			'Operations_UW',
			'Promac_UW2'
		};

		String UserId = UserInfo.getUserId();
		List <String> permissionIDList = new List <String> ();
		List <String> permissionIDAssignList = new List <String> ();
		permissionList = [SELECT Label, Name, Id FROM PermissionSet WHERE Name IN: permisionSets];
		System.debug('...permissionList...' + permissionList);
		permissionAssignList = [SELECT Id, permissionSetId FROM PermissionSetAssignment WHERE AssigneeId = : UserId];
		System.debug('...permissionAssignList...' + permissionAssignList);

	}

	public PageReference doAction() {
		pageReference pageRef = null;
		if (permissionAssignList.size() > 0 && permissionList.size() > 0) {
			for (PermissionSet perList: permissionList) {
				for (PermissionSetAssignment perAssign: permissionAssignList) {
					if (perList.Id == perAssign.permissionSetId) {
						System.debug('in true...');
						pageRef = new PageReference('/apex/MainPageResizable?Id=' + oppId);
						pageRef.setRedirect(true);
						return pageRef;
					}
				}
			}
			String retURL = ApexPages.currentPage().getParameters().get('retURL');
			if (retURL == null) {
				retURL = oppId;
			}
			pageRef = new PageReference('/' + oppId + '/e?nooverride=1&retURL=%2F' + retURL);
			pageRef.setRedirect(true);
		}
		return pageRef;
	}

}