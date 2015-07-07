public with sharing class TotalImages {
	
	public String totalImage {get; set;}
	public String totalViewedImages {get; set;}
	Integer totalLeftImages;

	public totalImages(ApexPages.StandardController controller) {
		
		List <Attachment> att = [SELECT id FROM Attachment WHERE ParentId = : ApexPages.currentPage().getParameters().get('id')];
		List <Site_Survey__c> stSurvey = [SELECT 
										  	Viewing_Status__c 
										  FROM 
										  	Site_Survey__c 
										  WHERE 
										  	id = : ApexPages.currentPage().getParameters().get('id')];
		String viewedImg;

		if ((att.size() > 0) && (stSurvey.size() > 0)) {
			
			for (Site_Survey__c st: stSurvey) {
				
				if (st.Viewing_Status__c != null && st.Viewing_Status__c.trim() != '') {
					
					viewedImg = st.Viewing_Status__c;
					List <String> ls = viewedImg.split(',');
					totalLeftImages = (ls.size());
					totalLeftImages = [SELECT Count() FROM Attachment WHERE Id IN: ls];
				} 
				
				else {
					totalLeftImages = 0;
				}
			}
			
			totalImage = String.valueOf(att.size());
			System.debug('TotalLeftImages....' + totalLeftImages);
			totalViewedImages = (String.valueof(totalLeftImages));
		}
		 
		else {
			totalViewedImages = '0';
			totalImage = '0';
		}
	}

}