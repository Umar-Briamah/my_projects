import java.util.Scanner;
public class if_statement {
    public static void main(String[] args){
        //if statement = performs a block of code if its condition is true
        int age;
        System.out.println("Enter your age: ");
        Scanner scanner = new Scanner(System.in);

        age = scanner.nextInt();
        scanner.close();


        if(age>=18 && age<=120){
            System.out.println("You're an adult");
        }
        else if(age >= 12 && age<18){
            System.out.println("You're an adolescent");
        }
        else if (age <12 && age>=0){
            System.out.println("You're just a kid");
        }
        else{
            System.out.println("You do not exist on earth, alien!!!");
        }

    }
    
}
