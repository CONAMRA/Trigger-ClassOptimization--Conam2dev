public with sharing class NoteTriggerHandlerCls {
    
    List<Id> TestOppId = new  List<Id>();
    string var_time {get; set;}
    List<Note__c> noteList = new List<Note__c>();
    List<Note__c> newnoteList = new List<Note__c>(); 
    List<Note__c> newnoteListD = new List<Note__c>(); 
    Note__c testNote = null; 

    public map<Id,User> getAllUsers{
        get{
            if(getAllUsers == null){
                //todo FullPhotoUrl
                getAllUsers = new map<Id,User>([SELECT Id,Name,TimeZoneSidKey FROM User /*where isActive= true*/]);
            }
        return getAllUsers;
        }private set;
    }
    
    public void updateNoteFieldsOnOppInsertUpdate(list<Note__c> noteList2) {
        
        newnoteList = [SELECT Id, Name, Opportunity__c, RecordType.name, Note_Content__c FROM Note__c WHERE ID =: noteList2[0].Id];
        testNote = newnoteList[0];
        for(Note__c nt : noteList2){
            TestOppId.add(nt.Opportunity__c);
        }
        List<Opportunity> oppList = [SELECT 
                                         Id, Name, SA_Internal_Notes__c, Pre_Qual_Notes__c, Internal_QC_Notes__c, 
                                         Internal_Underwriting_Notes__c, Processing_Notes__c, Underwriting_Notes__c, 
                                         Third_Party_UW_Notes__c, UW_Notes_to_Processing_Risk_Department__c 
                                     FROM 
                                        Opportunity 
                                     WHERE 
                                        Id IN: TestOppId];
        if(null!=oppList)
        if(!oppList.isEmpty())
        if( testNote.Opportunity__c == oppList[0].Id ){ 
            noteList = [SELECT 
                            Id, Name, Opportunity__c, RecordType.name, Note_Content__c, 
                            LastModifiedBy.Name, LastModifiedDate 
                        FROM 
                            Note__c 
                        WHERE 
                            Opportunity__c IN: TestOppId AND RecordType.Name=:testNote.RecordType.Name 
                        ORDER BY 
                            LastModifiedDate DESC ];    
            if(testNote.RecordType.Name == 'SA Internal Notes'){
                System.debug('Ajay >>>>> '+testNote.RecordType.Name );
                oppList[0].SA_Internal_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].SA_Internal_Notes__c == '')
                        oppList[0].SA_Internal_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                      oppList[0].SA_Internal_Notes__c = oppList[0].SA_Internal_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Pre Qual Notes'){
                oppList[0].Pre_Qual_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Pre_Qual_Notes__c == '')
                        oppList[0].Pre_Qual_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Pre_Qual_Notes__c = oppList[0].Pre_Qual_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Internal QC'){
                oppList[0].Internal_QC_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Internal_QC_Notes__c == '')
                        oppList[0].Internal_QC_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Internal_QC_Notes__c = oppList[0].Internal_QC_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Internal UW Notes'){
                oppList[0].Internal_Underwriting_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Internal_Underwriting_Notes__c == '')
                        oppList[0].Internal_Underwriting_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Internal_Underwriting_Notes__c = oppList[0].Internal_Underwriting_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Processing Notes'){
                oppList[0].Processing_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Processing_Notes__c == '')
                        oppList[0].Processing_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Processing_Notes__c = oppList[0].Processing_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'UW Notes'){
                oppList[0].Underwriting_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Underwriting_Notes__c == '')
                        oppList[0].Underwriting_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Underwriting_Notes__c = oppList[0].Underwriting_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Third Party UW Notes'){
                oppList[0].Third_Party_UW_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Third_Party_UW_Notes__c == '')
                        oppList[0].Third_Party_UW_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Third_Party_UW_Notes__c = oppList[0].Third_Party_UW_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }   
            if(testNote.RecordType.Name == 'UW Notes to Processing/Risk Department'){
                oppList[0].UW_Notes_to_Processing_Risk_Department__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].UW_Notes_to_Processing_Risk_Department__c == '')
                        oppList[0].UW_Notes_to_Processing_Risk_Department__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].UW_Notes_to_Processing_Risk_Department__c = oppList[0].UW_Notes_to_Processing_Risk_Department__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            try{
                if(oppList.size() > 0){
                    update oppList;
                }
            }
            catch(Exception e){}
        }
    }
    
    public void chkupdateNoteFieldsOnOppDelete (list<Note__c> noteListOld) {
        
        newnoteListD = [SELECT Id, Name, Opportunity__c, RecordType.name, Note_Content__c FROM Note__c WHERE ID =: noteListOld[0].Id];
        testNote = newnoteListD [0];
        for(Note__c nt : noteListOld){
            TestOppId.add(nt.Opportunity__c);
        }
        List<Opportunity> oppList = [SELECT 
                                         Id, Name, SA_Internal_Notes__c, Pre_Qual_Notes__c, Internal_QC_Notes__c, 
                                         Internal_Underwriting_Notes__c, Processing_Notes__c, Underwriting_Notes__c, 
                                         Third_Party_UW_Notes__c, UW_Notes_to_Processing_Risk_Department__c 
                                     FROM 
                                        Opportunity 
                                     WHERE 
                                        Id IN: TestOppId];
        if(null!=oppList)
        if(!oppList.isEmpty())
        if( testNote.Opportunity__c == oppList[0].Id ){ 
            noteList = [SELECT 
                            Id, Name, Opportunity__c, RecordType.name, Note_Content__c, LastModifiedBy.Name, 
                            LastModifiedDate 
                        FROM 
                            Note__c 
                        WHERE 
                            Opportunity__c IN: TestOppId AND RecordType.Name=:testNote.RecordType.Name AND ID<>:newnoteListD[0].Id  
                        ORDER BY 
                            LastModifiedDate DESC ];
            if(testNote.RecordType.Name == 'SA Internal Notes'){
            oppList[0].SA_Internal_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].SA_Internal_Notes__c == '')
                        oppList[0].SA_Internal_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].SA_Internal_Notes__c = oppList[0].SA_Internal_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Pre Qual Notes'){
                oppList[0].Pre_Qual_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Pre_Qual_Notes__c == '')
                        oppList[0].Pre_Qual_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Pre_Qual_Notes__c = oppList[0].Pre_Qual_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Internal QC'){
                oppList[0].Internal_QC_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Internal_QC_Notes__c == '')
                        oppList[0].Internal_QC_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Internal_QC_Notes__c = oppList[0].Internal_QC_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Internal UW Notes'){
                oppList[0].Internal_Underwriting_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Internal_Underwriting_Notes__c == '')
                        oppList[0].Internal_Underwriting_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Internal_Underwriting_Notes__c = oppList[0].Internal_Underwriting_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Processing Notes'){
                oppList[0].Processing_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Processing_Notes__c == '')
                        oppList[0].Processing_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Processing_Notes__c = oppList[0].Processing_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'UW Notes'){
                oppList[0].Underwriting_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Underwriting_Notes__c == '')
                        oppList[0].Underwriting_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Underwriting_Notes__c = oppList[0].Underwriting_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'Third Party UW Notes'){
                oppList[0].Third_Party_UW_Notes__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].Third_Party_UW_Notes__c == '')
                        oppList[0].Third_Party_UW_Notes__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].Third_Party_UW_Notes__c = oppList[0].Third_Party_UW_Notes__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            if(testNote.RecordType.Name == 'UW Notes to Processing/Risk Department'){
                oppList[0].UW_Notes_to_Processing_Risk_Department__c = '';
                for(Note__c testno : noteList){
                    var_time = testno.LastModifiedDate.format('MM/dd/yyyy hh:mm:ss a',getAllUsers.get(testno.LastModifiedById).TimeZoneSidKey); 
                    if(oppList[0].UW_Notes_to_Processing_Risk_Department__c == '')
                        oppList[0].UW_Notes_to_Processing_Risk_Department__c = testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                    else
                        oppList[0].UW_Notes_to_Processing_Risk_Department__c = oppList[0].UW_Notes_to_Processing_Risk_Department__c + '\n' +  testno.LastModifiedBy.Name + ' : ' + var_time + ' : ' + testno.Note_Content__c;
                }
            }
            try{
                if(oppList.size() > 0){
                    update oppList;
                }
            }   
            catch(Exception e){}
        }
    }
}