public class ExternalSharingHelper{ 
    
@future 
    public static void touchCases(Set<Id> leadIds) { 
        List<Lead> leadList = [SELECT Id FROM Lead WHERE ID IN :leadIds AND isconverted=false]; 
        Update leadList; 
    } 
}