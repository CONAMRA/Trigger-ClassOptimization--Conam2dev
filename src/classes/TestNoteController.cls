@isTest
public class TestNoteController {

	static testMethod void runTestCase() {

		Test.startTest();
		CALC.ApexTesting();
		RecordType rc = new RecordType(name = 'Approved');
		Account acc = TestUtils.createAccount();
		Campaign cam = TestUtils.createCampaign();
		Opportunity opp = TestUtils.createOpportunity(acc, cam);
		Note__c noteObj = TestUtils.createNote(opp);

		List <User> u = [SELECT Id, Name, TimeZoneSidKey FROM User WHERE isActive = true]; //FullPhotoUrl
		ApexPages.currentPage().getParameters().put('Id', noteObj.id);
		ApexPages.StandardController sc = new ApexPages.standardController(noteObj);
		NoteController cntrl = new NoteController();

		List <String> selectedNotesRT = new List <String> {
			'Approved With Conditions', 
			'Archived Credit Bureau', 
			'Business Bankruptcies', 
			'Underwriting', 
			'Funding', 
			'Individual Bankrupties', 
			'Internal QC', 
			'Internal UnderWriting', 
			'Pre Qual', 
			'Pre Qual Loss', 
			'Prefunding Call', 
			'Processing', 
			'Quancor', 
			'Renewal', 
			'Risk Alert', 
			'Risk Notes', 
			'SA Internal', 
			'Sales Check List', 
			'Sales to UW Processing', 
			'Site', 
			'Split change', 
			'UW Processing'
		};
		
		list <RecordType> allRecordsType = [SELECT Id, Name FROM RecordType where Name IN: selectedNotesRT AND IsActive = true];
		allRecordsType.sort();
		ApexPages.currentPage().getParameters().put('rtId', allRecordsType[0].id);

		ApexPages.StandardController noteController = new ApexPages.StandardController(noteObj);
		NoteController nc = new NoteController(noteController);
		NoteController nc1 = new NoteController();

		for (RecordType rt: allRecordsType) {

			NoteController.RecordTypeDetail tr = new NoteController.RecordTypeDetail(rt.Id, rt.Name);
		}

		nc.createnote();

		string var_time = System.now().format('MM/dd/yyyy hh:mm:ss a', u[0].TimeZoneSidKey);
		cntrl.convertToLocalTime(System.now(), u[0].id);
		cntrl.editNote();
		cntrl.deleteNote();
		NoteController.NotesDetail notedtl = new NoteController.NotesDetail(noteObj.id, noteObj, u[0].name, '', var_time, noteObj.ownerId); //u[0].FullPhotoUrl
		Test.stopTest();
	}
}