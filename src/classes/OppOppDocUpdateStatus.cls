/**
 *********************************************************************************************************************
 * Module Name   : OppOppDocUpdateStatus for Biz2Credit Webservice
 * Description   : Update status for Opportunity and Oppr_Documents
 * Throws        : <Any Exceptions/messages thrown by this class/triggers>
 * Calls         : <Any classes/utilities called by this class | None if it does not call>
 * Test Class    :
 *
 * Organization  : Rainmaker Associates LLC
 * @RestResource(urlMapping='/rest/SubmitApplication/*')
 * Revision History:-
 * Version  Date           Author           WO#         Description of Action
 * 1.0      01/11/2012     Milligan                      Initial Version
 *
 *******************************************************************************************************************
 **/
public with sharing class OppOppDocUpdateStatus {

	public static void updateFromOppDocument(List <Oppr_Document__c> odc) {

		List <String> oppsToSearch = new List <String> ();

		for (Oppr_Document__c oppDoc: odc) {
			//Get all the opportunities
			oppsToSearch.add(oppDoc.opportunity__c);
		}

		updateOppStatusToContractAvailable(oppsToSearch);

	}

	public static void updateFromOpp(List <String> oppsToSearch) {

		updateOppStatusToContractAvailable(oppsToSearch);
	}

	//Rule 7 Changing from "Reviewing Documents" to "Contract Available"
	//If the Contract Document is available and attached to the Opportunity Documents, the status of the Application/Opportunity 
	//should changed to be "Contract Available"
	public static void updateOppStatusToContractAvailable(List <String> oppIds) {

		List <Oppr_Document__c> oppContractDocs = new List <Oppr_Document__c> ();

		oppContractDocs = [SELECT
						   	id, status__c, opportunity__c, opportunity__r.Status__c
						   FROM
							Oppr_Document__c
						   WHERE
							opportunity__r.Status__c = 'Reviewing Documents'
						   AND
							document_name__c = 'Contract'
						   AND
							opportunity__c IN: oppIds];

		if (!oppContractDocs.IsEmpty()) {

			List <Opportunity> oppToUpdate = new List <Opportunity> ();
			List <String> oppIdsToSearch = new List <String> ();
			List <String> oppDocIds = new List <String> ();
			Map <String, String> attachmentMap = new Map <String, String> ();

			// Loop thru docs that are Contract Documents and opportunity status is reviewing document
			// add opportunity doc  id  to list to retrieve attachments
			for (Oppr_Document__c odc: oppContractDocs) {
				oppDocIds.add(odc.id);
			}

			/*List<Attachment> attachmentList = new List<Attachment>([SELECT ParentID, name FROM Attachment WHERE  parentID IN : oppDocIds]);
        
            for(Attachment at: attachmentList){
            
                attachmentMap.put(at.parentId, at.name);    
            }
     */
			// loop the contract docs and see if attachment is available
			// add the opportunity id to the list of opportunities to update
			for (Oppr_Document__c odc: oppContractDocs) {

				//if(attachmentMap.containsKey(odc.id)){
				oppIdsToSearch.add(odc.opportunity__c);
				// }               
			}
			//if there are opportunities with status = 'Reviewing Documents' to update get them update status
			if (!oppIdsToSearch.IsEmpty()) {

				oppToUpdate = [SELECT id, status__c FROM Opportunity WHERE id IN: oppIdsToSearch];

				if (!oppToUpdate.IsEmpty()) {

					for (Opportunity opp: oppToUpdate) {
						opp.status__c = 'Contract Available';
					}

					update oppToUpdate;
				}
			}

		} //oppContractDocs.IsEmpty()

	}
}