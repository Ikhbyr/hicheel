package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Employee {
    private SimpleStringProperty firstName;
    private SimpleStringProperty lastName;
    private SimpleStringProperty title;
    private SimpleIntegerProperty employeeNumber;

    public Employee(String firstName, String lastName, String title, int employeeNumber) {
        this.firstName = new SimpleStringProperty(firstName);
        this.lastName = new SimpleStringProperty(lastName);
        this.title = new SimpleStringProperty(title);
        this.employeeNumber = new SimpleIntegerProperty(employeeNumber);
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

    public String getTitle() {
        return title.get();
    }

    public SimpleStringProperty titleProperty() {
        return title;
    }

    public void setTitle(String title) {
        this.title.set(title);
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
}
