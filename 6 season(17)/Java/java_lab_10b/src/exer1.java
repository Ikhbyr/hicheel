
import java.util.function.Function;

public class exer1 {
    public static void main(String[] args) {
        int i = 1;
        while (i <= 6) {
            method1(i, 2);
            i++;
        }
    }
    public static void method1 ( int i, int num ) {
        Function<Integer,Integer> multi = (x1)->x1*2;
        for ( int j = 1; j <= i; j++ ) {
            System.out.print( num + " " );
            num = multi.apply(num);
        }
        System.out.println();
    }
}
