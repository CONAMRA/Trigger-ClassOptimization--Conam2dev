@isTest
public with sharing class TestAllNote_ctrl {

	public static testMethod void TestAllNote_ctrl_Method() {

		CALC.ApexTesting();
		Test.startTest();
		RecordType rc = new RecordType(name = 'Approved');

		Account acc = TestUtils.createAccount();
		Campaign cam = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cam);
		Note__c noteObj = TestUtils.createNote(opp);

		ApexPages.StandardController sc = new ApexPages.standardController(noteObj);
		AllNote_Ctrl cntrl = new AllNote_ctrl(sc);
		List<User> u = [SELECT
                        	Id, Name, TimeZoneSidKey
                        FROM
                        	User
                        WHERE
                        	isActive = true]; //FullPhotoUrl
		ApexPages.currentPage().getParameters().put('Id', opp.id);
		ApexPages.currentPage().getParameters().put('rtId', rc.id);


		List<String> selectedNotesRT = new List<String> {
			'Approved With Conditions', 'Archived Credit Bureau',
				'Business Bankruptcies', 'Underwriting', 'Funding',
				'Individual Bankrupties', 'Internal QC',
				'Internal UnderWriting', 'Pre Qual Notes',
				'Pre Qual Loss', 'Prefunding Call', 'Processing Notes',
				'Quancor', 'Renewal', 'Risk Alert', 'Risk Notes',
				'SA Internal Notes', 'Sales Check List',
				'Sales to UW Processing', 'Site',
				'Split change', 'UW Processing', 'Internal UW Notes',
				'UW Notes', 'Third Party UW Notes',
				'UW Notes to Processing/Risk Department'
		};

		list<RecordType> allRecordsType = [SELECT
                                            	Id, Name
                                            FROM
                                            	RecordType
                                            WHERE
                                            	Name IN: selectedNotesRT AND IsActive = true];
		//list<selectOption> selectOptionRecordType=new list<selectOption>();
		allRecordsType.sort();
		for (RecordType rt: allRecordsType) {
			AllNote_Ctrl.RecordTypeDetail rtd = new AllNote_Ctrl.RecordTypeDetail(rt.Id, rt.Name);
			//cntrl.selectOptionRecordType (new SelectOption(rt.Id,rt.Name));
			//  List<SelectOption> selOpts=cntrl.selectOptionRecordType(rt.Id,rt.Name);
			cntrl.searchText = 'ancd';
		}
		cntrl.onSearch();
		cntrl.createNote();
		cntrl.selectedRecordTypeForSearch = null;
		cntrl.searchText = '';
		cntrl.onSearch();
		cntrl.selectedRecordTypeForSearch = 'test';
		cntrl.onSearch();
		string var_Time = System.now().format('MM/dd/yyyy hh:mm:ss a', u[0].TimeZoneSidKey);
		AllNote_Ctrl.NotesDetail notedtl = new AllNote_Ctrl.NotesDetail(noteObj.id, u[0].name, '', var_time, noteObj, 'Approved'); //u[0].FullPhotoUrl
		cntrl.convertToLocalTime(System.now(), u[0].id);

		// PageReference PageRef = Page.success;
		//Test.setCurrentPageReference(PageRef);
		for (RecordType rt: allRecordsType) {
			if (rt.Name == 'Pre Qual Notes' || rt.Name == 'Internal QC' || rt.Name == 'SA Internal Notes' || rt.Name == 'Processing Notes' || rt.Name == 'Internal UW Notes' || rt.Name == 'UW Notes') {

				Note__c noteObj1 = new Note__c(Opportunity__c = opp.Id, RecordTypeId = rt.Id);
				insert noteObj1;

			}
		}
		Test.stopTest();
	}

}