public class Math {

    /********************************
    * Developer: Leila Riaz
    * University ID: 240124058
    * Function: This function takes two integers and returns their sum.
    ********************************/
    public static int Add(int a, int b) {
        return a + b;
    }

    
    /********************************
    * Developer: 
    * University ID: 
    * Function: Returns the maximum of two integers.
    ********************************/
    public static int Max(int a, int b) {
        return (a > b) ? a : b;
    }

    // and so on — each team member adds one function
    public static int Min(int a, int b) { return (a < b) ? a : b; }
    public static int Sub(int a, int b) { return a - b; }
    public static int Multi(int a, int b) { return a * b; }
    public static int Divide(int a, int b) { return a / b; }
    public static int Power(int a, int b) { return (int)Math.pow(a, b); }
    public static int Mod(int a, int b) { return a % b; }

        /********************************
    * Developer: [Daniel Nguyen]
    * University ID: [230167678] 
    * Function: Returns the average of two integers
    ********************************/
    public static int Average(int a, int b) {
        return (a + b) / 2;
    }

    public static void main(String[] args) {
        System.out.println("Team Project: Math class test");

        // Example test
        System.out.println("Add(5, 9): " + Add(5, 9));
    }
}
