package Class_1;

import java.util.Scanner;

public class Sum_2 {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        System.out.print("Input 1st number: ");
        int number1 = in.nextInt();

        System.out.print("Input 2st number: ");
        int number2 = in.nextInt();

        System.out.print("product of two numbers: " + number1 + " X " + number2 + " = ");
        System.out.print(number1 * number2);


    }
}
