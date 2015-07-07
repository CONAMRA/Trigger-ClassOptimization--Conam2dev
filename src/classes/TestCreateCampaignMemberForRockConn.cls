@istest

public class TestCreateCampaignMemberForRockConn
{

    public static testmethod void runTestForRockConn()
    {
        
        PartnerNetworkConnection pnc = new PartnerNetworkConnection();
        pnc.connectionname = 'Rock Connections';
        pnc.ConnectionStatus = 'Accepted';
        //insert pnc;
        
        List<PartnerNetworkConnection> pncList=[select id,connectionname from PartnerNetworkConnection where id =: pnc.id];
        
        Lead lTemp=new Lead();
        CALC.ApexTesting();

        lTemp.Status='Calling - No Contact Made';
        lTemp.LeadSource='Radio';
        lTemp.Company='test company';
        lTemp.Phone='415789415';
        lTemp.Lastname='lastname'; 
        lTemp.RC_Lead_Type__c='RAFF';               
        insert lTemp;
   
        List<PartnerNetworkRecordConnection> lstShareRecords= new List<PartnerNetworkRecordConnection>();
        
        for(PartnerNetworkConnection network : pncList) {
        
        PartnerNetworkRecordConnection newrecord = new PartnerNetworkRecordConnection();
        
        newrecord.ConnectionId = network.Id;
        newrecord.LocalRecordId = lTemp.id;
       // newrecord.RelatedRecords = 'Lead';
        newrecord.SendClosedTasks = false;
        newrecord.SendOpenTasks = false;
        newrecord.SendEmails = false;
        
        lstShareRecords.add(newrecord);
        }
        //if (test.IsRunningTest()==false)
        //insert lstshareRecords;
        
        Campaign camp = new Campaign();
        camp.Name = 'testCamp';
        camp.Type= 'Lead Source';
        insert camp;
        
        CampaignByLeadType__c campType = new CampaignByLeadType__c();
        campType.Name = 'test CampaignByLeadType';
        campType.CampaignID__c = camp.Id;
     }
            

}