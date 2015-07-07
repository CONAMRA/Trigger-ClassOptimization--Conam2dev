public with sharing class RADoc_Ctrl {

	public Quote raDoc {get;set;}
	public Opportunity quoteOpp {get;set;}
		
	String oppId;
	String cancelURL;

	public RADoc_Ctrl(ApexPages.StandardController stdController) {
		oppId = '';
		String raDocId = ApexPages.currentPage().getParameters().get('Id');
		cancelURL = ApexPages.currentPage().getParameters().get('retURL');
		System.debug('radocId.....' + radocId);

		if (radocId != null && radocId.trim() != '') {
			list <Quote> raDocList = (List <Quote> ) Database.Query(genDynamicQuery(radocId));

			if (raDocList != null && !raDocList.isEmpty()) {
				raDoc = raDocList.get(0);
				oppId = raDoc.OpportunityId;
			} else {
				ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Invalid Customer Survey Id'));
				raDoc = new Quote();
				/*objMerchant.OpportunityId = OppId;*/
			}
		} else {
			raDoc = new Quote();
			String returnURL = ApexPages.currentPage().getParameters().get('retURL');

			if (returnURL != null && returnURL.trim() != '') {
				Integer startindex = returnURL.indexOf('oppId=');

				if (startindex == -1) {
					oppId = returnURL.subString(1, returnURL.length());
				} else {
					Integer nextParam = returnURL.indexOf('&', startindex);
					if (nextparam == -1) {
						oppId = returnURL.subString(startindex + 'oppId='.length());

					} else {
						oppId = returnURL.subString(startindex + 'oppId='.length(), nextparam);
						System.debug('oppId....' + oppId);

					}
				}
			}
			if (oppId != null && oppId.trim() != '') {
				// added line
				String oppId = apexpages.currentpage().getparameters().get('oppId');
				System.debug('oppId....' + oppId + '....radocId...' + radocId);
				RADoc.OpportunityId = oppId;
			}
			/*objMerchant.OpportunityId = OppId;
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'Opportunity Id Does not Exist!'));*/
		}

		if (oppId != null && oppId.trim() != '') {
			List<Opportunity> oppList = [SELECT 
											Id, Name 
										FROM 
											Opportunity 
										WHERE 
											Id = : oppId LIMIT 1];
			if (!oppList.isEmpty()) {
				quoteOpp = oppList.get(0);
			}
		}
	}

	public String genDynamicQuery(String radocId) {
		if (radocId != null) {
			String fieldSets = '';
			for (SObjectField field: Quote.SObjectType.getDescribe().fields.getMap().values()) {
				fieldSets = fieldSets + field.getDescribe().getName() + ',';
			}

			if (fieldSets.length() > 0) {
				fieldSets = fieldSets.subString(0, fieldSets.length() - 1);
				String dynamicQuery = 'SELECT ' + fieldSets + ' FROM Quote WHERE Id=:radocId';
				return dynamicQuery;
			}
		}
		return null;
	}

	public PageReference cancel() {
		if (cancelURL != null && cancelURL.trim() != '') {
			return new PageReference(cancelURL);
		}
		return null;
	}
	/*
    public PageReference cancel() {
        PageReference oppPage = new PageReference('/apex/RADocsRelatedList?Id='+oppId +'&oppId=' + oppId);
        return oppPage;
    }
*/
	public PageReference save() {
		try {
			if(raDoc != Null){
				upsert raDoc;
				PageReference oppPage = new PageReference('/apex/RADocsRelatedList?Id=' + RADoc.OpportunityId + '&oppId=' + RADoc.OpportunityId);
				return oppPage;
			}
			//ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.confirm,'Saved Successfully!'));
		} catch (Exception e) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, e.getMessage()));
		}
		return null;
	}

}