package exer3;

import java.util.Comparator;
import java.util.function.BiFunction;

public class exer3_4 {
    public static void main(String[] args) {
        String a = "Mongolia";
        String b = "gol";
        //Заалт хэрэглэн хаяг авсан
        final Comparator<String> search = exer3_4::search;
        System.out.println("engiin method: Oldson bairlal: "+search.compare(a,b));
        //Лямбада илэрхийлэл
        BiFunction<String, String, Integer> bairlal = String::lastIndexOf;
        System.out.println("Lambda: Oldson bairlal: "+bairlal.apply(a,b));
    }
    //Даалгавар 3.4-a
    public static int search( String a, String b){
        return a.lastIndexOf(b);
    }

}
