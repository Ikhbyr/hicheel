import java.util.InputMismatchException;
import java.util.Scanner;

public class exercise1 {
        public static void main(String[] args) {
            Scanner input = new Scanner(System.in);
            byte[] a = new byte[3];
            byte number = 0;
            int eyreg=0,i=0;
// 0-g oruultal garaas too oruulna
            do{
                try {
                    System.out.println("Input your number " + (i + 1) + ":");
                    number = input.nextByte();
                    if(number>0){
                        eyreg++;
                    }
                    System.out.println(number);
                    checkString(i,eyreg);
                    a[i] = number;
                    i++;
                } catch (InputMismatchException e) {
                    System.out.println(e.getMessage()+"\nTanii oruulsan toonuud dotor eyreg too bh ystoi");
                    e.printStackTrace();

                } catch (ArrayIndexOutOfBoundsException e){
                    System.out.println(e.getMessage());
                    e.printStackTrace();
                }
            }while(number!=0);

            if(a[0]!=0) {
                byte max = 0;
                int bair = 0;
                for (int j = 0; j < i - 1; j++) {
                    if (max < a[i]) {
                        max = a[i];
                        bair = i;
                    }
                }
                System.out.println("Tanii oruulsan hamgiin ih eyreg too: " + max + "\nbairlal: " + bair);
            }
        }
        public static void checkString(int a, int tem){
            if (a==2 && tem==0){
                throw new InputMismatchException();
            }
        }
    }
