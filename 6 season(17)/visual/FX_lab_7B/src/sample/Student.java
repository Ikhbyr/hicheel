package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Student {
    private SimpleIntegerProperty studentNumber;
    private SimpleStringProperty firstName;
    private SimpleStringProperty lastName;
    private SimpleStringProperty MiddleName;
    private SimpleIntegerProperty majorId;
    private SimpleIntegerProperty minorId;

    public Student(int studentNumber, String firstName, String lastName, String middleName, int majorId, int minorId) {
        this.studentNumber = new SimpleIntegerProperty(studentNumber);
        this.firstName = new SimpleStringProperty(firstName);
        this.lastName = new SimpleStringProperty(lastName);
        this.MiddleName = new SimpleStringProperty(middleName);
        this.majorId = new SimpleIntegerProperty(majorId);
        this.minorId = new SimpleIntegerProperty(minorId);
    }

    public String getMajor(){
        dbc dbc1 = new dbc();
        return dbc1.getUnderMajor(majorId.get());
    }
    public String getMinor(){
        dbc dbc1 = new dbc();
        return dbc1.getUnderMinor(this.minorId.get());
    }

    public String getCourseCode(){
        dbc dbc1 = new dbc();
        return dbc1.getUnderRegister(this.getStudentNumber(), "course");
    }
    public String getCourseName(){
        dbc dbc1 = new dbc();
        return dbc1.getUnderCourse(getCourseCode(),"name");
    }
    public int getCredits(){
        dbc dbc1 = new dbc();
        return Integer.parseInt(dbc1.getUnderCourse(getCourseCode(),"credits"));
    }
    public String getSemester(){
        dbc dbc1 = new dbc();
        return dbc1.getSemester(Integer.parseInt(dbc1.getUnderRegister(this.getStudentNumber(), "sem")));
    }
    public int getStudentNumber() {
        return studentNumber.get();
    }

    public SimpleIntegerProperty studentNumberProperty() {
        return studentNumber;
    }

    public void setStudentNumber(int studentNumber) {
        this.studentNumber.set(studentNumber);
    }

    public String getFirstName() {
        return firstName.get();
    }

    public SimpleStringProperty firstNameProperty() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName.set(firstName);
    }

    public String getLastName() {
        return lastName.get();
    }

    public SimpleStringProperty lastNameProperty() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName.set(lastName);
    }

    public String getMiddleName() {
        return MiddleName.get();
    }

    public SimpleStringProperty middleNameProperty() {
        return MiddleName;
    }

    public void setMiddleName(String middleName) {
        this.MiddleName.set(middleName);
    }

    public int getMajorId() {
        return majorId.get();
    }

    public SimpleIntegerProperty majorIdProperty() {
        return majorId;
    }

    public void setMajorId(int majorId) {
        this.majorId.set(majorId);
    }

    public int getMinorId() {
        return minorId.get();
    }

    public SimpleIntegerProperty minorIdProperty() {
        return minorId;
    }

    public void setMinorId(int minorId) {
        this.minorId.set(minorId);
    }
}
