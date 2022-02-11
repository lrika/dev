public with sharing class StringArrayTest {
    public static List<String> generateStringArray(Integer num) {
        Integer num;
        List<String> valList = new List<String>();
        for(Integer i=0;i< num;i++) {
            valList.add('Test '+ String.valueOf(i));
        }
        return valList;
    }
}
