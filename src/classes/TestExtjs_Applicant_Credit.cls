@isTest 
private class TestExtjs_Applicant_Credit {
    static testMethod void extjs_Applicant_Credit_UnitTest() {
    	CALC.apexTesting();
        Account acc = TestUtils.createAccount();
        Additional_Locations__c  aloc = TestUtils.createAdditionalLocation(acc);
        
        Extjs_Applicant_Credit.describeFields('Additional_Locations__c', new List<String>{'DBA_Name__c','Street__c','City__c','State__c','Postal_Code__c','Phone__c','Fax__c','Landlord__c','Landlord_Phone__c','Time_Remaining_on_Lease__c'});
        Extjs_Applicant_Credit.QueryObj queryObj = new Extjs_Applicant_Credit.QueryObj( );
        queryObj.sobjname = 'Additional_Locations__c';
        queryObj.fields = 'DBA_Name__c,Street__c,City__c,State__c,Postal_Code__c,Phone__c,Fax__c,Landlord__c,Landlord_Phone__c,Time_Remaining_on_Lease__c';
        queryObj.parentFieldName = 'Account__c';
        queryObj.oppId = acc.Id;
        queryObj.start = 0;
        queryObj.recordCount = 10;
        queryObj.sortParams = new List<Map<String, String>>();
        Map<String, String> paramMap = new Map<String, String>{'direction' => 'ASC', 'property' => 'DBA_Name__c'};
        queryObj.sortParams.add(paramMap );
        Extjs_Applicant_Credit.query(queryObj);
        
        Extjs_Applicant_Credit.CRUDData crudObj = new  Extjs_Applicant_Credit.CRUDData();
        crudObj.sobjname = 'Additional_Locations__c';
        crudObj.fields = 'DBA_Name__c,Street__c,City__c,State__c,Postal_Code__c,Phone__c,Fax__c,Landlord__c,Landlord_Phone__c,Time_Remaining_on_Lease__c';
        crudObj.oppId = acc.Id;
        crudObj.parentFieldName = 'Account__c';
        List<SObject> sobjList = new List<SObject>();
        sobjList.add(aloc );
        Map<String, String> fieldMap = new Map<String, String>{'Id' => aloc.Id, 'Street__c' => aloc.Street__c, 'Phone__c' => aloc.Phone__c,'State__c' => aloc.State__c, 'Time_Remaining_on_Lease__c' => aloc.Time_Remaining_on_Lease__c};
        crudObj.records = new List<Map<String, String>>{fieldMap};
        
        Extjs_Applicant_Credit.refreshObjects(crudObj, sobjList);
        Extjs_Applicant_Credit.create(crudObj);
        Extjs_Applicant_Credit.updat(crudObj);
        Extjs_Applicant_Credit.CRUDResponse crdrespose = Extjs_Applicant_Credit.delet(crudObj);
    }
}