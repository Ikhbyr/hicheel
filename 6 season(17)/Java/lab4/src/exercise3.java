import java.util.InputMismatchException;
import java.util.Scanner;

public class exercise3 {
    public static void main(String[] args) {
        float x;
        Scanner myObj = new Scanner(System.in);
        System.out.print("X Тоог оруулна уу:\nx = ");

        try {
            x = myObj.nextFloat();
            calculate(x);
        }
        catch (IllegalArgumentException e){
            System.out.println("x тоо эерэг байх ёстой.");
        }
        catch (ArithmeticException e){
            System.out.println("х тоо хэтэрхий том байна");
        }
        catch (InputMismatchException e){
            System.out.println("Буруу утга оруулсан байна");
        }
    }
    public static void calculate(float x){
        if (x<=0){
            throw new IllegalArgumentException();
        }else if(x>Math.pow(2.72,10)){
            throw new ArithmeticException();
        }else{
            System.out.println("Амжилттай. Хариу: " + Math.sqrt(10-Math.log(x)));
        }
    }
}
