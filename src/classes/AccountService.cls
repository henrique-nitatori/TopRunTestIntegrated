/**
@author Henrique Nitatori
 */

public class AccountService {
    AccountRepository accountRepository;
    FilterDuplicateAccountInList filterDuplicateAccountInList;

    public AccountService() {
        this.accountRepository = new AccountRepository();
        this.filterDuplicateAccountInList = new FilterDuplicateAccountInList();
    }

    virtual 
    public List<Account__c> createAccount(List<Account__c> accounts){
        this.accountRepository.create(accounts);
        return accounts;
    }
}