public class newClass {

    // Task #1
    // Get unique values in list
    public static Set<Object> UniqueValue(SObject[] value, Set<Object> anotherlist) {
        Set<Object> uniquevalues = new Set<Object>();
        while (value != null) {
            for (SObject someobject: value) {
                uniquevalues.add(anotherList);
            }
        }
        System.debug(uniquevalues);
        return uniquevalues;
    }

    // Task #2
    // Get Contact by Name
    public static List<Contact> searchForContacts(String Name){
        List<Contact> contacts = [SELECT Name FROM Contact];
        System.debug('Contact: ' + contacts);
        return contacts;
    }

    // Task #3
    // Get Opportunity with the biggest amount
    public static List<Opportunity> searchBiggestAmount(Integer Amount) {
        List<Opportunity> amounts = [SELECT Amount FROM Opportunity ORDER BY Amount DESC LIMIT 1];
        System.debug('Biggest Amount: ' + amounts);
        return amounts;
    }

    // Task #4
    // Write a function that takes a number and returns a list of its digits
    public static Set<Integer> ListOfDigits(Integer number, Integer length, String[] newarr) {
        Integer[] arr = new List<Integer>(length);
        for (Integer i = 0; i < length; i++) {
            number = math.mod(number, 10);
            number /= 10;
            newarr.add(number);
    }
        System.debug(number);
        return Set;
}
}