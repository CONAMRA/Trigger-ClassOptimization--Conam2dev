@isTest
public with sharing class TestFormulaFieldUtiity {

public static TestMethod void TestFormulaFieldUtility_Method(){
    CALC.ApexTesting();
    Account acc= new Account();
    acc.Name='test1';
    acc.BusinessType__c='Auto Service';
    Insert acc;
    
    Campaign camp=new Campaign();
    camp.Name= 'test1campaign';
    camp.Type='Internet';
    Insert camp;
    
    
    Opportunity opp=new Opportunity();
    opp.AccountId=acc.Id;
    opp.ForecastCategoryName='Pipeline';
    opp.Name='test1opportunity';
    opp.LeadSource='A001';
    opp.CampaignID=camp.Id;
    opp.CloseDate=System.Today();
    opp.StageName='Prospecting';
    opp.Current_Processor__c='Alpha Card';
   
    Insert opp;
    
   
    try{
    Merchant__c Merchnt = FormulaFieldUtility.objMerchant;
       }
        catch(Exception ex)   {   ApexPages.Message msg=new ApexPages.Message(ApexPages.Severity.Error,'An exception occurred');    ApexPages.addMessage(msg);  }
        
    Apexpages.currentpage().getparameters().put('oppId',opp.Id);
    /* ========================== Added Code ============== */
    
    String accountDatabaseEntryDaysCount = FormulaFieldUtility.accountDatabaseEntryDaysCount;
    String accountDatabaseEntryFlag = FormulaFieldUtility.accountDatabaseEntryFlag;
    String accRollupApproval = FormulaFieldUtility.accRollupApproval;
    
    /* ========= Added Code Ends here =========== */
    String TMWebDeclineReasons = FormulaFieldUtility.TMWebDeclineReasons;
    String totalDaysForDataEntry = FormulaFieldUtility.totalDaysForDataEntry;
    String totalDaysToDecision = FormulaFieldUtility.totalDaysToDecision;
    String totalDaysInQQAndUnderwriting = FormulaFieldUtility.totalDaysInQQAndUnderwriting;
    String totalDaysToRepay = FormulaFieldUtility.totalDaysToRepay;
    String typeOfBusiness = FormulaFieldUtility.typeOfBusiness;
    //String uCCBusinessStructure = FormulaFieldUtility.uCCBusinessStructure;
    //String mercIntDate = FormulaFieldUtility.merchantInterviewCompleted;
    Decimal applicant1PrevFICO = FormulaFieldUtility.applicant1PrevFICO;
    Decimal ccApplicant1PrevFICO = FormulaFieldUtility.ccApplicant1PrevFICO;
    Contact c  = FormulaFieldUtility.objContact;
    /*opp.Data_Entry_Date__c = Datetime.now();
    opp.Deal_Ready_For_Processing__c =  Datetime.now();
    opp.Decision_Date__c = Datetime.now();
    update opp;
    
    TMWebDeclineReasons = FormulaFieldUtility.TMWebDeclineReasons;
    totalDaysForDataEntry = FormulaFieldUtility.totalDaysForDataEntry;
    totalDaysToDecision = FormulaFieldUtility.totalDaysToDecision;
    totalDaysInQQAndUnderwriting = FormulaFieldUtility.totalDaysInQQAndUnderwriting;
    totalDaysToRepay = FormulaFieldUtility.totalDaysToRepay;
    typeOfBusiness = FormulaFieldUtility.typeOfBusiness;
    uCCBusinessStructure = FormulaFieldUtility.uCCBusinessStructure;
    mercIntDate = FormulaFieldUtility.merchantInterviewCompleted;
    applicant1PrevFICO = FormulaFieldUtility.applicant1PrevFICO;
    ccApplicant1PrevFICO = FormulaFieldUtility.ccApplicant1PrevFICO;*/
   
    FormulaFieldUtility ffu=new FormulaFieldUtility();
   
    FormulaFieldUtility.objMerchant=null;
    FormulaFieldUtility.opportunity = null;
    
    FormulaFieldUtility.objMerchant=null;
    FormulaFieldUtility.objContact=null;
    //FormulaFieldUtility.objUnderwriting=null;
    //FormulaFieldUtility.accountDatabaseEntryDaysCount=System.Today();
    //system.assert(System.Today(),opp.Account_Database_Entry_Due_Date__c);
}
 

    public static TestMethod void TestFormulaFieldUtility_Method2(){
        CALC.ApexTesting();
        
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        Contact c = new Contact();
        c.Principal_2_First_Name__c = 'test1';
        c.Principal_2_Last_Name__c = 'test2';
        c.AccountId = acc.Id;
        c.LastName = 'test';
        insert c;
        Merchant__c Merchnt= TestUtils.createMerchant(opp);    
        
        Apexpages.currentpage().getparameters().put('oppId',opp.Id);    
        c  = FormulaFieldUtility.objContact;
        Merchnt = FormulaFieldUtility.objMerchant;
        
        String value1 = FormulaFieldUtility.approvalProcessTime;
        
        String value2 = FormulaFieldUtility.approvedFlag;
        String value3 = FormulaFieldUtility.approvedAmount;
        String value4 = FormulaFieldUtility.bakerFlag;
        String value5 = FormulaFieldUtility.beginActivityMonitoringDaysCount;
        String value6 = FormulaFieldUtility.beginActivityMonitoringFlag;
        String value7 = FormulaFieldUtility.businessInfo;
        String value8 = FormulaFieldUtility.businessOpenDate;
        String value9 = FormulaFieldUtility.businessPhone;
        String value10 = FormulaFieldUtility.calculatorVariance;
        String value11 = FormulaFieldUtility.campaignType;
        
    }
    
     public static TestMethod void TestFormulaFieldUtility_Method3(){
        CALC.ApexTesting();
        
        Account acc = TestUtils.createAccount();
        Campaign cm = TestUtils.createCampaign();
        Opportunity opp = TestUtils.createOpportunity(acc, cm);
        
        opp.Account_Database_Entry_Due_Date__c = Date.today();
        opp.Account_Database_Entry__c = Datetime.now();
        update opp;
        Apexpages.currentpage().getparameters().put('oppId',opp.Id);
        
        String value = FormulaFieldUtility.additionalSignerSSN;
        String value1 = FormulaFieldUtility.AE_PrimarySignerInfo;
     }
}