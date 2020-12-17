/**
@author Henrique Nitatori
 */

public class FilterDuplicateAccountInList {

    virtual
    public List<Account__c> filter (List<Account__c> accounts) {
        Integer indexAccountCompare = 1;
        for ( Integer i = 0; indexAccountCompare < accounts.size(); i++) {
            if( accounts[i].clientDocument__c.equals(accounts[indexAccountCompare].clientDocument__c) ) {
                accounts.remove(indexAccountCompare);
                indexAccountCompare = 1;
                i = 0;
            } else {
                indexAccountCompare++;
            }
        }

        return accounts;
    }
}