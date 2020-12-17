/**
@author Henrique Nitatori
 */

@isTest
public class AccountRepositoryTest {

    @isTest
    static void createAccountTest() {
        AccountService accountService = new AccountService();
        List<Account__c> accounts = new List<Account__c>{
            AccountFixeFactory.newAccount()
        };

       List<Account__c> resultOfFunction = accountService.createAccount(accounts);

        System.assertEquals(resultOfFunction, accounts);
    }

    @isTest
    static void accountDuplicateInListTest() {
        FilterDuplicateAccountInList filterDuplicateAccountInList = new FilterDuplicateAccountInList();
        List<Account__c> accounts = new List<Account__c>{
            AccountFixeFactory.newAccount(),
            AccountFixeFactory.newAccount(),
            AccountFixeFactory.newAccount()
        };

        List<Account__c> accountsInserteds = filterDuplicateAccountInList.filter(accounts);

        System.assertEquals(1, accountsInserteds.size());
    }
}