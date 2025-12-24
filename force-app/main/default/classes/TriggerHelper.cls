public with sharing class TriggerHelper {
   public static Boolean isAfterInsertRun = false;
   //test12345678


    public static Integer calculateFactorial(Integer n) {
        // Base case: Stop recursion when n is 0 or 1
        if (n <= 1) {
            return 1;
        } else {
            // Recursive step: n * factorial of (n-1)
            return n * calculateFactorial(n - 1);
        }
    }
}


 
