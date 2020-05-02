package exer3;
import java.util.function.Predicate;

public class exer3_1 {
    static Predicate<String> check = s->{
        return s != null && !s.isEmpty();
    };
    public static void main(String[] args) {
        String a = "";
        String b = "Hello";
        checked(a);
        checked(b);
    }
    public static void checked(String s){
        if(check.test(s))
            System.out.println(s);
        else
            System.out.println("Hooson baina");
    }
}
