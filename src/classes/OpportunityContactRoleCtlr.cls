public class OpportunityContactRoleCtlr {

	public List<SelectOption> options {get; set;}
    public List<RoleWrapper> oppConRoleList {get; set;}
    public String secHeader {get; set;}
	String cancelURL;

	public OpportunityContactRoleCtlr() {
		options = new List <SelectOption> ();
		String oppId = ApexPages.currentPage().getParameters().get('oppId');
		cancelURL = ApexPages.currentPage().getParameters().get('retURL');
		fillPickList();
		Boolean primaryflag = false;
		oppConRoleList = new List <RoleWrapper> ();

		if (oppId != null && oppId.trim() != '') {
			List <Opportunity> oppList = [SELECT Id, Name FROM Opportunity WHERE Id = : oppId];
			if (!oppList.isEmpty()) {
				secHeader = 'Contact Roles for ' + oppList.get(0).Name;
			}

			List <OpportunityContactRole> oppRoleList = [SELECT Id, Role, OpportunityId,
														 	IsPrimary, ContactId 
														 FROM
															OpportunityContactRole 
														 WHERE
															OpportunityId = : oppId and Contact.IsDeleted = false];

			for (OpportunityContactRole opprole: oppRoleList) {
				if (opprole.IsPrimary == true) {
					primaryflag = true;
				}
				oppConRoleList.add(new RoleWrapper(opprole));
			}
		}

		RoleWrapper firstrow;
		if (primaryflag) {
			firstrow = new RoleWrapper(new OpportunityContactRole(isPrimary = false));
		} 
		else {
			firstrow = new RoleWrapper(new OpportunityContactRole(isPrimary = true));
		}
		if (!oppConRoleList.isEmpty()) {
			oppConRoleList.add(0, firstrow);
		} 
		else {
			oppConRoleList.add(firstrow);
		}

		if (oppId != null && oppId.trim() != '') {
			// add three empty rows
			for (integer i = 0; i < 3; i++) {
				oppConRoleList.add(new RoleWrapper(new OpportunityContactRole(isPrimary = false, OpportunityId = oppId)));
			}
		}
	}

	public void fillPickList() {
		for (Schema.PicklistEntry f: OpportunityContactRole.Role.getDescribe().getPicklistValues()) {
			options.add(new SelectOption(f.getLabel(), f.getValue()));
		}
	}

	public PageReference cancel() {
		if (cancelURL != null && cancelURL.trim() != '') {
			return new PageReference(cancelURL);
		}
		return null;
	}

	public PageReference save() {
		List <OpportunityContactRole> updateRole = new List <OpportunityContactRole> ();

		for (integer i = 1; i < oppConRoleList.size(); i++) {
			if (oppConRoleList.get(i).contactRole.ContactId != null) {
				updateRole.add(oppConRoleList.get(i).contactRole);
			}
		}

		if (!updateRole.isEmpty()) {
			upsert updateRole;
		}

		if (cancelURL != null && cancelURL.trim() != '') {
			return new PageReference(cancelURL);
		}
		return null;
	}

	public class RoleWrapper {

		public OpportunityContactRole contactRole {get; set;}

		public RoleWrapper(OpportunityContactRole contactRole) {
			this.contactRole = contactRole;

		}
	}
}