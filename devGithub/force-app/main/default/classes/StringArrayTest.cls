public with sharing class StringArrayTest {
    public static List<String> generateStringArray(Integer num) {
        List<String> valList = new List<String>();
        for(Integer i=0;i< num;i++) {
            valList.add('Test '+ String.valueOf(i));
        }
        system.debug('rk:debug valList >>>' + valList);
        return valList;
    }
}
