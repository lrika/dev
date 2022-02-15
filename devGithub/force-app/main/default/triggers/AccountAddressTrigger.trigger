trigger AccountAddressTrigger on Account (before insert, before update) {
    // Prevent the deletion of accounts if they have related opportunities.
    for (Account a : [SELECT Id, Match_Billing_Address__c, Billing_Postal_Code__c, Shipping_Postal_Code__c FROM Account
                     WHERE Id IN :Trigger.old]) {
            if(a.Match_Billing_Address__c == true){
                a.Shipping_Postal_Code__c = a.Billing_Postal_Code__c;
            }
    }
}