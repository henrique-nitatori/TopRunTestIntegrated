/**
@author Henrique Nitatori
 */
trigger FilterDuplicatAccount on Account__c (before insert, before update) {
    FilterDuplicateAccountInList FilterDuplicateAccountInList = new FilterDuplicateAccountInList();

    if(Trigger.isUpdate || Trigger.isInsert && Trigger.isBefore) {
        FilterDuplicateAccountInList.filter(Trigger.new);
    }

}