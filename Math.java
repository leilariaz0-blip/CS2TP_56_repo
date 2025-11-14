public class Math {

    /********************************
    * Developer: Leila Riaz
    * University ID: 240124058
    * Function: Adds two integers.
    ********************************/
    public static int Add(int a, int b) {
        return a + b;
    }

    /********************************
    * Developer: Sakariya Hasan
    * University ID: 240156244
    * Function: Returns the maximum of two integers.
    ********************************/
    public static int Max(int a, int b) {
        return (a > b) ? a : b;
    }

    /********************************
    * Developer: Abulay Sillah
    * University ID: 240274582
    * Function: Returns the average of two integers.
    ********************************/
    public static double Average(int a, int b) {
        return (a + b) / 2.0;
    }

    public static int Min(int a, int b) { return (a < b) ? a : b; }
    public static int Sub(int a, int b) { return a - b; }
    public static int Multi(int a, int b) { return a * b; }
    public static int Divide(int a, int b) { return a / b; }
    public static int Power(int a, int b) { return (int)Math.pow(a, b); }
    public static int Mod(int a, int b) { return a % b; }

    public static void main(String[] args) {
        System.out.println("Team Project: Math class test");
        System.out.println("Add(5, 9): " + Add(5, 9));
    }
}
