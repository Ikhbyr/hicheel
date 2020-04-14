import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class exer1 {
    public static void main(String[] args) {
        Student student1 = new Student("Bat", "IT", 2, 2.5);
        Student student2 = new Student("Bataa", "SW", 3, 3.5);
        Student student3 = new Student("Dorj", "Elictronic", 1, 4);
        Student student4 = new Student("Tsetseg", "Bizness", 4, 3.1);
        List<Student> list = new LinkedList<>();
        list.add(student1);
        list.add(student2);
        list.add(student3);
        list.add(student4);
        System.out.println("\tBefore: All students name: ");
        allStudentName(list);
        System.out.println("\tBefore: 4-r kursiin oyutnuudiin ners: ");
        printStudents(list, 4);
        removeElement(list);
        System.out.println("\tAfter: All students name: ");
        allStudentName(list);
        System.out.println("\tAfter: 4-r kursiin oyutnuudiin ners: ");
        printStudents(list, 4);
    }
    // Oyutnii jagsaalt bolon coursiin dugaariig huleej awan tuhain coursiin oyutnii neriig hewlene
    static void printStudents(List<Student> students, int course){
        for (Student student : students) {
            if (student.getCourse() == course)
            System.out.println(student.getStudentName());
        }
    }
    // 3-s baga duntei oyutniig hasaj 3-s ih buyu tentsuu duntei oyutnii coursiig 1-r nemne
    static void removeElement(List<Student> students){
        Iterator<Student> itr = students.iterator();
        while(itr.hasNext()){
            Student student = itr.next();
            if(student.getGpa()<3){
                itr.remove();
            }else{
                student.setCourse(student.getCourse()+1);
            }
        }
    }
    //Buh oyutnii ner, course bolon dun hewleh
    static void allStudentName(List<Student> students){
        for (Student student : students) {
            System.out.println(student.getStudentName()+"\t"+student.getCourse()+"\t"+student.getGpa());
        }
    }
}
