public with sharing class FormulaFieldUtility {
        // sentv fromm server
        public static Opportunity opportunity{
                get{
                    if(opportunity == null){
                        list<Opportunity> objOpportunities = [SELECT
										                        EC_X12_separate_daily_deposits_per_month__c, 
										                        CRR__r.TotalOfMortgageTrades90DaysPastDue__c, 
										                        CRR__r.TotalOfMortgageTrades60DaysPastDue__c,
										                        CRR__r.NumberOfBankruptcies__c, CRR__r.TotalPastDueAmount__c, 
										                        CRR__r.OldestOpenDateOfATrade__c, Previous_Opportunity__r.CRR__c,
										                        Previous_Opportunity__c, Manual_Applicant_1_FICO__c, 
										                        Processing_Rep_Assigned__c, CRR__c, CRR__r.FICO__c,
										                        Processing_Initial_Review_Complete__c, 
										                        Account.Current_Balance__c, Re_Price_Reasons__c,
										                        Percent_Paid_Off__c, UW_Processing_Notes__c, 
										                        Underwriter_Assigned__c, New_Payback_Price__c,
										                        New_Percent_Payback__c, Est_Days_to_Repay__c, 
										                        New_Advance_Price__c, UWEligible_for_Rapid_Funding__c,
										                        Deal_Repriced_Need_New_FRSA__c, CloseDate, 
										                        Signed_Contract_Received__c, B__c, Account.BusinessStructure__c,
										                        Campaign.SWIFT_Campaign__c, Site_Survey_Ordered_Due_Date__c,
										                        Initial_underwriting_approval__c, Deal_Ready_For_Processing__c,
										                        Tracking_Code_Opp__c, Pre_Qual_Decision__c, Campaign.Campaign_Contact_Email__c,
										                        Campaign.Campaign_Contact_Number__c, Campaign.Campaign_Contact__c,
										                        Monthly_Gross_Debits_4__c, Monthly_Gross_Deposit_4__c,
										                        Monthly_Gross_Debits_3__c, Monthly_Gross_Deposit_3__c,
										                        Monthly_Gross_Debits_2__c, Month_Average_Gross_Sales_2__c,
										                        Monthly_Gross_Debits_1__c, Month_Average_Gross_Sale_1__c,
										                        BA_FICO_score_500__c, Does_Merchant_Own_The_Business_Location__c,
										                        Business_name_check_match_contract__c, Other_UCC_Filings__c,
										                        BAM_Match_Selection__c, Business_Status__c,
										                        Confirmed_Westlaw_real_property_search__c, Eligible_Photo_ID__c,
										                        Confirmed_legal_name_in_Westlaw__c, FRSA_legal_name_same_as_in_Salesforce__c,
										                        Type_of_Entity__c, Routing_Number__c, Account_Number_For_Funding__c, Bank_Name__c,
										                        Judgements_Open__c, Tax_Liens_Open__c, International_Sale_Hidden_Text__c,
										                        ImageNow_Complete__c, Submit_to_UW_Processing__c,
										                        Site_Survey_Available__c, Site_Survey_Ordered__c,
										                        Campaign.Update_Partner_Email_1__c, Campaign.Update_Partner_Email_2__c,
										                        Campaign.Update_Partner_Email_3__c, Campaign.Update_Partner_Email_4__c,
										                        Campaign.Update_Partner_Email_5__c, Campaign.Update_Partner_Email_6__c,
										                        Funded_by_WC__c, Mortgage_Delinquent__c, Applicant_2_FICO__c, 
										                        Pay_Back_Amount__c, Loan_Term_Days__c, CH_Business_Ownership_Confirmed__c,
										                        CH_Suspect_Merchant_interview__c, CH_Unsatisfactory_Neighborhood_Check__c,
										                        CH_Unacceptable_Check__c ,CH_Suspect_Landlord_interview__c,
										                        What_is_their_home_mortgage_balance__c, What_is_the_value_of_their_home__c, Deal_Defaulted__c, 
										                        Decision_Date__c, EC_Company_in_business_6_months__c,
										                        EC_X4_consecutive_months_of_processing__c,
										                        Product__c, Renewal__c, Individual_Bankruptcies__c,
										                        Percent_Payback__c, Estimated_Days_to_Repay__c,
										                        Amount, Fixed_Amount__c, Campaign.Type,AE_Calculator_Average__c,
										                        QC_Calculator_Average__c, Account.Federal_or_State_Tax_Liens__c, 
										                        Account.Time_Remaining_On_Lease__c, Account.Landlord_Agent_Phone__c, 
										                        Account.Landlord_Agent_Name__c, Account.Does_the_Merchant_Own_the_Building__c,
										                        Account.Email_Address__c, Average_Ticket__c, Business_Category__c,
										                        BA_Business_is_a_sole_proprietor__c, BA_X9_months_remaining_on_the_lease__c, 
										                        BA_I_year_with_current_processor__c, BA_Split_is_40__c,
										                        Decline_Letter_Sent_Due_Date__c, Decline_Letter_Sent__c, Begin_Activity_Monitoring__c,
										                        Begin_Activity_Monitoring_Due_Date__c, Data_Entry_Date__c, New_Advance_Amount__c,
										                        Underwriting_Approval__c, Pre_Qual_Decision_Date__c, Approval_Process_Entry_Time__c,
										                        Account.Location_1_DBA_NAME__c , Account.Location_2_DBA_NAME__c , 
										                        Account.Location_3_DBA_NAME__c, Account.Location_4_DBA_NAME__c, 
										                        Account.Location_1_Address__c, Account.Location_2_Address__c, Account.Location_3_Address__c,
										                        Account.Location_4_Address__c, Account_Database_Entry_Due_Date__c,Account_Database_Entry__c,
										                        Id, Name,StageName, Type,AccountId,Account.BillingPostalCode,
										                        Account.Roll_up_Approved__c, Account.Fax, Account.DateBusinessStarted__c,
										                        Account.Phone, Account.Name, Account.FederalTaxID__c, Account.First_Funding_Date__c,
										                        Account.Most_Recent_Funded_Renewal_Date__c, Account.Last_Renewal_Date__c,
										                        CreatedDate, Account.Last_Created_Opportunity__c, Account.Legal_Name__c, 
										                        Account.Months_with_Current_Processor__c, Account.Number_of_Locations__c,
										                        Account.Number_of_Terminals_at_Location__c, Account.Owned_Business_Since__c, 
										                        Account.BusinessType__c,Account.ownerId,Account.Type,Opportunity_Number__c,
										                        BA_X2_years_in_business__c,Previous_Opportunity__r.CRR__r.FICO__c 
															FROM 
																Opportunity
															WHERE 
																id=:apexpages.currentpage().getparameters().get('oppId') limit 1];
                        opportunity = objOpportunities.get(0);
                     }
                     return opportunity;
                }private set;
        }
        
        
        
        public static Merchant__c objMerchant{
                get{
                    if(objMerchant == null){
                        list<Merchant__c> objMerchants = [SELECT 
                        										Merchant_Interview_Completed_Date__c
                        									FROM
                        										 Merchant__c 
                        									WHERE 
                        										 Opportunity__c=: opportunity.Id]; 
                        if(!objMerchants.isEmpty()){                        
                            objMerchant = objMerchants.get(0);
                        }else{
                            objMerchant = new Merchant__c(); 
                        }
                    }
                    return objMerchant;
                }private set;
        }     
        
        public static Contact objContact{
                get{
                    if(objContact == null){
                        list<Contact> objContacts = [SELECT
                        									pi__utm_term__c, pi__utm_source__c, pi__utm_medium__c, 
                        									pi__utm_content__c, pi__utm_campaign__c, pi__url__c, 
                        									pi__score__c, pi__notes__c, pi__last_activity__c, 
                        									pi__grade__c, pi__first_touch_url__c, pi__first_search_type__c, 
									                        pi__first_search_term__c, pi__first_activity__c,
									                        pi__created_date__c, pi__comments__c, pi__campaign__c,
									                        Years_at_Current__c, Title, SystemModstamp, Suffix__c,
									                        Subscribed_to_Newsletter__c, SoftPhone_Test__c, 
									                        Send_Birthday_Email__c, Send_Anniversary_Email__c,
									                        Salutation, SS__c, ReportsToId, Relationship__c,
									                        Principal_Type__c, Principal_Home_Phone__c,
									                        Principal_2_Zip__c, Principal_2_Street_Address__c,
									                        Principal_2_State__c, Principal_2_Social_Security_Number__c,
									                        Principal_2_Phone__c, Principal_2_Percent_Ownership__c,
									                        Principal_2_Mobile__c, Principal_2_Last_Name__c, 
									                        Principal_2_First_Name__c, Principal_2_Email__c, 
									                        Principal_2_Date_of_Birth__c,Principal_2_City__c, 
									                        Principal_1_Zip__c, Principal_1_Street_Address__c, 
									                        Principal_1_State__c, Principal_1_City__c,Phone, 
									                        Partner_User__c, Partner_User_Name__c, OwnershipPercentage__c, 
									                        OwnerId, OtherStreet, OtherState, OtherPostalCode, 
									                        OtherPhone, OtherCountry, OtherCity, Name_of_Bank_Personal__c, 
									                        Name, Months_at_Previous_Address__c, Months_at_Current_Address__c, 
									                        Monthly_Gross_Salary__c, MobilePhone, Middle_Name__c, 
									                        MasterRecordId, MailingStreet, MailingState, MailingPostalCode, 
									                        MailingCountry, MailingCity, LeadSource, Last_Temporary_Password__c, 
									                        LastName, LastCUUpdateDate, LastCURequestDate, 
									                        LastActivityDate, JigsawContactId, Jigsaw, 
									                        Import_ID__c, Id, HomePhone, HasOptedOutOfFax, 
									                        HasOptedOutOfEmail, FirstName, Filed_for_bankruptcy__c, Fax, 
									                        Email_Present__c, EmailBouncedReason, EmailBouncedDate, 
									                        Email, Efax__c, Efax_Status__c, Efax_Notes__c, DoNotCall, 
									                        Description, Department, Date_of_Birth__c, Date_Bounced__c, 
									                        DO_NOT_FAX__c, CreatedDate, CreatedById, Campaign_Name__c, 
									                        Birthdate, AssistantPhone, AssistantName, Anniversary_Date__c, 
									                        Additional_Contact_Phone__c, Additional_Contact_Name__c, 
									                        Additional_Contact_Mobile__c, Additional_Contact_Fax__c, 
									                        Additional_Contact_Email__c, Additional_Contact_Address__c, 
									                        AccountId
                        							FROM 
                        									Contact 
                        							WHERE 
                        									AccountId=:opportunity.Account.Id];
                        if(!objContacts.isEmpty()){                        
                            objContact = objContacts.get(0);
                        }else{ objContact = new Contact(); }                  
                    }
                    return objContact;
                }private set;
        }   
                
        public static String accountDatabaseEntryDaysCount{
            get{
                return ''+opportunity.Account_Database_Entry_Due_Date__c;//+(System.TODAY() - opportunity.Account_Database_Entry_Due_Date__c) - (System.NOW() - opportunity.Account_Database_Entry__c);
            }private set;
        }
        
        public static String accountDatabaseEntryFlag{
            get{
                String imageURL ='/img/samples/flag_red.gif';
                String imageURLSecond = '/s.gif';
                if(opportunity.Account_Database_Entry__c == null /*&& accountDatabaseEntryDaysCount < System.TODAY()*/){
                    return imageURL;
                }
                else{ return imageURLSecond;}
            }private set;           
        }
        
        public static String accRollupApproval{
            get{                                            
                return ''+opportunity.Account.Roll_up_Approved__c;
            }private set;
        }
        
        public static String additionalLocationInformation{
            get{    
                return 'Location 2:' + '\n'
                + ' DBA Name:' + opportunity.Account.Location_2_DBA_NAME__c + '\n' 
                + ' Address:' + opportunity.Account.Location_2_Address__c + '\n' + '\n' 
                + 'Location 3:' + '\n' 
                + ' DBA Name:' + opportunity.Account.Location_3_DBA_NAME__c + '\n' 
                + ' Address:' + opportunity.Account.Location_3_Address__c + '\n' + '\n' 
                + 'Location 4:' + '\n' 
                + ' DBA Name:' + opportunity.Account.Location_4_DBA_NAME__c + '\n' 
                + ' Address:' + opportunity.Account.Location_4_Address__c + '\n' 
                + 'Location 5:' + '\n' 
                + ' DBA Name:' + opportunity.Account.Location_1_DBA_NAME__c + '\n' 
                + ' Address:' + opportunity.Account.Location_1_Address__c + '\n' + '\n';                                            
            }private set;
        }
        
        public static String additionalContactInfo{
            get{
                String principal2FirstName = '';
                if(objContact.Principal_2_First_Name__c != null){
                    principal2FirstName = objContact.Principal_2_First_Name__c;
                }
                String principal2LastName = '';
                if(objContact.Principal_2_Last_Name__c != null){
                    principal2LastName = objContact.Principal_2_Last_Name__c;
                }
                String principal2StreetAddress = '';
                if(objContact.Principal_2_Street_Address__c != null){
                    principal2StreetAddress = objContact.Principal_2_Street_Address__c;
                }
                String principal2City = '';
                if(objContact.Principal_2_City__c != null){
                    principal2City = objContact.Principal_2_City__c;
                }
                String principal2State = '';
                if(objContact.Principal_2_State__c != null){
                    principal2State = objContact.Principal_2_State__c;
                }
                String Principal2Zip = '';
                if(objContact.Principal_2_Zip__c != null){
                    Principal2Zip = objContact.Principal_2_Zip__c;
                }
                String principal2Phone = '';
                if(objContact.Principal_2_Phone__c != null){
                    principal2Phone = objContact.Principal_2_Phone__c;
                }
                String Principal2Mobile = '';
                if(objContact.Principal_2_Mobile__c != null){
                    Principal2Mobile = objContact.Principal_2_Mobile__c;
                }
                String principal2Email = '';
                if(objContact.Principal_2_Email__c != null){
                    principal2Email = objContact.Principal_2_Email__c;
                }
                
                Decimal principal2PercentOwnership = 0;             
                if(objContact.Principal_2_Percent_Ownership__c != null){
                    principal2PercentOwnership = objContact.Principal_2_Percent_Ownership__c;
                }
                return 'Additional Contact Info:' + '<br/>'
                + 'Full Name: ' + principal2FirstName + ' ' + principal2LastName + '<br/>' 
                + 'Ownership: ' +  principal2PercentOwnership*100 + '%' +  '<br/>'
                + 'Address: ' + '<br/>'
                + principal2StreetAddress + '<br/>' 
                + principal2City  + ', ' +  principal2State + ' ' +  principal2Zip + '<br/>'
                + 'Phone: ' + principal2Phone +  '<br/>'
                + 'Mobile: ' +  principal2Mobile + '<br/>'
                + 'Email: ' + principal2Email;
            }private set;
        }
        
        public static String additionalSignerSSN{
            get{                                            
                return objContact.Principal_2_Social_Security_Number__c;
            }private set;
        }
        
        public static String AE_PrimarySignerInfo{
            get{
                if(objContact != null){
                    Decimal str = 0;
                    if(objContact.OwnershipPercentage__c != null)
                        str = objContact.OwnershipPercentage__c*100;
                    return 'Primary Contact Info:' +  '\n'
                    + 'Full Name: ' + objContact.FirstName + ''  + objContact.LastName +  '\n' 
                    + 'Ownership: ' + str + '%' +  '\n' 
                    + 'Address:' + '\n' 
                    + objContact.Principal_1_Street_Address__c +  '\n' 
                    + objContact.Principal_1_City__c + ', ' + objContact.Principal_1_State__c + ' ' +  objContact.Principal_1_Zip__c + '\n' 
                    + 'Business Phone: ' + objContact.Phone + '\n' 
                    + 'Home Phone: ' + homePhone + '\n' 
                    + 'Mobile: ' + objContact.MobilePhone +  '\n' 
                    + 'Fax: ' + objContact.Fax + '\n' 
                    + 'Email: ' + objContact.Email;
                }
                else{ return  '';}         
            }private set;
        }
        
        public static Decimal ccApplicant1FICO{
            get{
                if(opportunity.CRR__c == null){
                        return null;
                }
                else{
                    if(opportunity.CRR__r != null && opportunity.CRR__r.FICO__c<1000){
                            return opportunity.CRR__r.FICO__c;
                    }
                    else { return null;}
                }               
            }private set;
        }
        
        public static String approvalProcessTime{
            get{                                            
                return '';//+(opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime());
            }private set;
        }
        
        public static String approvalRate{
            get{                                            
                return ''+approvedFlag;
            }private set;
        }
        
        public static String approvedFlag{
            get{    
                if(opportunity.Underwriting_Approval__c != null && ( opportunity.Underwriting_Approval__c == 'Approved') ||
                ( opportunity.Underwriting_Approval__c =='Approved by Credit Committee') ||
                ( opportunity.Underwriting_Approval__c == 'Approved by Credit Committee but change in advance amount and split') ||
                ( opportunity.Underwriting_Approval__c == 'Approved by Credit Committee but change in split') ||
                ( opportunity.Underwriting_Approval__c == 'Approved by Credit Committee with conditions') ||
                ( opportunity.Underwriting_Approval__c == 'Approved - Pending Management Review') ||
                ( opportunity.Underwriting_Approval__c == 'Auto Approved') ||
                ( opportunity.Underwriting_Approval__c == 'Approved by Credit Committee but change in advance amount')){
                    return ''+1;
                }
                else{ return ''+0;}                               
            }private set;
        }
        
        public static String approvedAmount{
            get{                                            
                if( approvedFlag != null && integer.ValueOf(approvedFlag) == 1){ 
                    return ''+opportunity.New_Advance_Amount__c ;
                }
                else{
                    return null;
                }
            }private set;
        }
        
        public static String bakerFlag{
            get{                                            
                if( opportunity.Data_Entry_Date__c == null ){
                    return ''+0;
                }
                else{
                    return ''+1;
                }
            }private set;
        }
        
        public static String beginActivityMonitoringDaysCount{
            get{
                return 'sdf'; 
                //(System.TODAY()-opportunity.Begin_Activity_Monitoring_Due_Date__c) - (NOW()- opportunity.Begin_Activity_Monitoring__c);
            }private set;
        }
        
        public static String beginActivityMonitoringFlag{
            get{
                String imageURL='/img/samples/flag_red.gif';
                String imageURLSecond = '/s.gif';
                if(opportunity.Decline_Letter_Sent__c  == Null || opportunity.Decline_Letter_Sent_Due_Date__c < System.TODAY()){
                    return imageURL;
                }
                else{
                    return imageURLSecond;
                }                                               
            }private set;           
        }
        
        /*public static String billingCity{
            get{                                            
                return opportunity.Account.BillingCity;
            }private set;
        }
        
        public static String billingCountry{
                get{                                            
                        return opportunity.Account.BillingCountry;
                }private set;
        }
        
        public static String billingState{
                get{                                            
                        return opportunity.Account.BillingState;
                }private set;
        }
        
        public static String billingStreet{
                get{                                            
                        return opportunity.Account.BillingStreet;
                }private set;
        }
        
        public static String billingPostalCode{
                get{                                            
                        return opportunity.Account.BillingPostalCode;
                }private set;
        }
        
        public static String businessAddress{
                get{                                            
                        return billingStreet + '\n' + 
                        billingCity + ', ' + billingState + ',' +  billingPostalCode +  '\n' + 
                        billingCountry ;                    
                }private set;
        }*/
        
        public static String baBusinessAlertCount{
            get{    
                String str = '';                                        
                if(zipAlert == 'Yes'){
                    str = str+ 1;
                }
                else{
                    str = str+ 0;
                }
                if(baIsTheBusinessTypeConsideredLuxury == 'Yes'){
                    str = str+ 1;
                }
                else{
                      str = str+ 0;
                }
                if( opportunity.BA_Split_is_40__c == 'Yes') {
                     str = str+ 1;
                }
                else{
                      str = str+ 0;
                }
                if(opportunity.BA_X2_years_in_business__c == 'Yes') {
                     str = str+ 1;
                }
                else{
                      str = str+ 0;
                }
                if( opportunity.BA_I_year_with_current_processor__c == 'Yes') {
                     str = str+ 1;
                }
                else{
                      str = str+ 0;
                }
                if( opportunity.BA_X9_months_remaining_on_the_lease__c == 'Yes') {
                      str = str+ 1;
                }
                else{
                      str = str+ 0;
                 }
                if( opportunity.BA_Business_is_a_sole_proprietor__c == 'Yes') {
                     str = str+ 1;
                 }
                else{
                      str = str+ 0;
                }
                return str;     
            }private set;
        }
        
        public static String qcBusinessCategoryAlert{
            get{                                            
                if( (opportunity.Business_Category__c == 'Restaurant - Fine Dining' ||opportunity.Business_Category__c == 'Restaurant - Casual Dining') &&
                    (opportunity.Average_Ticket__c =='$50 - $75' || opportunity.Average_Ticket__c =='> $75' || opportunity.BA_X2_years_in_business__c =='Yes')){
                    return 'Auto Decline under Business Type' ;
                } 
                else{
                    return 'No Alert' ;
                }                       
            }private set;
        }
        
        public static String fax{
            get{                                            
                return opportunity.Account.Fax;                 
            }private set;
        }
        
        public static String businessInfo{
            get{                                            
                return 'Address:' + '\n'               
                + 'Business Phone:' + opportunity.Account.Phone + '\n' 
                + 'Fax:' + opportunity.Account.Fax + '\n' 
                + 'Email:' + opportunity.Account.Email_Address__c;                      
            }private set;
        }
        
        public static String businessInformation{
            get{                                            
                return 'Legal Name: ' + opportunity.Account.Legal_Name__c + '\n' 
                + 'DBA Name: ' + opportunity.Account.Name + '\n' + '\n'                      
                + 'Phone: ' + opportunity.Account.Phone + '\n'
                + 'Fax: '+ opportunity.Account.Fax + '\n'
                /*this field has been deleted*/ 
                //+ 'Best Number to Call: '+  Best_Number_To_Call__c + '\n' 
                + 'Email: ' + opportunity.Account.Email_Address__c + ' ' + '\n' + '\n' 
                + 'Federal Tax ID: ' + opportunity.Account.FederalTaxID__c + ' ' + '\n' + '\n' 
                + 'Number of Businesses Included In Advance: ' + NumberOfLocations + '\n' 
                + 'Number of Terminals at Location: ' + NumberOfTerminalsAtLocation  + '\n' + '\n' 
                + 'Business Open Date: '+  opportunity.Account.DateBusinessStarted__c + '\n' 
                + 'Owned Business Since: ' + OwnedBusinessSince + '\n' + '\n' 
                + 'Does the Merchant Own the Building: ' + opportunity.Account.Does_the_Merchant_Own_the_Building__c +  '\n' 
                + 'Landlord/Agent Name: ' + opportunity.Account.Landlord_Agent_Name__c + '\n' 
                + 'Landlord/Agent Phone: ' + opportunity.Account.Landlord_Agent_Phone__c + '\n' 
                + 'Time Remaining on Site Lease/Mortgage: ' + opportunity.Account.Time_Remaining_On_Lease__c + '\n' + '\n' 
                + 'Federal or State Tax Liens?: ' + opportunity.Account.Federal_or_State_Tax_Liens__c  + '\n';                 
            }private set;
        }
        
        public static String businessOpenDate{
            get{                                            
                return ''+opportunity.Account.DateBusinessStarted__c;                   
            }private set;
        }
        
        public static String businessPhone{
            get{                                            
                return ''+opportunity.Account.Phone;                    
            }private set;
        }
        
        public static String calculatorVariance{
            get{    
                if(opportunity.QC_Calculator_Average__c != null && opportunity.AE_Calculator_Average__c != null && opportunity.AE_Calculator_Average__c > 0){
                    return ''+ (1 - ( Decimal.valueOf(''+opportunity.QC_Calculator_Average__c) / Decimal.valueOf(''+opportunity.AE_Calculator_Average__c) ));
                }
                else{
                    return ''+ 1;
                }
            }private set;
        }
        
        public static String campaignType{
            get{                                            
                if(opportunity.Campaign.Type =='Partners'){
                    return 'Partners';
                }
                else if(opportunity.Campaign.Type == 'Internet'){
                    return 'Internet' ;
                }
                else{
                    return 'Rapid Advance Internal Campaign' ;
                }
            }private set;
        }
        
        public static String cardTypesSelectedByUW{
            get{    
                String str = '';                                        
                /*if ( opportunity.Visa_MC_Discover_Amex__c || opportunity.Visa_MC_Amex__c  || opportunity.Visa_MC_Debit_Amex_Discover__c || 
                opportunity.Visa_MC_Debit_Amex__c || opportunity.Visa_MC_Debit__c || opportunity.Visa_MC__c || opportunity.Visa_MC_Debit_Discover__c || 
                opportunity.Visa_MC_Discover__c || opportunity.Visa_MC_Debit_Diners__c ){
                    str = str + 'Visa,MC';
                }                                               
                if (opportunity.Visa_MC_Debit_Amex_Discover__c || opportunity.Visa_MC_Debit_Amex__c || opportunity.Visa_MC_Debit__c || 
                opportunity.Visa_MC_Debit_Discover__c || opportunity.Visa_MC_Debit_Diners__c ){       
                    str = str + ',Debit' ;
                }           
                if ( opportunity.Visa_MC_Discover_Amex__c  || opportunity.Visa_MC_Amex__c  || opportunity.Visa_MC_Debit_Amex_Discover__c || 
                opportunity.Visa_MC_Debit_Amex__c){        
                    str = str + ',AMEX' ;
                } 
                
                if (opportunity.Visa_MC_Discover_Amex__c || opportunity.Visa_MC_Debit_Amex_Discover__c|| opportunity.Visa_MC_Debit_Discover__c ||
                opportunity.Visa_MC_Discover__c ){
                    str = str + ',Discover' ;
                } 
                if( opportunity.Visa_MC_Debit_Diners__c ){
                    str = str + ',Diners' ;
                } 
                if(opportunity.Fixed_Amount__c){
                    str = str + 'Fixed Amount' ;
                }*/
                return str;
            }private set;
        }
        
        public static String chCharacterAlertCount{
            get{    
                Integer i = 0;                                  
                if(opportunity.CH_Suspect_Landlord_interview__c == 'Yes'){
                        i = i + 1;
                }
                if( opportunity.CH_Unacceptable_Check__c =='Yes'){
                        i = i + 1;
                }
                if( opportunity.CH_Unsatisfactory_Neighborhood_Check__c == 'Yes'){
                        i = i + 1;
                }
                if(opportunity.CH_Suspect_Merchant_interview__c == 'YES'){
                        i = i + 1;
                }
                if(opportunity.CH_Business_Ownership_Confirmed__c == 'No'){
                        i = i + 1;
                }
                return ''+i;    
            }private set;
        }
        
        public static String conditionalPricingCriteria{
            get{            
                String str= '';                         
                if (qcBusinessCategoryAlert == 'No Alert' && qcSCFAlert == 'No Alert'){
                    str = str +  'Not Relevant' ;
                }
                else{
                    if ((qcSCFAlert == 'Yes' && opportunity.BA_X2_years_in_business__c== 'No') && opportunity.Amount>75000){
                        str = str + 'Advance cannot exceed $75,000. ' ;
                    }                           
                }               
                if((qcSCFAlert =='Yes' || qcBusinessCategoryAlert == 'Yes') && opportunity.BA_X2_years_in_business__c== 'No' && opportunity.Estimated_Days_to_Repay__c > 189){
                    str = str + 'Estimated Term cannot exceed 189 days.' ;
                }
                if(qcSCFAlert =='Yes' && qcBusinessCategoryAlert == 'Yes' && opportunity.BA_X2_years_in_business__c == 'No' && opportunity.Percent_Payback__c > 20){
                    str = str + 'Percent Payback cannot exceed 20%' ;
                }                                       
                else{
                    if (qcBusinessCategoryAlert == 'Yes' && opportunity.BA_X2_years_in_business__c== 'No' && opportunity.Percent_Payback__c > 20){
                        str = str + 'Percent Payback cannot exceed 20%' ;
                    } 
                    else{
                        if (qcSCFAlert =='Yes' && opportunity.BA_X2_years_in_business__c== 'No' && opportunity.Percent_Payback__c > 40){
                            str = str + 'Percent Payback cannot exceed 40%' ;
                        }                                       
                    }
                }
                return str;
            }private set;
        }
        
        public static String contactEmail{
            get{                                            
                return objContact.Email;
            }private set;
        }
        
        public static String contactID{
            get{                                            
                return objContact.Id;
            }private set;
        }
        
        public static String count{
            get{                                            
                return '1';
            }private set;
        }
        
        public static String qcConditionalCriteria{
            get{
                if( opportunity.Renewal__c){
                    if((qcSCFAlert == 'Yes' && flag1FICO == 1) || flag3Mortgage == 1 ||
                    opportunity.Individual_Bankruptcies__c == 'yes'){
                        return 'Auto Credit Decline for renewals' ;
                    }
                    else{
                        return 'No Alert' ;
                    }
                }
                else{
                    if (flag1FICO == 1 || flag3Mortgage == 1 || flag3Mortgage == 2 || 
                    opportunity.Individual_Bankruptcies__c == 'YES'){
                        return 'Auto Credit Decline for New Deals' ;
                    }
                    else{ return 'No Alert' ; }                              
                }
            }private set;
        }
        
        public static String creditBureauSummary{
            get{
                Decimal totalOfMortgageTrades60DaysPastDue = 0;
                if(opportunity.CRR__r.TotalOfMortgageTrades60DaysPastDue__c != null){
                    totalOfMortgageTrades60DaysPastDue = opportunity.CRR__r.TotalOfMortgageTrades60DaysPastDue__c;
                }
                Decimal totalOfMortgageTrades90DaysPastDue = 0;
                if(opportunity.CRR__r.TotalOfMortgageTrades90DaysPastDue__c != null){
                    totalOfMortgageTrades90DaysPastDue = opportunity.CRR__r.TotalOfMortgageTrades90DaysPastDue__c;
                }
                Decimal numberOfBankruptcies = 0;
                if(opportunity.CRR__r.NumberOfBankruptcies__c != null){
                    numberOfBankruptcies = opportunity.CRR__r.NumberOfBankruptcies__c;
                }
                Decimal totalPastDueAmount = 0;
                if(opportunity.CRR__r.TotalPastDueAmount__c != null){
                    totalPastDueAmount = opportunity.CRR__r.TotalPastDueAmount__c;
                }
                String oldestOpenDateOfATrade = '';
                if(opportunity.CRR__r.OldestOpenDateOfATrade__c != null){
                    oldestOpenDateOfATrade = '' + opportunity.CRR__r.OldestOpenDateOfATrade__c;
                }
                String s;
                s = 'Total Of Mortgage Trades 60 DPD: ' + totalOfMortgageTrades60DaysPastDue + '<br/>' 
                + 'Total Of Mortgage Trades 90 DPD: ' + totalOfMortgageTrades90DaysPastDue + '<br/>' 
                + 'Number Of Bankruptcies: ' + numberOfBankruptcies + '<br/>' 
                + 'Total Past Due Amount: ' + totalPastDueAmount + '<br/>' 
                + 'Oldest Open Date Of A Trade: ' + oldestOpenDateOfATrade;
                return s;
            }private set;
        }
        
        public static String ecCriteriaDecision{
            get{
                if(opportunity.Product__c == 'MCA'){
                    if(opportunity.EC_X4_consecutive_months_of_processing__c == 'Yes'){
                        return 'INELIGIBLE - STOP RIGHT NOW' ;
                    }
                    else if(opportunity.EC_X12_separate_daily_deposits_per_month__c == 'Yes'){
                        return 'INELIGIBLE - STOP RIGHT NOW' ;
                    }else if(opportunity.EC_Company_in_business_6_months__c == 'Yes'){
                        return  'INELIGIBLE - STOP RIGHT NOW' ;
                    }else{
                        return 'Eligible Criteria Met';
                    }          
                }
                else if(opportunity.Product__c == 'Loan'){
                    if(opportunity.EC_Company_in_business_6_months__c == 'Yes'){
                        return 'INELIGIBLE - STOP RIGHT NOW' ;
                    }
                    else{
                        return 'Eligible Criteria Met' ;
                    }
                }
                else{
                    return 'Eligible Criteria Met' ;
                }       
            }private set;
        }
        
        public static String daysSinceDecisionDate{
            get{
                return ''; //+ System.NOW() - opportunity.Decision_Date__c;                             
            }private set;
        }
        
        public static String dba_Name{
            get{
                return '';
            }private set;
        }
        
        public static String dealDefaultedFlag{
            get{
                String imageURL='/img/samples/flag_red.gif';
                String imageURLSecond= '/s.gif';
                if(opportunity.Deal_Defaulted__c){
                        return imageURL;
                }
                else{
                        return imageURLSecond;
                }                       
            }private set;
        }
        
        public static String decisionFlag{
            get{
                if(opportunity.Decision_Date__c == Null){
                    return '' + 0;
                }
                else{
                    return '' + 1;
                }
            }private set;
        }
        
        public static String declinedFlag{
            get{
                if (opportunity.Underwriting_Approval__c=='Auto Declined' || opportunity.Underwriting_Approval__c=='Declined' || opportunity.Underwriting_Approval__c=='Declined by Credit Committee' ||
                opportunity.Underwriting_Approval__c=='Declined - Pending Management Review'){
                    return '' + 1;
                }
                else{
                    return '' + 0;
                }
            }private set;
        }
        
        public static String declineLetterSentDaysCount{
            get{
                return ''; //'(TODAY()-opportunity.Decline_Letter_Sent_Due_Date__c) - (System.NOW()- opportunity.Decline_Letter_Sent__c);
            }private set;
        }
        
        public static String declineLetterSentFlag{
            get{
                String imageURL = '/img/samples/flag_red.gif';
                String imageURLSecond = '/s.gif';
                if(opportunity.Decline_Letter_Sent__c  == Null || opportunity.Decline_Letter_Sent_Due_Date__c < System.TODAY()){
                    return imageURL;
                }
                else{
                    return imageURLSecond;
                }
            }private set;
        }
        
        public static String equityInHome{
            get{
                if(opportunity.What_is_the_value_of_their_home__c != null && opportunity.What_is_their_home_mortgage_balance__c != null){
                    return '' + (Double.valueOf('' + opportunity.What_is_the_value_of_their_home__c) - Double.valueOf('' +opportunity.What_is_their_home_mortgage_balance__c));     
                }
                else{
                    return '';
                }   
            }private set;
        }        
        
        /********* START undewritting oject fields**********/
        public static String uwDealRepricedNeedNewFRSA{
            get{
                if(opportunity.Deal_Repriced_Need_New_FRSA__c != null){
                    return ''+opportunity.Deal_Repriced_Need_New_FRSA__c;                   
                }
                else{
                    return '';
                }                               
            }private set;
        }
        
        public static String eligibleForRapidFunding{
            get{
                return opportunity.UWEligible_for_Rapid_Funding__c;               
            }private set;
        }
        
        public static String uwNewPaybackPrice{
            get{
                if(opportunity.New_Payback_Price__c != null){
                    return ''+opportunity.New_Payback_Price__c;                 
                }
                else{
                    return '';
                }                               
            }private set;
        }
        
        public static String UWNewPercentPayback{
            get{
                if(opportunity.New_Percent_Payback__c != null){
                    return ''+opportunity.New_Percent_Payback__c;                   
                }
                else{
                    return '';
                }                               
            }private set;
        }
        
        public static String uwEstDaysToRepay{
            get{
                if(opportunity.Est_Days_to_Repay__c != null){
                     return ''+opportunity.Est_Days_to_Repay__c;    
                }
                else{
                    return '';
                }                              
            }private set;
        }
        
        public static String uwNewAdvancePrice{
            get{
                if(opportunity.New_Advance_Price__c != null){
                    return ''+opportunity.New_Advance_Price__c;     
                }
                else{ return '';}
                                 
            }private set;
        }
        
        /*public static String previousAccountPercentPaidOff{
            get{
                if(opportunity.Percent_Paid_Off__c != null){
                    return ''+opportunity.Percent_Paid_Off__c;  
                }
                else{ return '';}
                                             
            }private set;
        }
        
        public static String UWRePriceReasons{
            get{
                String UW_Re_Price_Reasons_c = '';
                Set<String> s1= new Set<String>{'1st & 2nd month ROI < 50% Ren','1st & 2nd months ROI < 60%','1st month ROI < 50% Ren' ,
                                '1st month ROI < 60%','Bank statement do not support GS','Bank Statement negative ending balance',
                                'CC statements do not match Sales pricing','Credit','Credit Committee Re-price','Currently Underperforming',
                                'Decline in CC Volume','Exceeds max split for business type','Exceeds Max Term for ROI 40-49',
                                'Excessive Returned Checks','High Risk Business','Increase due to competitor balance','Inflated Gross Sales',
                                'Insufficient Batching','Low Batching','Merchant requested higher advance','Merchant requested less monies',
                                'Merchant requested lower split','No Longer offer Product Type','Requested Higher Split','On Prohibited List',
                                'Pricing Approved by Sr. Management','Revised Card Type Receivables','Seasonality','Term – Bad SCF',
                                'Term is too long for small advance Amt','Too High Split Increase','Time Remaining on Lease','Time in Business'};
                for(String s: s1){                  
                    if(opportunity.Re_Price_Reasons__c != null && opportunity.Re_Price_Reasons__c.contains(s)){
                        UW_Re_Price_Reasons_c = UW_Re_Price_Reasons_c + s + '\n';                               
                    }
                    else{
                        UW_Re_Price_Reasons_c = UW_Re_Price_Reasons_c + '';
                    }
                }
                return UW_Re_Price_Reasons_c;     
            }private set;
        }*/
        
        /*public static String UWUnderwriterAssigned{
            get{
                if(opportunity.Underwriter_Assigned__c != null){
                    return opportunity.Underwriter_Assigned__c;                 
                }
                else{ return '';}
            }private set;
        } */
        
        /*public static String UWProcessingNotes{
            get{
                if(opportunity.UW_Processing_Notes__c != null){
                    return opportunity.UW_Processing_Notes__c;                  
                }
                else{ return ''; }                    
            }private set;
        }*/
        /********* END undewritting oject fields****************/
        
        public static String estimatedDailyRepay{
            get{
                if(opportunity.Product__c != null && (opportunity.Product__c == 'Loan' || opportunity.Product__c == 'Loan w/MCA pricing' || 
                									  opportunity.Product__c == 'High Risk Loan' || opportunity.Product__c == 'Syndication Loan w/MCA Pricing'))
                {
                    if(opportunity.Pay_Back_Amount__c == null || opportunity.Loan_Term_Days__c == null || opportunity.Loan_Term_Days__c == 0 ){
                        return '' + 0;
                    }
                    else{
                        return '' + (opportunity.Pay_Back_Amount__c / opportunity.Loan_Term_Days__c) ;
                    }
                }
                else{
                    if(opportunity.Pay_Back_Amount__c == null || opportunity.Estimated_Days_to_Repay__c == null || opportunity.Estimated_Days_to_Repay__c == 0){
                        return '' + 0;
                    }
                    else{
                        return '' + (opportunity.Pay_Back_Amount__c / opportunity.Estimated_Days_to_Repay__c);
                    }
                } 
            }private set;
        }
        
        /*public static String federalTaxID{
            get{
                if(opportunity.Account.FederalTaxID__c != null){
                    return opportunity.Account.FederalTaxID__c;                 
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
        /*public static String feeRevenue{
            get{
                if(opportunity.Pay_Back_Amount__c != null && opportunity.New_Advance_Amount__c != null){
                    return '' + (opportunity.Pay_Back_Amount__c - opportunity.New_Advance_Amount__c);   
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
       /* public static String firstFundingDate{
            get{
                if(opportunity.Account.First_Funding_Date__c != null){
                    return '' + opportunity.Account.First_Funding_Date__c;                  
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
        public static integer flag1FICO{
            get{
                if(ccApplicant1FICO < 500 || (opportunity.Applicant_2_FICO__c < 500 && opportunity.Applicant_2_FICO__c > 0)){
                    return 1;
                }
                else{
                    return 0;
                }
            }private set;
        }
        
        public static Integer flag3Mortgage{
            get{
                if(opportunity.Mortgage_Delinquent__c =='MODIFICATION AGREEMENT' || opportunity.Mortgage_Delinquent__c =='NO' || opportunity.Mortgage_Delinquent__c =='30 DPD'){
                    return 0;
                }
                else if(opportunity.Mortgage_Delinquent__c =='60 DPD' ){
                    return 2;
                }
                else{
                    return 1;
                }
            }private set;
        }
        
        /*public static String flagLateRepay{
            get{
                //"Total_Days_To_Repay__c" was not found.
                //if(opportunity.Estimated_Days_to_Repay__c != null && opportunity.Total_Days_To_Repay__c != null){
                //    return opportunity.Estimated_Days_to_Repay__c - opportunity.Total_Days_To_Repay__c; 
                //}
                else{
                   // return '';
                //}
                return '';
            }private set;
        }*/
        
        public static Integer fundedFlag{
            get{
                if(opportunity.Funded_by_WC__c == null){
                    return 0;
                }
                else{
                    return 1;
                }
            }private set;
        }
        
        public static String fundedAmount{
            get{
                if(fundedFlag != null && fundedFlag == 1){
                    return '' + opportunity.New_Advance_Amount__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        /*public static String fundedByWCDaysCount{
            get{
                //always return 0.
                //if(opportunity.Funded_by_WC__c != null && opportunity.New_Advance_Amount__c != null){
                 //   return (NOW()- opportunity.Funded_by_WC__c)- (NOW()-opportunity.Funded_by_WC__c)"
               // }
                //else{
                 //   return '';
                //}
                                return '';
            }private set;
        }*/
        
        /*public static Integer fundingRate{
            get{
                if(fundedFlag != null){
                    return fundedFlag; 
                }
                else{
                    return 0;
                }
            }private set;
        }*/
        
       /* public static String gregTotalSuccess{
            get{
                //"Greg_Success_Number__c " has been already deleted.
                return '';
            }private set;
        }
        
        public static String hiddenPartnerEmail1{
            get{
                if(opportunity.Campaign.Update_Partner_Email_1__c != null){
                    return opportunity.Campaign.Update_Partner_Email_1__c;  
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String hiddenPartnerEmail2{
            get{
                if(opportunity.Campaign.Update_Partner_Email_2__c != null){
                    return opportunity.Campaign.Update_Partner_Email_2__c;  
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String hiddenPartnerEmail3{
            get{
                if(opportunity.Campaign.Update_Partner_Email_3__c != null){
                    return opportunity.Campaign.Update_Partner_Email_3__c;  
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
        /*public static String hiddenPartnerEmail4{
            get{
                if(opportunity.Campaign.Update_Partner_Email_4__c != null){
                    return opportunity.Campaign.Update_Partner_Email_4__c;  
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String hiddenPartnerEmail5{
            get{
                if(opportunity.Campaign.Update_Partner_Email_5__c != null){
                    return opportunity.Campaign.Update_Partner_Email_5__c;  
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String hiddenPartnerEmail6{
            get{
                if(opportunity.Campaign.Update_Partner_Email_6__c != null){
                    return opportunity.Campaign.Update_Partner_Email_6__c;  
                }
                else{
                    return '';
                }
            }private set;
        }
        */
        
        public static String homePhone{
            get{ 
                if(objContact.Principal_Home_Phone__c != null){
                    return objContact.Principal_Home_Phone__c;
                }
                else{
                    return '';
                }                                         
                
            }private set;
        }
        
        /*public static String hoursToDecisionPreQual{
            get{
                if (opportunity.Pre_Qual_Decision_Date__c== null){
                    return null;
                }
                else if( opportunity.Approval_Process_Entry_Time__c == null ){
                    return null;
                }
                else{            
                    return ''+ ((opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime())*24) ;
                }
            }private set;
        }
        
        public static String hoursToReturnSiteSurvey{
            get{
                if (opportunity.Site_Survey_Ordered__c == null){
                    return '' + 0;
                }
                else if ( opportunity.Site_Survey_Available__c == null ){
                    return '' + 0;
                }
                else{            
                    return '' + (opportunity.Site_Survey_Available__c.getTime() - opportunity.Site_Survey_Ordered__c.getTime())*24 ;
                }
            }private set;
        }
        */
        
       /* public static String imageNowFlag{
            get{
                String imageURL ='/img/samples/flag_red.gif';
                String imageURLSecond = '/s.gif';
                if (opportunity.Submit_to_UW_Processing__c != null && (System.NOW().getTime() - opportunity.Submit_to_UW_Processing__c.getTime()) > (4166/100000) && (opportunity.ImageNow_Complete__c == null )){
                    return imageURL;
                }
                else{
                    return imageURLSecond;
                }
            }private set;
        }
        
        public static String internationalSale{
            get{
                String imageURL='/img/samples/light_yellow.gif';
                String imageURLSecond = '/s.gif';
                if(opportunity.International_Sale_Hidden_Text__c == 'Canada'){
                    return imageURL;
                }
                else{
                    return imageURLSecond;
                }
            }private set;
        }*/
        
        public static String BAIsTheBusinessTypeConsideredLuxury{
            get{
                if(opportunity.Business_Category__c != null && opportunity.Business_Category__c == '') {
                    return '';
                }
                if(opportunity.Business_Category__c != null && (opportunity.Business_Category__c== 'Computer-Related Retail' 
                    || opportunity.Business_Category__c== 'Consumer Electronics' 
                    || opportunity.Business_Category__c== 'Furniture'
                    || opportunity.Business_Category__c == 'Golf - Stores, Driving Ranges, Country Clubs'
                    || opportunity.Business_Category__c== 'Health Club'
                    || opportunity.Business_Category__c== 'Housing-Related'
                    || opportunity.Business_Category__c == 'Jewelry'
                    || opportunity.Business_Category__c== 'Limosine & Transportation'
                    || opportunity.Business_Category__c == 'Restaurant - Fine Dining' 
                    || opportunity.Business_Category__c== 'Maid and Cleaning Service'
                    || opportunity.Business_Category__c== 'Music and Music Instrument'
                    || opportunity.Business_Category__c== 'Tanning and Tattoo' 
                    || opportunity.Business_Category__c== 'Other Service Retail'
                    || opportunity.Business_Category__c== 'Other Product Retail'
                    || opportunity.Business_Category__c== 'Promotions & Advertising'
                    || opportunity.Business_Category__c== 'Automotive - Transmission')){
                    return 'Yes';
                }
                else{
                    return 'No';
                }
            }private set;
        }
        
        /*  public static String lastOpp{
            get{
                if(opportunity.Account.Most_Recent_Funded_Renewal_Date__c == timeForRenewalDate){
                    return '' + 1;
                }
                else{
                    return '' + 0;
                }
            }private set;
        }
        
        public static String lastRenwalVsCreatedDate{
            get{
                if(opportunity.Renewal__c){
                    if(opportunity.Account.Last_Renewal_Date__c == opportunity.CreatedDate){        
                        return '' + 1;
                    }
                    else{
                        return '' + 0;
                    }
                }        
                else
                {
                    if(opportunity.Account.Last_Created_Opportunity__c == opportunity.CreatedDate){
                        return '' + 2;
                    }
                    else{
                        return '' + 0;
                    }
                } 
            }private set;
        }
        
       public static String legalName{
            get{
                if(opportunity.Account.Legal_Name__c != null){
                    return '' + opportunity.Account.Legal_Name__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String merchantInterviewCompleted{
            get{
                if(objMerchant.Merchant_Interview_Completed_Date__c != null){
                    return '' + objMerchant.Merchant_Interview_Completed_Date__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        
        public static String merchantPhone{
            get{
                if(opportunity.Account.Phone != null){
                    return opportunity.Account.Phone;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        
        public static String missingItemsNeeded{
            get{
                String s='The Following Items are Missing, Please update before submitting to QC' + '\n';
                if(opportunity.Account.FederalTaxID__c == null && opportunity.Account.FederalTaxID__c == ''){
                    s = s+ '- Federal Tax ID, Update In Account' + '\n';
                }
                
                if(OwnedBusinessSince == null){
                    s = s+ 'Owned Business Since, Update In Account' + '\n';
                }
                
                //if(opportunity.Account.DateBusinessStarted__c == null){
                // s = s+ '- Business Open Date, Update In Account' + '\n';
                //}
                
                if(opportunity.Product__c == null && opportunity.Product__c == ''){
                    s = s+ '-Product Type, Update In Opportunity  ' + '\n';
                }
                return s;
            }private set;
        }
        
       
        public static String missingQCItems{
            get{
                String s='';
                if(opportunity.Mortgage_Delinquent__c == ''){
                    s = s +  'Mortgage Delinquent' + '\n';
                }
                
                if(opportunity.Tax_Liens_Open__c == ''){
                    s = s +  'Tax Liens Open' + '\n';
                }
                        
                if(opportunity.Judgements_Open__c  == ''){
                    s = s + 'Judgments Open' + '\n';
                }
                        
                if(opportunity.Individual_Bankruptcies__c  == Null) {
                    s = s + 'Individual Bankruptcies' + '\n';
                }
                        
                if(opportunity.QC_Calculator_Average__c  == Null) {
                    s = s + 'QC Cal Avg' + '\n';
                }
                        
                if(opportunity.AE_Calculator_Average__c == Null) {
                    s = s + 'AE Calculator Average' + '\n';
                }
                        
                if(opportunity.Bank_Name__c  == Null) {
                    s = s + 'Bank Name' + '\n';
                }
                        
                if(opportunity.Account_Number_For_Funding__c  == Null) {
                    s = s + 'Acct # for Funding' + '\n';
                }
                        
                if(opportunity.Routing_Number__c  == Null) {
                    s = s + ' Routing #' + '\n';
                }
                       
                if(opportunity.Type_of_Entity__c  == Null) {
                    s = s + 'Type of Entity' + '\n';
                }
                       
                //formula field in opp  
                //if(opportunity.ContactID__c  == Null) {
                  //  s = s + 'Contact is Missing' + '\n';
                //}
                
                        
                if(opportunity.FRSA_legal_name_same_as_in_Salesforce__c  == Null) {
                    s = s + 'FRSA legal name same as SF' + '\n';
                }
                        
                if(opportunity.Confirmed_legal_name_in_Westlaw__c  == Null) {
                    s = s + 'Conf. legal name in Westlaw ' + '\n';
                }
                        
                if(opportunity.CH_Business_Ownership_Confirmed__c  == Null) {
                    s = s + 'Conf. owner(s) in Westlaw ' + '\n';
                }
                        
                if(opportunity.Eligible_Photo_ID__c == Null) {
                    s = s + ' Eligible Photo ID ' + '\n';
                }
                        
                if(opportunity.Confirmed_Westlaw_real_property_search__c == Null) {
                    s = s + 'Conf. Westlaw real property search ' + '\n';
                }
                        
                if(opportunity.Business_Status__c  == Null) {
                    s = s + 'Business Status' + '\n';
                }
                return s;
            }private set;
        }
        
        public static String MissingQCItems2{
            get{
                String s='';
                if(opportunity.BAM_Match_Selection__c == ''){
                    s = s +  'BAM Match' + '\n';
                }
                
                if(opportunity.Other_UCC_Filings__c == ''){
                    s = s +  'Other UCC' + '\n';
                }
                        
                if(opportunity.Confirmed_legal_name_in_Westlaw__c  == ''){
                    s = s + 'Confirmed_legal_name_in_Westlaw__c' + '\n';
                }
                        
                if(opportunity.CH_Business_Ownership_Confirmed__c  == Null) {
                    s = s + 'Confirmed principal owner' + '\n';
                }
                        
                if(opportunity.Eligible_Photo_ID__c  == Null) {
                    s = s + 'Photo ID' + '\n';
                }
                        
                if(opportunity.EC_X4_consecutive_months_of_processing__c == Null) {
                    s = s + '<4 months of processing' + '\n';
                }
                        
                if(opportunity.EC_X12_separate_daily_deposits_per_month__c  == Null) {
                    s = s + '<12 daily deposits' + '\n';
                }
                        
                if(opportunity.EC_Company_in_business_6_months__c  == Null) {
                    s = s + 'Company in business <1 year' + '\n';
                }
                        
                if(opportunity.Business_Category__c  == Null) {
                    s = s + 'Business Category' + '\n';
                }
                       
                if(opportunity.BA_X2_years_in_business__c == Null) {
                    s = s + '<2 years in business' + '\n';
                }
                        
                if(opportunity.Business_name_check_match_contract__c  == Null) {
                    s = s + 'Business name on check match contract' + '\n';
                }
                        
                if(opportunity.Does_Merchant_Own_The_Business_Location__c  == Null) {
                    s = s + 'Does Merchant Own The Business Location?' + '\n';
                }
                        
                if(opportunity.BA_FICO_score_500__c  == Null) {
                    s = s + 'Fico score<500' + '\n';
                }                       
                
                return s;
            }private set;
        }
        
        public static String mobile{
            get{
                if(objContact.Phone != null){
                    return objContact.MobilePhone;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String monthlyCashflow1{
            get{
                if(opportunity.Month_Average_Gross_Sale_1__c != null && opportunity.Monthly_Gross_Debits_1__c != null){
                    return '' + (opportunity.Month_Average_Gross_Sale_1__c - opportunity.Monthly_Gross_Debits_1__c);
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String monthlyCashflow2{
            get{
                if(opportunity.Month_Average_Gross_Sales_2__c != null && opportunity.Monthly_Gross_Debits_2__c != null){
                    return '' + (opportunity.Month_Average_Gross_Sales_2__c - opportunity.Monthly_Gross_Debits_2__c);
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String monthlyCashflow3{
            get{
                if(opportunity.Monthly_Gross_Deposit_3__c != null && opportunity.Monthly_Gross_Debits_3__c != null){
                    return '' + (opportunity.Monthly_Gross_Deposit_3__c - opportunity.Monthly_Gross_Debits_3__c);
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String monthlyCashflow4{
            get{
                if(opportunity.Monthly_Gross_Deposit_4__c != null && opportunity.Monthly_Gross_Debits_4__c != null){
                    return '' + (opportunity.Monthly_Gross_Deposit_4__c - opportunity.Monthly_Gross_Debits_4__c);
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String monthsWithCurrentProcessor{
            get{
                if(opportunity.Account.Months_with_Current_Processor__c != null){
                    return '' + opportunity.Account.Months_with_Current_Processor__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String mostRecentOpp{
            get{
                if(opportunity.Account.Last_Created_Opportunity__c == opportunity.CreatedDate){ 
                    return '' + 1;
                }
                else{
                    return '' + 0;
                }
            }private set;
        }
        
        public static String multiplesOwners{
            get{
                if(objContact.OwnershipPercentage__c != null && objContact.OwnershipPercentage__c >= 1 ){
                    return '' + 0;
                }
                else{
                    return '' + 1;
                }
            }private set;
        }
        
        public static String NumberOfBusinessesInAdvance{
            get{
                if(opportunity.Account.Number_of_Locations__c != null){
                    return '' + opportunity.Account.Number_of_Locations__c;
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
        public static String numberOfLocations{
            get{
                if(opportunity.Account.Number_of_Locations__c != null){
                    return '' + opportunity.Account.Number_of_Locations__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        public static String numberOfTerminalsAtLocation{
            get{
                if(opportunity.Account.Number_of_Terminals_at_Location__c != null){
                    return '' + opportunity.Account.Number_of_Terminals_at_Location__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        /*public static String OppIDNumberField{
            get{
                //Advanced Id has been deleted.
                //if(opportunity.Advance_ID__c != null){
                //    return '' + Integer.valueof(opportunity.Advance_ID__c);
                //}
                //else{
                //    return '';
                //}
                return '';
            }private set;
        }*/
        
        public static String ownedBusinessSince{
            get{
                if(opportunity.Account.Owned_Business_Since__c != null){
                    return '' + opportunity.Account.Owned_Business_Since__c;
                }
                else{
                    return '';
                }
            }private set;
        }
        
        /*public static String partnerInformation{
            get{
                return 'Campaign Contact: '+ opportunity.Campaign.Campaign_Contact__c + '\n' 
                + 'Campaign Contact Number:' + Campaign.Campaign_Contact_Number__c + '\n'
                + 'Campaign Contact Email: '  + opportunity.Campaign.Campaign_Contact_Email__c;
            }private set;
        }
        */
        
        /*public static String PreQualPassFlag{
            get{
                if(opportunity.Pre_Qual_Decision__c != null && opportunity.Pre_Qual_Decision__c == 'PASS'){
                    return '' + 1;
                }
                else{
                    return '' + 0;
                }
            }private set;
        }*/
        
       /* public static String PreQualCount{
            get{
                if(opportunity.Type != null && (opportunity.Type =='Pre-Qualification New' || opportunity.Type=='Pre-Qualification Renewal')){
                    return '' + 1;
                }
                else{
                    return '' + 0;
                }
            }private set;
        }*/
        
        /*public static String PreQualFlag{
            get{
                if(opportunity.Pre_Qual_Decision_Date__c == null){
                    return '' + 1;
                }
                else{
                    return '' + 0;
                }
            }private set;
        }*/
        
        /*public static String PreQualFlagTime{
            get{
                if(opportunity.Pre_Qual_Decision_Date__c == null){
                    if(opportunity.Approval_Process_Entry_Time__c != null && ((System.now().getTime() - opportunity.Approval_Process_Entry_Time__c.getTime()) * 24) > 1)
                    {
                        return '' + 1;
                    }
                    else{
                        return '' + 0;
                    }
                }
                else{
                    return '' + 0;
                }
            }private set;
        }*/
        
        /*public static String primaryCampaignSource{
            get{
                if(opportunity.Campaign.Type == 'Internet'){
                    return 'Internet';
                }
                else if(opportunity.Campaign.Type == 'Rapid Advance Internal Campaign'){
                    return 'Rapid Advance Internal Campaign';
                }
                else{
                    return '' + Campaign.Name;
                }               
            }private set;
        }*/
        
        public static String primaryContactInfo{
            get{
                if(objcontact != null){
                    String firstName = '';
                    if(objContact.FirstName != null){
                        firstName = objContact.FirstName;
                    }
                    String lastName = '';
                    if(objContact.LastName != null){
                        lastName = objContact.LastName;
                    }
                    Decimal ownerShipPer = 0;
                    if(objcontact.OwnershipPercentage__c != null){
                        ownerShipPer = objcontact.OwnershipPercentage__c;
                    }
                    String principal1StreetAddress = '';
                    if(objContact.Principal_1_Street_Address__c != null){
                        principal1StreetAddress = objContact.Principal_1_Street_Address__c;
                    }
                    String principal1City = '';
                    if(objContact.Principal_1_City__c != null){
                        principal1City = objContact.Principal_1_City__c;
                    }
                    String principal1State = '';
                    if(objContact.Principal_1_State__c != null){
                        principal1State = objContact.Principal_1_State__c;
                    }
                    String principal1Zip = '';
                    if(objContact.Principal_1_Zip__c != null){
                        principal1Zip = objContact.Principal_1_Zip__c;
                    }                   
                    
                    String mobilePhone = '';
                    if(objContact.MobilePhone != null){
                        mobilePhone = objContact.MobilePhone;
                    }
                    
                    if(objContact.Fax != null){
                        fax = objContact.Fax;
                    }
                    String email = '';
                    if(objContact.Email != null){
                        email = objContact.Email;
                    }
                    return 'Primary Contact Info:'+ '<br/>'
                    + 'Full Name: '+  firstName +  ' ' + lastName +'<br/>' 
                    + 'Ownership: '+ ownerShipPer*100 +'%'+ '<br/>' 
                    + 'Address: ' +'<br/>' 
                    + principal1StreetAddress +'<br/>' 
                    +  principal1City +', '+ principal1State +' '+ principal1Zip +'<br/>' 
                    + 'Phone: '+ homePhone +'<br/>' 
                    + 'Mobile: ' + '' + mobilePhone +'<br/>' 
                    + 'Fax: '+fax+'<br/>' 
                    + 'Email: ' + email; 
                }
                else{
                    return '';
                }                             
            }private set;
        }
        
        /*public static String primarySignerSSN{
            get{
                if(objcontact.SS__c !=  null){
                    return objcontact.SS__c;
                }
                else{
                    return '';
                }                                
            }private set;
        }*/
        
        /*public static String principal1Name{
            get{
                if(objcontact.FirstName !=  null){
                    return objcontact.FirstName;
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
        /*public static String advanceAmount{
            get{
                if(opportunity.Amount !=  null){
                    return '' + opportunity.Amount;
                }
                else{
                    return '';
                }
            }private set;
        }*/
        
        /*public static String QCFlag{
            get{
                if(opportunity.Deal_Ready_For_Processing__c ==  null){
                    return '' + 0;
                }
                else{
                    return '' + 1;
                }               
            }private set;
        }*/
        
        /*public static String RACompany{
            get{
                if(opportunity.Product__c != null && opportunity.Product__c == 'Decline Program'){
                    return 'Business Funding LLC';
                }
                else{
                    if(opportunity.Product__c != null && opportunity.Product__c == 'Loan' || opportunity.Product__c == 'Loan w/MCA pricing' || opportunity.Product__c == 'ACH Fixed' || 
                        opportunity.Product__c == 'Syndication ACH Fixed' || opportunity.Product__c == 'Syndication Loan' || 
                        opportunity.Product__c == 'High Risk Loan'){
                        return 'Small Business Financial Solutions LLC';
                    }
                    else{
                        if(opportunity.Product__c != null   ){ //
                            return 'Small Business Financial Solutions LLC';
                        }
                        else{
                            return 'RapidAdvance';
                        }
                    }
                }               
            }private set;
        }*/
        
        /*public static String rescindedApprovals{
            get{
                if( opportunity.Initial_underwriting_approval__c != null && opportunity.Initial_underwriting_approval__c.contains('Approved') && (opportunity.Underwriting_Approval__c == 'Rescinded by merchant'|| 
                opportunity.Underwriting_Approval__c =='Rescinded by Processing' ||  opportunity.Underwriting_Approval__c =='Rescinded by RapidAdvance' || 
                opportunity.Underwriting_Approval__c =='Rescinded by Underwriting')){
                    return '' + 1;
                }
                else{
                    return '' +0;
                }               
            }private set;
        }*/
        
        public static String qcscfAlert{
            get{
                if(opportunity.Account.BillingPostalCode != null)
                {
                    String value=opportunity.Account.BillingPostalCode.trim().substring(0,2);
                    String s1 = '327,328,329,330,334,335,336,337,338,339,341,342,346,347,349,850,852,853,889, 890,891,900,901,902,903,904,905,906,907,908,910,911,912,913,914,915,916,917,918,922,923,924,925,926,927,928,930,931,932,933,934,935,936,937,938,939';
                    if(s1.Contains(value)){
                        return 'Yes';
                    }
                    else{
                        return 'No Alert';
                    }
                }
                else{
                    return 'No Alert';
                }                
            }private set;
        }
        
        /* public static String searchEngineOpp{
            get{       
                String SearchEngineOpp = '';
                if(opportunity.Tracking_Code_Opp__c == null){
                    return '';
                }       
                if(opportunity.Tracking_Code_Opp__c.startsWith('BIZ')){
                    SearchEngineOpp = 'BIZ';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('cGGL')){
                    SearchEngineOpp='cGGL';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('GGL')){
                    SearchEngineOpp='GGL';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('cYHO')){
                    SearchEngineOpp='cYHO';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('YHO')){
                    SearchEngineOpp='YHO';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('MSN')){
                    SearchEngineOpp='MSN';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('cMSN')){
                    SearchEngineOpp='cMSN';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('SSPYHO')){
                    SearchEngineOpp='SSPYHO';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('adknowledge')){
                SearchEngineOpp='adknowledge';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('arDirM')){
                    SearchEngineOpp='DirectM-ar';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('Linkshare')){
                    SearchEngineOpp='Linkshare';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('VD')){
                    SearchEngineOpp='Venture-Direct';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('adDirM')){
                    SearchEngineOpp='DirectM-ad';
                }
                else if(opportunity.Tracking_Code_Opp__c.startsWith('SpanGGL')){
                    SearchEngineOpp='SpanGGL';
                }
                else {
                    SearchEngineOpp='NA';
                }    
                return SearchEngineOpp;     
            }private set;
        }
        
        public static String signedFlag{
            get{
                if(opportunity.Signed_Contract_Received__c == null)
                {
                    return '' + 0;
                }
                else{
                    return '' + 1;
                }                
            }private set;
        } 
        
        public static String simpleBusinessCategory{
            get{    
                String  opportunityBusinessCategoryStr = '';
                if( opportunity.Business_Category__c=='Automotive - Body Repair, Collision, Painting' || 
                    opportunity.Business_Category__c=='Automotive - Brake and Muffler' || 
                    opportunity.Business_Category__c=='Automotive - General Repair, Truck, RV' ||
                    opportunity.Business_Category__c=='Automotive - Quick Sevice, Lube, Tune-Up'||
                    opportunity.Business_Category__c=='Automotive - Tire, Glass'||
                    opportunity.Business_Category__c=='Automotive - Towing & Emergency Road Service'||
                    opportunity.Business_Category__c=='Automotive - Transmission'||
                    opportunity.Business_Category__c=='Car Alarm Supplier'||
                    opportunity.Business_Category__c=='Motorcycle Repair'||
                    opportunity.Business_Category__c=='Motorcycle Sales'){                  
                        opportunityBusinessCategoryStr='Automotive';
                    }
                    else if(opportunity.Business_Category__c == 'Bar' || opportunity.Business_Category__c == 'Comedy Clubs' || opportunity.Business_Category__c == 'Night Clubs'){
                        opportunityBusinessCategoryStr='Bar/Night-Club';
                    }
                    else if(opportunity.Business_Category__c=='Bicycle Repair' || opportunity.Business_Category__c=='Bicycle Sales' || opportunity.Business_Category__c=='Bicycle Repair'){
                        opportunityBusinessCategoryStr='Bicycle Shop';
                    }
                    else if(opportunity.Business_Category__c=='Clothing - Shoe Store' || opportunity.Business_Category__c=='Shore-Store, Repair' || opportunity.Business_Category__c=='Swimwear Accessories Retail'){
                        opportunityBusinessCategoryStr='Clothing & Apparel';
                    }
                    else if(opportunity.Business_Category__c=='Audio Equipment' || opportunity.Business_Category__c=='Computer-Related Retail' || opportunity.Business_Category__c=='Electronics'){
                        opportunityBusinessCategoryStr='Consumer Electronics';
                    }
                    else if(opportunity.Business_Category__c=='Eyewear and Optical' ){
                        opportunityBusinessCategoryStr='Eye Care';
                    }
                    else if(opportunity.Business_Category__c=='Carpet Store' || opportunity.Business_Category__c=='Tile/Carpet'){
                    opportunityBusinessCategoryStr='Flooring';
                    }
                    else if(opportunity.Business_Category__c=='Arrangements' ){
                        opportunityBusinessCategoryStr='Florists';
                    } 
                    else if(opportunity.Business_Category__c=='Food - Bakery' || opportunity.Business_Category__c=='Food - Convenience & Variety' || opportunity.Business_Category__c=='Food - Deli, Meat, Seafood, Other' || opportunity.Business_Category__c=='Food - Grocery Store'){
                        opportunityBusinessCategoryStr='Food Store';
                    }
                    else if(opportunity.Business_Category__c=='Health Club Monthly Membership' || opportunity.Business_Category__c=='Spa'){
                        opportunityBusinessCategoryStr='Health Club';
                    } 
                    else if(opportunity.Business_Category__c=='Roofing/Siding'){
                        opportunityBusinessCategoryStr='Housing-Related';
                    }
                    else if(opportunity.Business_Category__c=='Internet Sales (Store Front)' || opportunity.Business_Category__c=='IT Sales-No Store Front' || opportunity.Business_Category__c=='Online Beauty Products' || opportunity.Business_Category__c=='On-Line Wholesale'){
                        opportunityBusinessCategoryStr='Internet Based';
                    }
                    else if(opportunity.Business_Category__c=='Lawn & Garden Nursery'){
                        opportunityBusinessCategoryStr='Lawn & Garden';
                    }
                    else if(opportunity.Business_Category__c=='Antiques/Collectibles' || opportunity.Business_Category__c=='Book and Stationary' || opportunity.Business_Category__c=='Dollar Store' || opportunity.Business_Category__c=='Kiosks'){
                        opportunityBusinessCategoryStr='Other Product Retail';
                    }
                    else if(opportunity.Business_Category__c=='Billing Services' || opportunity.Business_Category__c=='Check Cashing Companies' || opportunity.Business_Category__c=='Hair Replacement/Clubs' || opportunity.Business_Category__c=='Home Based Door/Door' || opportunity.Business_Category__c=='Locksmiths' || opportunity.Business_Category__c=='Pet Washing & Grooming'){
                        opportunityBusinessCategoryStr='Other Service Retail';
                    }
                    else if(opportunity.Business_Category__c=='Print and Sign Center'){
                        opportunityBusinessCategoryStr='Printing/Graphic Design';
                    }
                    else if(opportunity.Business_Category__c=='Catering' || opportunity.Business_Category__c=='Coffee Shop' || opportunity.Business_Category__c=='Dinner Theatre' || opportunity.Business_Category__c=='Restaurant - Casual Dining' || opportunity.Business_Category__c=='Restaurant - Fast Food & Carry Out' || opportunity.Business_Category__c=='Restaurant - Fine Dining'){
                        opportunityBusinessCategoryStr='Restaurants';
                    }
                    else if(opportunity.Business_Category__c=='Catering' || opportunity.Business_Category__c=='Daycare' || opportunity.Business_Category__c=='Schools' || opportunity.Business_Category__c=='Schools-Private/Elementary/High School'){
                        opportunityBusinessCategoryStr='School and Day Care';
                    }
                    else if(opportunity.Business_Category__c=='Cigar Cigarette & Tobacco Dealer-Retail'){
                        opportunityBusinessCategoryStr='Tobacco Shop';
                    }
                    else if(opportunity.Business_Category__c=='Professional Service - All Doctors, Lawyers Total'){
                        opportunityBusinessCategoryStr='Professional Service - All Doctors, Lawyers';
                    }
                    else{
                        opportunityBusinessCategoryStr=opportunity.Business_Category__c;
                    }
                    return opportunityBusinessCategoryStr;
            }private set;
        }*/
        
        public static String siteSurveyAvailableDaysCount{
            get{
                //Site_Survey_Available_Due_Date__c has been deleted
                /*if(opportunity.Site_Survey_Available_Due_Date__c != null && opportunity.Site_Survey_Available__c != null){
                     
                    return ''; //(System.Today()- opportunity.Site_Survey_Available_Due_Date__c)-(System.Noe()- opportunity.Site_Survey_Available__c);
                }
                else{
                    return '';
                }*/
                return ''; 
            }private set;
        }
        
        public static String SiteSurveyAvailableFlagDel{
            get{
                //Site_Survey_Available_Due_Date__c has been deleted
                /*if(opportunity.Site_Survey_Available__c==null && opportunity.Site_Survey_Available_Due_Date__c < System.Today() ){
                    return  '/img/samples/flag_red.gif';                
                }
                else{               
                    return '/s.gif';
                }*/
                return '';        
            }private set;
        }
        
        public static String siteSurveyOrderedFlag{
            get{
                //Site_Survey_Available_Due_Date__c has been deleted
                /*if(opportunity.Site_Survey_Ordered__c==null && opportunity.Site_Survey_Ordered_Due_Date__c < System.Today() ){
                    return  '/img/samples/flag_red.gif';                
                }
                else{               
                    return '/s.gif';
                }*/
                return '';
            }private set;
        }
        
        public static String siteSurveysOrdredDaysCount{
            get{
                //Site_Survey_Available_Due_Date__c has been deleted
                return ''; // + (System.TODAY() - opportunity.Site_Survey_Ordered_Due_Date__c)-(System.NOW() - opportunity.Site_Survey_Ordered__c);              
            }private set;
        }
        
        public static String submittedToUWFlag{
            get{
                //Site_Survey_Available_Due_Date__c has been deleted
                /*if(opportunity.Submit_to_UW_Processing__c == null && opportunity.Site_Survey_Ordered_Due_Date__c < System.Today() ){
                    return  '' + 0;             
                }
                else{               
                    return '' + 1;
                }*/
                return '';
            }private set;
        }
        
        /*public static String swiftCampaign{
            get{
                if(opportunity.Campaign.SWIFT_Campaign__c != null && opportunity.Campaign.SWIFT_Campaign__c){
                    return  'Yes';              
                }
                else{               
                    return 'No';
                }
            }private set;
        } */
        
        public static Date timeForRenewalDate{
            get{                                
                return (opportunity.CloseDate + 150);
            }private set;
        }
        
        public static String tmWebDeclineReasons{
            get{
                String tmWebDeclineReasonsStr = '';
                //Test_Program_Flag__c has been deleted
                /*if(opportunity.Test_Program_Flag__c == 1){
                    TMWebDeclineReasonsStr='Pass';
                }
                else{
                    TMWebDeclineReasonsStr = 'Failed:'+'\n';
                }*/
                if( QCSCFAlert == 'Yes'){
                    tmWebDeclineReasonsStr=tmWebDeclineReasonsStr+'SCF'+'\n';
                }
                else{
                    tmWebDeclineReasonsStr=tmWebDeclineReasonsStr+'';
                } 
                if(ccApplicant1FICO  <460){
                    tmWebDeclineReasonsStr=TMWebDeclineReasonsStr+'FICO' + '\n';
                }
                else{
                    tmWebDeclineReasonsStr=tmWebDeclineReasonsStr+'';
                } 
                if(opportunity.Mortgage_Delinquent__c == '90 days+' || opportunity.Mortgage_Delinquent__c == 'Foreclosure/Forbearance < 1yr out'){
                    tmWebDeclineReasonsStr = tmWebDeclineReasonsStr +'Mortgage' + '\n';
                }
                else{
                    tmWebDeclineReasonsStr=tmWebDeclineReasonsStr;
                }
                if(opportunity.BAM_Match_Selection__c == 'YES'){
                    tmWebDeclineReasonsStr=tmWebDeclineReasonsStr+ 'BAM' + '\n';
                }
                else{
                    tmWebDeclineReasonsStr=tmWebDeclineReasonsStr+'';
                } 
                /*if(Double.valueOf(Math.Floor((System.Today()-opportunity.Account.DateBusinessStarted__c)/365.2425))<2){
                    TMWebDeclineReasonsStr=TMWebDeclineReasonsStr+ 'Business Open Date<2yrs' + '\n';
                }
                else{ 
                TMWebDeclineReasonsStr=TMWebDeclineReasonsStr+'';
                } 
                if( Double.valueOf(Math.Floor((System.Today()-OwnedBusinessSince)/365.2425))<1){
                   TMWebDeclineReasonsStr=TMWebDeclineReasonsStr+ 'Owned since<1yr' +'\n';
                }
                else{
                   TMWebDeclineReasonsStr=TMWebDeclineReasonsStr+'';
                }*/
               return tmWebDeclineReasonsStr;
            }private set;
        }
        
        public static String totalDaysForDataEntry{
            get{                                
                if(opportunity.Data_Entry_Date__c != null && opportunity.Deal_Ready_For_Processing__c != null){
                    return  '' + (opportunity.Data_Entry_Date__c.getTime() - opportunity.Deal_Ready_For_Processing__c.getTime());       
                }
                else{ return '';}
            }private set;
        }
        
       /* public static String totalDaysInProcessingAndUW{
            get{                                
                if(opportunity.Date_Funded__c == null && opportunity.Deal_Ready_For_Processing__c != null){
                    return  '' + (opportunity.Date_Funded__c.getTime() - opportunity.Deal_Ready_For_Processing__c.getTime());       
                }
                else{               
                    return '';
                }
            }private set;
        }*/
        
        public static String totalDaysInQQAndUnderwriting{
            get{                                
                if(opportunity.Decision_Date__c != null && opportunity.Deal_Ready_For_Processing__c != null){
                    return  '' + (opportunity.Decision_Date__c.getTime() - opportunity.Deal_Ready_For_Processing__c.getTime());     
                }
                else{               
                    return '';
                }
            }private set;
        }
        
        public static String totalDaysToRepay{
            get{                                
                /*if(opportunity.Decision_Date__c == null && opportunity.Deal_Ready_For_Processing__c != null){
                    return  '' + (opportunity.Decision_Date__c.getTime() - opportunity.Deal_Ready_For_Processing__c.getTime());     
                }
                else{               
                    return '';
                }*/
                return '';
            }private set;
        }
        
        public static String totalDaysToDecision{
            get{                                
                if(opportunity.Decision_Date__c != null && opportunity.Data_Entry_Date__c != null){
                    return  '' + (opportunity.Decision_Date__c.getTime() - opportunity.Data_Entry_Date__c.getTime());       
                }
                else{               
                    return '';
                }
            }private set;
        }
        
        public static String typeOfBusiness{
            get{                                
                if(opportunity.Account.BusinessType__c != null){
                    return  '' + (opportunity.Account.BusinessType__c);     
                }
                else{ return '';}            
            }private set;
        }
        
        /* public static String uCCBusinessStructure{
            get{      
                if(opportunity.Account.BusinessStructure__c=='C-Corporation'){
                    return 'C-Corporation';
                }
                else if(opportunity.Account.BusinessStructure__c=='General Partnership'){
                    return 'General Partnership';
                }
                else if(opportunity.Account.BusinessStructure__c=='Limited Liability Corporation'){
                    return 'Limited Liability Corporation';
                }
                else if(opportunity.Account.BusinessStructure__c=='Limited Partnership'){
                    return 'Limited Partnership';
                }
                else if(opportunity.Account.BusinessStructure__c=='Proprietorship'){
                    return 'Proprietorship';
                }
                else{
                    return 'S-Corporation';
                }
            }private set;
        }*/
        
        public static Decimal yrsInBusiness{
            get{	
        		if(opportunity.CreatedDate != null && opportunity.Decision_Date__c == null && OwnedBusinessSince != ''){
        			Date OppCreatedDate = Date.newInstance(opportunity.CreatedDate.year(),opportunity.CreatedDate.month(),opportunity.CreatedDate.day());
                    return (Date.valueOf(OwnedBusinessSince).daysBetween(OppCreatedDate)/365.2425).setScale(2);
                    //(OppCreatedDate.year() - Date.valueOf(OwnedBusinessSince).year());
                }
                else if(opportunity.Decision_Date__c != null && OwnedBusinessSince != ''){
                	Date OppDecisionDate = Date.newInstance(opportunity.Decision_Date__c.year(),opportunity.Decision_Date__c.month(),opportunity.Decision_Date__c.day());
                	return (Date.valueOf(OwnedBusinessSince).daysBetween(OppDecisionDate)/365.2425).setScale(2);                	
					//return ((Date.newInstance(opportunity.Decision_Date__c.year(),opportunity.Decision_Date__c.month(),opportunity.Decision_Date__c.day())  - OwnedBusinessSince )/365.2425 );
                }
                return 0.0;
            }private set;
        }
        
        public static String zipAlert{
            get{    
                String zipAlertStr = '';  
                if(opportunity.B__c == null || opportunity.B__c == ''){
                    zipAlertStr='';
                }
                else{
                    String zipStr = opportunity.B__c.substring(0,2);
                    String s1 = '064, 086, 212, 300, 302, 303, 311, 334, 335, 336, 337, 338, 342, 346, 350, 351, 352, 380, 381, 383, 399, 440, 442, 450, 451, 452, 461, 462, 551, 553, 554, 555, 601, 631, 750, 751, 752, 753, 754, 760, 761, 762, 765, 766, 767, 770, 772, 773, 774, 775, 786, 787, 800, 801, 802, 804, 806, 807, 850, 852, 853, 853, 900, 901, 902, 903, 906, 906, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 935, 945, 946, 947, 953';
                    if(s1.Contains(zipStr)){
                        zipAlertStr='Yes';
                    }
                    else{ zipAlertStr='No'; }                    
                }
                return zipAlertStr;
            }private set;
        }
        
        //this field is not shown on VF page
        /*public static Decimal approximateWireAmount{
            get{
                if(opportunity.Renewal__c){
                    Decimal i = 0;
                    if( opportunity.Account.Current_Balance__c == null){
                        i = 0;      
                    }
                    else{
                        i = opportunity.Account.Current_Balance__c;
                    }
                    return opportunity.Amount - i;
                }
                else{
                    return opportunity.Amount   ;
                }               
            }private set;
        } */
        
        /*public static String preQualDecisionTimeHrs{
            get{
                if(opportunity.Pre_Qual_Decision_Date__c != null && opportunity.Approval_Process_Entry_Time__c != null){
                    if(opportunity.Approval_Process_Entry_Time__c.date() == date.newinstance(2013,01,18)){
                        return '' + math.abs(((opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime())*24)-86);
                    }
                    else{
                        if((opportunity.Pre_Qual_Decision_Date__c.day() - opportunity.Approval_Process_Entry_Time__c.day())>2){
                            return '' + math.abs(((opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime())*24)-62);
                        }
                        else if(math.abs((opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime())*24)>10){
                                return '' + math.abs((opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime())*24-
                                (opportunity.Pre_Qual_Decision_Date__c.day() - opportunity.Approval_Process_Entry_Time__c.day())*14);
                            }
                        else{
                            return ''+ (opportunity.Pre_Qual_Decision_Date__c.getTime() - opportunity.Approval_Process_Entry_Time__c.getTime())*24;
                        }                               
                    }
                }
                else{ return ''; }                               
            }private set;        
        }*/
        
       /* public static String processingInitialReviewTimeHrs{
            get{                
                if(opportunity.Processing_Initial_Review_Complete__c == null){
                    return null;
                }
                else{
                    if(opportunity.Processing_Rep_Assigned__c != null && opportunity.Processing_Initial_Review_Complete__c != null){
                        if(opportunity.Processing_Rep_Assigned__c.date() == date.newinstance(2013,01,18)){
                            return '' + math.abs(((opportunity.Processing_Initial_Review_Complete__c.getTime() - opportunity.Processing_Rep_Assigned__c.getTime())*24)-86);
                        }
                        else{
                            if((opportunity.Processing_Initial_Review_Complete__c.day() - opportunity.Processing_Rep_Assigned__c.day())>2){
                                return '' + (math.abs((opportunity.Processing_Initial_Review_Complete__c.getTime() - opportunity.Processing_Rep_Assigned__c.getTime())*24) - 62);
                            }
                            else if(math.abs((opportunity.Processing_Initial_Review_Complete__c.getTime() - opportunity.Processing_Rep_Assigned__c.getTime())*24)>10){
                                    return '' + (math.abs((opportunity.Processing_Initial_Review_Complete__c.getTime() - opportunity.Processing_Rep_Assigned__c.getTime())*24)-14);
                                }
                            else{
                                return '' + (opportunity.Processing_Initial_Review_Complete__c.getTime() - opportunity.Processing_Rep_Assigned__c.getTime())*24;
                            }
                        } 
                    }
                    else{ return ''; }                                                  
                }               
            }private set;        
        }*/
        
        // cc_Applicant_1_FICO__c Opportunity formula field 
       /* public static Decimal getcc_Applicant_1_FICO(Opportunity oppRecord){
            if (oppRecord != null && oppRecord.CRR__c != null){            
                if (oppRecord.CRR__r.FICO__c < 1000){
                    return oppRecord.CRR__r.FICO__c;
                }
                else { return null;}                      
            }
            return null;
        }
        
        // Flag1_FICO__c opportunity formula field
        public static integer getFlag1_FICO(Opportunity oppRecord){
            if(oppRecord != null){
                if(getcc_Applicant_1_FICO(oppRecord) < 500 || (oppRecord.Applicant_2_FICO__c < 500 && oppRecord.Applicant_2_FICO__c > 0)){
                    return 1;
                }
            }
            return 0;   
        }   */     
        
        public static Decimal ccApplicant1PrevFICO{
            get{
                if(opportunity.Previous_Opportunity__r.CRR__c == null){
                    return null ;
                }
                else{
                    if(opportunity.Previous_Opportunity__r.CRR__c != null && opportunity.Previous_Opportunity__r.CRR__r.FICO__c<1000){
                        return opportunity.Previous_Opportunity__r.CRR__r.FICO__c;
                    }
                    else {
                        return null;
                    }
                }                
            }private set;
        }
        
        public static Decimal applicant1PrevFICO{
            get{
                if(ccApplicant1PrevFICO == 0){
                    return opportunity.Previous_Opportunity__r.Manual_Applicant_1_FICO__c;
                }
                else{
                    if((ccApplicant1PrevFICO <= 0 || ccApplicant1PrevFICO > 900) && (opportunity.Previous_Opportunity__r.Manual_Applicant_1_FICO__c != 0)){              
                        return opportunity.Previous_Opportunity__r.Manual_Applicant_1_FICO__c;
                    } 
                    else{                     
                     return ccApplicant1PrevFICO;
                    }                   
                }                
            }private set;
        }
        
}