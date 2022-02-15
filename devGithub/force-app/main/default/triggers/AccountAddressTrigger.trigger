trigger AccountAddressTrigger on Account (before insert, before update) {
    List<Account> acc = [SELECT Id, Match_Billing_Address__c, Billing_Postal_Code__c, Shipping_Postal_Code__c FROM Account];
    for (Account ac :trigger.new ) {
            if(ac.Match_Billing_Address__c){
                ac.Shipping_Postal_Code__c = ac.Billing_Postal_Code__c;
            }
    }
}