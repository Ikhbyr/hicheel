import java.util.function.Function;

public class exer1 {
    public static void main(String[] args) {
        Function<Double, Character> grade = marks->{
            if(marks >= 90) {
                return 'A';
            } else if(marks >=80) {
                return 'B';
            } else if(marks >= 70) {
                return 'C';
            } else if(marks >= 60){
                return 'D';
            }else{
                return 'F';
            }
        };

        double input = 95;
        System.out.println("Input Marks: " + input);
        char dun = grade.apply(input);
        System.out.println("Grade : "+ dun + "\n");

        input = 85;
        System.out.println("Input Marks: " + input);
        System.out.println("Grade : " + grade.apply(input) + "\n");

        input = 67;
        System.out.println("Input Marks: " + input);
        System.out.println("Grade : " + grade.apply(input) + "\n");

        input = 49;
        System.out.println("Input Marks: " + input);
        System.out.println("Grade : " + grade.apply(input));

    }
}
