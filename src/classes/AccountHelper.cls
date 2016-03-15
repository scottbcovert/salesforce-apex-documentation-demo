/**
* @author Scott Covert
* @date 3/14/2016
* @description Helper Methods for Account Trigger Handling
*/
public with sharing class AccountHelper {
    
    /** Constant representing Salesforce Website */
    private static final String salesforceSite = 'www.salesforce.com';

    /**
    * @author Scott Covert
    * @date 3/14/2016
    * @description Updates website field of given accounts to the Salesforce homepage
    * @param List A list of accounts that should have their website field updated
    * @return List A list of accounts with their website field set to the Salesforce homepage
    */
    public static List<Account> updateWebsiteToSF(List<Account> accountList){
        for(Account acct : accountList) {
            acct.Website = salesforceSite;          
        }               
        return accountList;
    }
}