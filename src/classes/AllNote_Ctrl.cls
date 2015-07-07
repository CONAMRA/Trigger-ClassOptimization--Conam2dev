public with sharing class AllNote_Ctrl {
	public Note__c objNote {get;set;}
	public transient list<NotesDetail> objNotesDetail {get;set;}
	public list< RecordTypeDetail> objRecordTypeDetail {get;set;}
	public list< selectOption> selectOptionRecordType {get;set;}
	public String selectedRecordType {get;set;}
	public String selectedRecordTypeForSearch {get;set;}
	public String searchText {get;set;}
	public map<String, String> recordTypeNameMap {get;set;}
	public String lastModifiedTime {get;set;}
	List<String> selectedNotesRT;
	public AllNote_Ctrl(ApexPages.StandardController controller) {

		objNote = new Note__c();
		objRecordTypeDetail = new list <RecordTypeDetail> ();
		selectedNotesRT = new List <String> {
				//'Sales Check List',
				'Processing Notes',
				//'Sales Notes to UW & Processing',
				'UW Notes to Processing/Risk Department',
				//'SA Internal Notes',
				'Pre Qual Notes',
				'Internal QC',
				'Internal UW Notes',
				'Third Party UW Notes',
				'UW Notes'
		};
		list <RecordType> allRecordsType = [SELECT
													Id, Name
											  FROM
													RecordType
										      WHERE
													Name IN: selectedNotesRT AND IsActive = true AND sobjectType = 'Note__c'];
		selectOptionRecordType = new list <selectOption> ();
		allRecordsType.sort();
		recordTypeNameMap = new map<String, String> ();
		for (RecordType rt: allRecordsType) {
			recordTypeNameMap.put(rt.Id, rt.Name);
			objRecordTypeDetail.add(new RecordTypeDetail(rt.Id, rt.Name));
			selectOptionRecordType.add(new selectOption(rt.Id, rt.Name));
		}
	}

	public pageReference onSearch() {
		try {
			objNotesDetail = new list<NotesDetail> ();
			/*if(searchText != null && searchText.Trim() != ''){
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,'No record Found!'));
                return null;
            }*/

			list<Note__c> allNotes = null;
			if ((selectedRecordTypeForSearch == null) && (searchText.trim() == '')) {
				allNotes = [SELECT 
								Id, Name, LastModifiedById, LastModifieddate, OwnerId,
							    RecordType.Name, RecordTypeId, Note_Content__c 
							FROM 
								Note__c
						    WHERE 
						    	opportunity__c = : apexpages.currentpage().getparameters().get('Id') 
						    ORDER BY
								LastModifieddate desc];
				for (Note__c no: allNotes) {
					system.debug(no.RecordTypeId + '>>>>>>>>>>>>>>>>>>>>>>' + selectedRecordTypeForSearch);
					lastModifiedTime = convertToLocalTime(no.LastModifieddate, no.LastModifiedById);
					objNotesDetail.add(new NotesDetail(no.Id, getAllUsers.get(no.LastModifiedById).Name, '', lastModifiedTime, new Note__c(Note_Content__c = no.Note_Content__c), recordTypeNameMap.get(no.RecordTypeId))); //to do getAllUsers.get(no.LastModifiedById).FullPhotoUrl
				}
				objNote = new Note__c();
				return null;
			}
			if ((selectedRecordTypeForSearch != null) && (searchText.trim() == '')) {
				allNotes = [SELECT 
								Id, Name, LastModifiedById, LastModifieddate, OwnerId, RecordType.Name,
							    RecordTypeId, Note_Content__c
							FROM 
								Note__c 
							WHERE 
								opportunity__c = : ApexPages.CurrentPage().getParameters().get('Id') 
							ORDER BY 
								LastModifieddate desc];
				for (Note__c no: allNotes) {
					if (selectedRecordTypeForSearch == no.RecordTypeId) {
						lastModifiedTime = convertToLocalTime(no.LastModifieddate, no.LastModifiedById);
						objNotesDetail.add(new NotesDetail(no.Id, getAllUsers.get(no.LastModifiedById).Name, '', lastModifiedTime, new Note__c(Note_Content__c = no.Note_Content__c), recordTypeNameMap.get(no.RecordTypeId))); //getAllUsers.get(no.LastModifiedById).FullPhotoUrl
					}
				}
				objNote = new Note__c();
				return null;
			}
			String searchingText = '*' + String.escapeSingleQuotes(searchText) + '*';

			if (selectedRecordTypeForSearch != null && selectedRecordTypeForSearch != '') {
				allNotes = [FIND:
								searchingText IN ALL FIELDS RETURNING Note__c(Id, Name, LastModifiedById, LastModifieddate, 
								OwnerId, RecordType.Name, RecordTypeId, Note_Content__c
							WHERE 
								opportunity__c = : apexpages.currentpage().getparameters().get('Id') AND RecordTypeId = : selectedRecordTypeForSearch 
							ORDER BY 
								LastModifieddate desc)].get(0);
			} else {
				allNotes = [FIND: 
								searchingText IN ALL FIELDS RETURNING Note__c(Id, Name, LastModifiedById, LastModifieddate, OwnerId, RecordType.Name, RecordTypeId, Note_Content__c 
							WHERE 
								opportunity__c = : apexpages.currentpage().getparameters().get('Id') 
							ORDER BY 
								LastModifieddate desc)].get(0);
			}
			for (Note__c no: allNotes) {

				lastModifiedTime = convertToLocalTime(no.LastModifieddate, no.LastModifiedById);
				objNotesDetail.add(new NotesDetail(no.Id, getAllUsers.get(no.LastModifiedById).Name, '', lastModifiedTime, new Note__c(Note_Content__c = no.Note_Content__c), recordTypeNameMap.get(no.RecordTypeId))); //getAllUsers.get(no.LastModifiedById).FullPhotoUrl
			}
			objNote = new Note__c();
		} catch (Exception ex) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error: Please contact your Administrator!' + ex));
		}
		return null;
	}

	//added functions
	public String convertToLocalTime(datetime param_time, Id UserID) {
		//convert to string to format datetime to local parameter
		// User u = [SELECT ID, TimeZoneSidKey FROM User WHERE ID = :UserID];
		System.debug('param_time......' + param_time);
		System.debug('UserID......' + UserID);


		//Boolean contains = userMap.containsKey(UserID);

		//System.debug('..contains...'+contains);
		//User user;
		if (getAllUsers.containsKey(UserID)) {
			DateTime utcTime = param_time;
			//user = getAllUsers.get(UserID);
			//System.debug('TimeZoneSidKey.....'+user.TimeZoneSidKey);
			string var_time = utcTime.format('MM/dd/yyyy hh:mm:ss a', getAllUsers.get(UserID).TimeZoneSidKey);
			return var_time; //return datetime.valueOf(var_time);
		}

		return param_time.format('MM/dd/yyyy hh:mm:ss a');
	}


	public map<Id, User> getAllUsers {
		get {
			if (getAllUsers == null) {
				getAllUsers = new map<Id, User> ([SELECT 
														Id, Name, TimeZoneSidKey 
													FROM 
														User 
													where 
														isActive = true]); //FullPhotoUrl
			}
			return getAllUsers;
		}
		private set;
	}

	public pagereference createNote() {
		try {
			Note__c objNote = new Note__c(Note_Content__c = objNote.Note_Content__c, RecordTypeId = selectedRecordType, Opportunity__c = apexpages.currentpage().getparameters().get('Id'));
			insert objNote;
			List<RecordType> lRecordType = [SELECT
													Name
												FROM
													RecordType
												WHERE
													Id = : selectedRecordType AND IsActive = true AND sobjectType = 'Note__c'];
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Confirm, 'Note Created for the ' + lRecordType.get(0).Name + ' Record Type'));
		} catch (Exception e) {
			ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Error: Please contact your Administrator! ' + e));
		}
		searchText = '';
		return null;
	}

	public class RecordTypeDetail {
		public String oppId {get;set;}
		public String recordTypeName {get;set;}
		public String recordTypeId {get;set;}
		
		public RecordTypeDetail(String recordTypeId, String recordTypeName) {
			this.recordTypeId = recordTypeId;
			this.recordTypeName = recordTypeName;
			this.oppId = ApexPages.Currentpage().getParameters().get('Id');
		}
	}
	/*Note Detail Wrapper*/
	public class NotesDetail {
		public String noteId {get;set;}
		public Note__c noteValues {get;set;}
		public String latestNoteValues {get;set;}
		public String lastModifiedBy {get;set;}
		public String profileImageUrl {get;set;}
		//public DateTime lastModifiedDateTime{get;set;}
		public String lastModifiedDateTime {get;set;}
		public String recordTypeName {get;set;}

		public NotesDetail(String noteId, String lastModifiedBy, String profileImageUrl, String lastModifiedDateTime, Note__c noteValues, String recordTypeName) {
			this.noteId = noteId;
			this.profileImageUrl = profileImageUrl;
			this.lastModifiedDateTime = lastModifiedDateTime;
			this.lastModifiedBy = lastModifiedBy;
			this.noteValues = noteValues;
			this.recordTypeName = recordTypeName;
		}
	}
}