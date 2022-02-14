public with sharing class AccountHandler {
    public static Account insertNewAccount(String param) {
        try {
            Account acct = new Account(Name=param);
            insert acct;
            return acct;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' +
                        e.getMessage());
            return null;
        }

    }
}
