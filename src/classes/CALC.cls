global class CALC {

	// Added 9/4/2014, CY: Allow for skipping callouts during testing
	public static Boolean isTesting = false;

	public static void apexTesting() {
		// Enables "test" mode to skip callouts
		isTesting = true;
	}

	@future(callout = true)
	public static void partnerAccountRequest(String accountId) {
		List <String> URLs = new List <String> ();
		URLs.add('https://calc.rapidadvance.com/SFCompany/' + accountId);
		SendRequest(URLs);
	}

	@future(callout = true)
	public static void campaignRequest(String campaignId) {
		List <String> URLs = new List <String> ();
		URLs.add('https://calc.rapidadvance.com/SFCampaign/' + campaignId);
		SendRequest(URLs);
	}

	@future(callout = true)
	public static void opportunityRequest(String oppId) {
		List <String> URLs = new List <String> ();
		URLs.add('https://calc.rapidadvance.com/SFOpportunity/' + oppId);
		SendRequest(URLs);
	}

	public static void sendRequest(List <String> URls) {
		if (isTesting == false) {
			for (String url: URLs) {
				Http http = new Http();
				HttpRequest request = new HttpRequest();
				request.setEndpoint(url);
				request.setMethod('GET');
				HttpResponse response = http.send(request);
			}
		} // end if isTesting
	}

}