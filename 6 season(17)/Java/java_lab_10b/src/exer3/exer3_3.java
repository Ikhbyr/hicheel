package exer3;

import java.util.function.Function;

public class exer3_3 {
    public static void main(String[] args) {
        Function<String,String> upper = a->a.toUpperCase();
        String b = upper.apply("hello world");
        System.out.println(b);
    }

}
