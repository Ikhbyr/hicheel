package exer3;
import java.util.function.BiPredicate;

public class exer3_2 {
    public static void main(String[] args) {
        String s = "hello";
        char s1='h';
        BiPredicate<String,Character> checks = exer3_2::check;
        System.out.println(checks.test(s,s1));
    }

    public static boolean check(String a, char a1){
        return a1==a.charAt(0);
    }
}
