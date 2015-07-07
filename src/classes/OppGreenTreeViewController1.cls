public class OppGreenTreeViewController1{
  
    public String iTemp{get;set;}
    public Green_Tree_Oppy_Extension__c gtNew{get;set;}
    public Boolean isEdit{get;set;}
    
 // private Apexpages.StandardController controller; 

     
    public PageReference DoSave() {
    
    // this.controller.save();
    
     PageReference newPage = New PageReference('/apex/SplashGreenTree');
     newPage.setRedirect(true);
     return newPage;
    try {
  upsert gtNew;
    }
catch (System.QueryException e) {
  System.debug('caught Exp!');
}
    return null;
    }
    public PageReference Cancel(){
    PageReference pageRef= new PageReference('/apex/SplashGreenTree');
    pageRef.setredirect(true);
    return pageRef;
    }  
    
    
       public OppGreenTreeViewController1(ApexPages.StandardController controller)
    {
        isEdit=false;
        
        this.iTemp=controller.getId();
        System.debug('itemp '+ itemp);
        
       list<Green_Tree_Oppy_Extension__c>GTM=[select
                        No_of_Payments__c,Advance_Payoff_Date__c,Average_CC_Sales__c,
                        Average_Gross_Sales__c,Daily_Payment_Amount__c,Estimated_Balance__c,
                        Estimated_Days_to_Repay__c,Id,IsDeleted,LastActivityDate,LastModifiedById,
                        LastModifiedDate,Name,Opportunity__c,Product__c,ProductTerm__c
                        FROM 
                        Green_Tree_Oppy_Extension__c limit 1
                   ];
                this.gtNew=GTM[0]; 
        
    }
    public Pagereference edit(){
        isEdit = true;
        return null;
    }  
    

}