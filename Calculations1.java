import java.util.Scanner;

public class Calculations1 {

    private static final double FOUR_THIRDS = 4.0 / 3.0;

    public static void main(String[] args) {
        // Using try-with-resources to automatically close the Scanner
        try (Scanner scanner = new Scanner(System.in)) {

            System.out.print("Enter the radius of the sphere: ");
            System.out.flush(); // Ensures the prompt appears before input

            if (!scanner.hasNextDouble()) {
                System.out.println("Invalid input. Please enter a numeric value.");
                return;
            }

            double radius = scanner.nextDouble();

            if (radius < 0) {
                System.out.println("Radius cannot be negative.");
                return;
            }

            // Calculate values
            double circumference = 2 * Math.PI * radius;
            double surfaceArea = 4 * Math.PI * Math.pow(radius, 2);
            double volume = FOUR_THIRDS * Math.PI * Math.pow(radius, 3);

            // Display results
            System.out.printf("For a sphere with radius: %.2f\n", radius);
            System.out.printf("Circumference of a great circle: %.2f\n", circumference);
            System.out.printf("Surface area: %.2f\n", surfaceArea);
            System.out.printf("Volume: %.2f\n", volume);
        }
    }
}
