/**
 * @author Henrique Nitatori
 **/

public virtual class AccountRepository {

    virtual
    public List<Account__c> findByDocument(String document) {
        return [ SELECT ClientFirstName__c, ClientLastName__c, ClientDocument__c, Balance__c From Account__c WHERE ClientDocument__c = :document ];
    }

    virtual
    public List<Account__c> findAll() {
        return [ SELECT ClientFirstName__c, ClientLastName__c, ClientDocument__c, Balance__c From Account__c LIMIT 10 OFFSET 10 ];
    }

    virtual
    public List<Account__c> create(List<Account__c> accounts) {
        insert accounts;
        return accounts;   
    }

    virtual
    public List<Account__c> store(List<Account__c> accounts) {
        update accounts;
        return accounts;   
    }
    virtual
    public void deleteAccount(List<Account__c> accounts) {
        delete accounts;
    }
}