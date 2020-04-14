package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Employee {
    private SimpleIntegerProperty employeeNumber;
    private SimpleStringProperty firstName;
    private SimpleStringProperty lastName;
    private SimpleStringProperty middleName;
    private SimpleStringProperty note;
    private SimpleStringProperty title;
    private SimpleIntegerProperty departmentCode;

    public Employee(int employeeNumber, String firstName, String lastName, String middleName, String title) {
        this.employeeNumber = new SimpleIntegerProperty(employeeNumber);
        this.firstName = new SimpleStringProperty(firstName);
        this.lastName = new SimpleStringProperty(lastName);
        this.middleName = new SimpleStringProperty(middleName);
        this.title = new SimpleStringProperty(title);
        this.note = new SimpleStringProperty("null");
    }
    public int getDepartmentCode() {
        return departmentCode.get();
    }

    public SimpleIntegerProperty departmentCodeProperty() {
        return departmentCode;
    }

    public void setDepartmentCode(int departmentCode) {
        this.departmentCode.set(departmentCode);
    }

    public int getEmployeeNumber() {
        return employeeNumber.get();
    }

    public SimpleIntegerProperty employeeNumberProperty() {
        return employeeNumber;
    }

    public void setEmployeeNumber(int employeeNumber) {
        this.employeeNumber.set(employeeNumber);
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
        return middleName.get();
    }

    public SimpleStringProperty middleNameProperty() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName.set(middleName);
    }

    public String getNote() {
        return note.get();
    }

    public SimpleStringProperty noteProperty() {
        return note;
    }

    public void setNote(String note) {
        this.note.set(note);
    }

    public String getTitle() {
        return title.get();
    }

    public SimpleStringProperty titleProperty() {
        return title;
    }

    public void setTitle(String title) {
        this.title.set(title);
    }
}
