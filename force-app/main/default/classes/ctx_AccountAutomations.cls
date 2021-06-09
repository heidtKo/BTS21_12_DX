public class ctx_AccountAutomations {
    
    //I'm in the mood for a conflict
    
    Public static Account setDefaultDescription(Account a){
        System.debug('porti line');
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            return a;
        }
    }
    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = 'Basauri, 6'; 
        a.billingstate = 'Barcelona'; 
        a.billingpostalcode ='28023'; 
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = 'Basauri, 6'; 
        a.shippingstate = 'Finisterra';
        a.shippingpostalcode ='280223';
        return a;
    }
    public static Account setDefaultPhone(Account a) {
        a.Phone='6884563789';
        return a;
    }
    public static Account setDefaultURL(Account a) {
        a.website = 'www.copado.com'; 
        return a;
    }
}
