package sample;

import javafx.beans.property.SimpleStringProperty;

public class Customer {
    private int acountNumber;
    private SimpleStringProperty firstName;
    private SimpleStringProperty lastName;
    private SimpleStringProperty phoneNumber;
    private SimpleStringProperty emergencyName;
    private SimpleStringProperty emergencyPhone;
    public Customer(int acountNumber, String firstName, String lastName, String phoneNumber,String emergencyName,String emergencyPhone){
        this.acountNumber = acountNumber;
        this.firstName = new SimpleStringProperty(firstName);
        this.lastName = new SimpleStringProperty(lastName);
        this.phoneNumber = new SimpleStringProperty(phoneNumber);
        this.emergencyName = new SimpleStringProperty(emergencyName);
        this.emergencyPhone = new SimpleStringProperty(emergencyPhone);
    }
    public int getAcountNumber() {
        return acountNumber;
    }

    public void setAcountNumber(int acountNumber) {
        this.acountNumber = acountNumber;
    }

    public void setFirstName(String firstName) {
        this.firstName = new SimpleStringProperty(firstName);
    }

    public void setEmergencyName(String emergencyName) {
        this.emergencyName = new SimpleStringProperty(emergencyName);
    }

    public void setLastName(String lastName) {
        this.lastName= new SimpleStringProperty(lastName);
    }

    public void setEmergencyPhone(String emergencyPhone) {
        this.emergencyPhone = new SimpleStringProperty(emergencyPhone);
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber= new SimpleStringProperty(phoneNumber);
    }

    public String getFirstName() {
        return firstName.get();
    }

    public String getLastName() {
        return lastName.get();
    }

    public String getEmergencyName() {
        return emergencyName.get();
    }

    public String getEmergencyPhone() {
        return emergencyPhone.get();
    }

    public String getPhoneNumber() {
        return phoneNumber.get();
    }
}
