public with sharing class coder_AccountDataService {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        try {
            return [
                SELECT Id, Name, Phone, Industry, Type, AnnualRevenue, BillingCity, BillingState, BillingCountry
                FROM Account
                WITH SECURITY_ENFORCED
                ORDER BY CreatedDate DESC
                LIMIT 10
            ];
        } catch (Exception e) {
            throw new AuraHandledException('Error retrieving accounts: ' + e.getMessage());
        }
    }
}
