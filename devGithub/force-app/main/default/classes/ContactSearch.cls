public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String postalCode) {
        Contact[] cont = [SELECT LastName, MailingPostalCode FROM Contact 
                 WHERE LastName = :lastName AND MailingPostalCode= :postalCode];
        return cont;
    }
}
