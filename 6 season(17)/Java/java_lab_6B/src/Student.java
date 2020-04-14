public class Student {
    private String studentName;
    private String studentProfession;
    private int course;
    private double gpa;

    public Student(String studentName,String studentProfession,int course, double gpa){
        this.course = course;
        if(gpa<=5){
            this.gpa = gpa;
        }else{
            System.out.println("Dundaj Unelgee buruu bna.");
        }

        this.studentName = studentName;
        this.studentProfession = studentProfession;
    }
    public double getGpa() {
        return gpa;
    }

    public int getCourse() {
        return course;
    }

    public String getStudentName() {
        return studentName;
    }

    public String getStudentProfession() {
        return studentProfession;
    }

    public void setCourse(int course) {
        this.course = course;
    }

    public void setGpa(double gpa) {
        if(gpa<=5){
            this.gpa = gpa;
        }else{
            System.out.println("Dundaj Unelgee buruu bna.");
        }
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public void setStudentProfession(String studentProfession) {
        this.studentProfession = studentProfession;
    }
}
