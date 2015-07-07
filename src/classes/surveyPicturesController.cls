public with sharing class surveyPicturesController {

	public Map<Id,String> attachmentUrlList {get; set;}  
    public integer noOfImages {get; set;}
    public String siteSurvey {get; set;}

	public surveyPicturesController() {
		
		try {
			noOfImages = 0;
			for (Site_Survey__c s: [SELECT 
										Id, Name, (SELECT Id, IsDeleted, SystemModstamp FROM Attachments)
									FROM 
										Site_Survey__c s 
									WHERE 
										Id = : ApexPages.currentPage().getParameters().get('Id') Limit 1]) {
										
				siteSurvey = s.Name;
				if (!s.Attachments.isEmpty()) {
					attachmentUrlList = new Map <Id, String> ();
					for (Attachment na: s.Attachments) {
						System.debug('na....' + na.Id);
						attachmentUrlList.put(na.Id, '/servlet/servlet.FileDownload?file=' + na.Id);
					}
				}
			}
			noOfImages = attachmentUrlList.size();
		} 
		catch (Exception ex) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error: Please contact your Administrator!'));
		}
	}

}