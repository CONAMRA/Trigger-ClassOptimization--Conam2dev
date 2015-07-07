/**
*********************************************************************************************************************
* Module Name   : GetOffers Webservice
* Description   :  This method will  return opportunity with attatchment details
* Throws        : HTTP 400
* Calls         : NONE
* Test Class    :  GetContract_UnitTest Test Method
* 
* Organization  : Rainmaker Associates LLC
*
* Revision History:-
* Version  Date           Author           WO#         Description of Action
* 1.0      12/16/2012     MU               Initial Version
*******************************************************************************************************************
**/
 
@RestResource(urlMapping='/GetContract/*')
global with sharing class GetContract {
     
    @HttpGet
    global static String getContracts() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String ExternalId = RestContext.request.params.get('id');
        String Source_System = RestContext.request.params.get('SourceSystem');
        String attachments =null;
            System.debug('>>>> ExternalId'+ExternalId);
            System.debug('>>>> Source_System'+Source_System);
            
            if ('B2C'.equals(Source_System)) {
                Source_System = 'Biz2Credit';
            }
            
            if (!'Biz2Credit'.equals(Source_System)) {
                res.StatusCode  = 400;
                res.addHeader('Error','Invalid Source System!');
                return JSON.serialize(new AttachmentDetail('false','Invalid Source System!',null,null,null));
            }
            
            if(ExternalId != null && ExternalId.trim() != '') {
                list<Opportunity> objOpp;
                
               
                objOpp = [SELECT Source_System__c, External_ID__c, Status__c,
                                        (SELECT Id,Name, Additional_Notes__c, Description__c, Opportunity__c, Document_Name__c, Status__c 
                                        FROM Opprtunity_Documents__r where Document_Name__c = 'Contract') 
                                        FROM Opportunity WHERE External_ID__c =:ExternalId AND Source_System__c =:Source_System limit 1];
                      if((objOpp.size() > 0))
                      {
                        if(objOpp[0].Status__c != 'Contract Available')
                        {
                            res.StatusCode  = 400;
                            res.addHeader('Error','Application Error: No Contract found on this opportunity!');
                            return JSON.serialize(new AttachmentDetail('false','No Contract found on this opportunity!',null,null,null));
                        }
                      }                  
                                                
               
                
                if(objOpp.isEmpty() || ((!objOpp.isEmpty()) && objOpp.get(0).Opprtunity_Documents__r.isEmpty())) {
                    return JSON.serialize(new AttachmentDetail('false','Record Does Not Exist!',null,null,null));
                }else {                   
                    list<Oppr_Document__c> objOpprDocument = [Select Id,Description__c, 
                                                              (Select Id From Attachments) 
                                                              From Oppr_Document__c 
                                                              WHERE Id=:objOpp.get(0).Opprtunity_Documents__r.get(0).Id limit 1];
                        System.debug('objOpprDocument.......'+objOpprDocument.size());                                      
                    if(null!=objOpprDocument.get(0).Attachments && !objOpprDocument.get(0).Attachments.isEmpty() && objOpprDocument!=null && !objOpprDocument.isEmpty() ){
                        list<Attachment> objAttachments  = [SELECT Description, ContentType, Body 
                                                            FROM Attachment 
                                                            WHERE id =: objOpprDocument.get(0).Attachments.get(0).Id];
                        AttachmentDetail objAtt = null;
                        if(objAttachments != null && !objAttachments.isEmpty()){
                            objAtt = new AttachmentDetail('true','Success',objAttachments.get(0).Description,objAttachments.get(0).ContentType,objAttachments.get(0).Body);                 
                        }else{
                             res.StatusCode  = 400;
                            res.addHeader('Error','Attachment Does Not Exist!');
                            objAtt = new AttachmentDetail('false','Attachment Does Not Exist!',null,null,null);
                        }                                   
                        attachments = JSON.serialize(objAtt);
                        returnOppDoc(objOpprDocument.get(0),'Sent');
                        return attachments;
                    }             
                }
                res.StatusCode  = 400;
                res.addHeader('Error','Attachment Does Not Exist!');
                attachments = JSON.serialize(new AttachmentDetail('false','Attachment Does Not Exist!',null,null,null));
                return attachments;
            } else {
                res.StatusCode  = 400;
                res.addHeader('Error','Application Error: External ID Does Not Exist!');
                return JSON.serialize(new AttachmentDetail('false','External ID Does Not Exist!',null,null,null)); 
            }
        
        return null;
    } 
    
    private static String returnOppDoc(Oppr_Document__c oppDoc, String status){
        if(oppDoc != NULL && status != NULL) {            
            oppDoc.Status__c = status;
            upsert oppDoc;
            if(oppDoc.Id != NULL) {
                return oppDoc.Id;
            }
        }
        return null;
    }
    
    /* AttachmentDetail Wrapper Class */
    global class AttachmentDetail{
        global String Description {get;set;}
        global String ContentType {get;set;}
        global blob Body {get;set;}
        global String message {get;set;}
        global String isSuccess {get;set;}
         
        global AttachmentDetail(String isSuccess,String message,String Description,String ContentType,blob Body){
            this.Description = Description;
            this.ContentType = ContentType;
            this.Body = Body;
            this.isSuccess = isSuccess;
            this.message = message;
        }
    }
}