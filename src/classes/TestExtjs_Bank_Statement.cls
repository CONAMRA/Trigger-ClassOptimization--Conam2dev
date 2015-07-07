@isTest 
private class TestExtjs_Bank_Statement  {
    static testMethod void extjs_Bank_Statement_UnitTest() {
    
        Account acc = TestUtils.createAccount();
        Additional_Locations__c  aloc = TestUtils.createAdditionalLocation(acc);
        
        Extjs_Bank_Statement.describeFields('Additional_Locations__c', new List<String>{'DBA_Name__c','Street__c','City__c','State__c','Postal_Code__c','Phone__c','Fax__c','Landlord__c','Landlord_Phone__c','Time_Remaining_on_Lease__c'});
        Extjs_Bank_Statement.QueryObj queryObj = new Extjs_Bank_Statement.QueryObj( );
        queryObj.sobjname = 'Additional_Locations__c';
        queryObj.fields = 'DBA_Name__c,Street__c,City__c,State__c,Postal_Code__c,Phone__c,Fax__c,Landlord__c,Landlord_Phone__c,Time_Remaining_on_Lease__c';
        queryObj.parentFieldName = 'Account__c';
        queryObj.oppId = acc.Id;
        queryObj.start = 0;
        queryObj.recordCount = 10;
        queryObj.sortParams = new List<Map<String, String>>();
        Map<String, String> param1Map = new Map<String, String>{'direction' => 'ASC', 'property' => 'DBA_Name__c'};
        Map<String, String> param2Map = new Map<String, String>{'direction' => 'DESC', 'property' => 'Street__c'};
        
        queryObj.sortParams.add(param1Map );
        queryObj.sortParams.add(param2Map );
        Extjs_Bank_Statement.query(queryObj);
        
        Extjs_Bank_Statement.CRUDData crudObj = new  Extjs_Bank_Statement.CRUDData();
        crudObj.sobjname = 'Additional_Locations__c';
        crudObj.fields = 'DBA_Name__c,Street__c,City__c,State__c,Postal_Code__c,Phone__c,Fax__c,Landlord__c,Landlord_Phone__c,Time_Remaining_on_Lease__c';
        crudObj.oppId = acc.Id;
        crudObj.parentFieldName = 'Account__c';
        List<SObject> sobjList = new List<SObject>();
        sobjList.add(aloc );
        Map<String, String> fieldMap = new Map<String, String>{'Id' => aloc.Id, 'Street__c' => aloc.Street__c, 'Phone__c' => aloc.Phone__c};
        crudObj.records = new List<Map<String, String>>{fieldMap};
        
        Extjs_Bank_Statement.refreshObjects(crudObj, sobjList);
        Extjs_Bank_Statement.create(crudObj);
        Extjs_Bank_Statement.updat(crudObj);
        Extjs_Bank_Statement.CRUDResponse crdrespose = Extjs_Bank_Statement.delet(crudObj);
    }
    
    static testMethod void Extjs_Bank_Statement_UnitTest1() {
    
        Account acc = TestUtils.createAccount();
        Additional_Locations__c  aloc = TestUtils.createAdditionalLocation(acc);
        
        Extjs_Bank_Statement.describeFields('Additional_Locations__c', new List<String>{'DBA_Name__c','Street__c','City__c','State__c','Postal_Code__c','Phone__c','Fax__c','Landlord__c','Landlord_Phone__c','Time_Remaining_on_Lease__c'});
        Extjs_Bank_Statement.QueryObj queryObj = new Extjs_Bank_Statement.QueryObj( );
        queryObj.sobjname = 'Additional_Locations__c';
        queryObj.fields = 'DBA_Name__c,Street__c,City__c,State__c,Postal_Code__c,Phone__c,Fax__c,Landlord__c,Landlord_Phone__c,Time_Remaining_on_Lease__c';
        queryObj.parentFieldName = 'Account__c';
        queryObj.oppId = acc.Id;
        queryObj.start = 0;
        queryObj.recordCount = 210;
        queryObj.sortParams = new List<Map<String, String>>();
        Map<String, String> param1Map = new Map<String, String>{'direction' => 'ASC', 'property' => 'DBA_Name__c'};
        Map<String, String> param2Map = new Map<String, String>{'direction' => 'DESC', 'property' => 'Street__c'};
        
        queryObj.sortParams.add(param1Map );
        queryObj.sortParams.add(param2Map );
        Extjs_Bank_Statement.query(queryObj);
        
        Extjs_Bank_Statement.CRUDData crudObj = new  Extjs_Bank_Statement.CRUDData();
        crudObj.sobjname = 'Additional_Locations__c';
        crudObj.fields = 'DBA_Name__c,Street__c,City__c,State__c,Postal_Code__c,Phone__c,Fax__c,Landlord__c,Landlord_Phone__c,Time_Remaining_on_Lease__c';
        crudObj.oppId = acc.Id;
        crudObj.parentFieldName = 'Account__c';
        List<SObject> sobjList = new List<SObject>();
        sobjList.add(aloc);
        Map<String, String> fieldMap = new Map<String, String>{'Id' => aloc.Id, 'Street__c' => aloc.Street__c, 'Phone__c' => aloc.Phone__c};
        crudObj.records = new List<Map<String, String>>{fieldMap};
        
        Extjs_Bank_Statement.refreshObjects(crudObj, sobjList);
        Extjs_Bank_Statement.create(crudObj);
        Extjs_Bank_Statement.updat(crudObj);
        Extjs_Bank_Statement.CRUDResponse crdrespose = Extjs_Bank_Statement.delet(crudObj);
    }
}