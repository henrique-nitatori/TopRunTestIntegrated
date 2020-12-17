/**
* @author Henrique Nitatori
*/
@isTest
public class AccountFixeFactory {

    public static Account__c newAccount() {
        return newAccount('Henrique', 'Nitatori', '415.403.234.12');
    }

    public static Account__c newAccount(String firstName, String lastName, String clientDocument) {
        return new Account__c(
            clientFirstName__c = firstName,
            clientLastName__c = lastName,
            clientDocument__c = clientDocument,
            balance__c = 0
        );
    }

    public static Account__c createAccount() {
        return createAccount(newAccount());
    }

    public static Account__c createAccount(String firstName, String lastName, String clientDocument) {
        return createAccount(newAccount(firstName, lastName, clientDocument));
    }

    public static Account__c createAccount(Account__c account) {
        insert account;
        return account;
    }

    public static Map<String, SObject> createIntegratedScenario() {
        Map<String, SObject> records = new Map<String, SObject>();
        Account__c account =  newAccount();
        records.put('account', account);
        return records;
    }
}