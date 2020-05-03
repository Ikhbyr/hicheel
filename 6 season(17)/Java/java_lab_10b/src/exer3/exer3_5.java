package exer3;

import java.util.function.BiFunction;
public class exer3_5 {
    public static String Concat(String a, String b){
       return a.concat(b);
    }
    public static void main(String[] args) {
        BiFunction<String,String, String> checks = exer3_5::Concat;
        String a="xyz", b="abc";
        for (int i = 0; i < 5; i++) {
            Thread t2 = new Thread(a=checks.apply(a,b));
            t2.start();
        }
        System.out.println(a);
    }
}
