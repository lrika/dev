public with sharing class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String searchstring) {
        //SOSL Query to search income params in Lead and Contact which contain searchstring in the Last or Firstname 
        String searchQuery = 'FIND \'' + searchstring + '\' IN ALL FIELDS RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)'; 
        List<List<sObject>> searchList = search.query(searchQuery);
        System.debug('result: searchList >>> '+searchList );
        return searchList;
    }
}
