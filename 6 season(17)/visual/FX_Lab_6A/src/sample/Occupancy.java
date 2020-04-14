package sample;

import javafx.beans.property.*;

import java.time.LocalDate;

public class Occupancy {
    private SimpleIntegerProperty occupancyNumber;
    private SimpleIntegerProperty employeeNumber;
    private SimpleIntegerProperty customerNumber;
    private SimpleIntegerProperty roomNumber;
    private SimpleDoubleProperty rateApplied;
    private SimpleDoubleProperty phoneCharge;
    private ObjectProperty<LocalDate> dateOccupied;
    private SimpleStringProperty employeeName;
    private SimpleStringProperty customerName;
    private SimpleStringProperty roomDescription;

    public Occupancy(int occupancyNumber, int employeeNumber, String employeeName, int customerNumber, String customerName, int roomNumber, String roomDescription, double rateApplied, double phoneCharge, LocalDate dateOccupied) {
        this.occupancyNumber = new SimpleIntegerProperty(occupancyNumber) ;
        this.employeeNumber = new SimpleIntegerProperty(employeeNumber);
        this.customerNumber = new SimpleIntegerProperty(customerNumber);
        this.roomNumber = new SimpleIntegerProperty(roomNumber);
        this.rateApplied = new SimpleDoubleProperty(rateApplied);
        this.phoneCharge = new SimpleDoubleProperty(phoneCharge);
        this.dateOccupied = new SimpleObjectProperty<>(dateOccupied);
        this.customerName = new SimpleStringProperty(customerName);
        this.employeeName = new SimpleStringProperty(employeeName);
        this.roomDescription = new SimpleStringProperty(roomDescription);
    }

    public int getRoomNumber() {
        return roomNumber.get();
    }

    public SimpleIntegerProperty roomNumberProperty() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber.set(roomNumber);
    }

    public String getRoomDescription() {
        return roomDescription.get();
    }

    public SimpleStringProperty roomDescriptionProperty() {
        return roomDescription;
    }

    public void setRoomDescription(String roomDescription) {
        this.roomDescription.set(roomDescription);
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

    public int getCustomerNumber() {
        return customerNumber.get();
    }

    public SimpleIntegerProperty customerNumberProperty() {
        return customerNumber;
    }

    public void setCustomerNumber(int customerNumber) {
        this.customerNumber.set(customerNumber);
    }

    public String getEmployeeName() {
        return employeeName.get();
    }

    public SimpleStringProperty employeeNameProperty() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName.set(employeeName);
    }

    public String getCustomerName() {
        return customerName.get();
    }

    public SimpleStringProperty customerNameProperty() {
        return customerName;
    }

    public void setCustomerName(String customername) {
        this.customerName.set(customername);
    }

    public LocalDate getDateOccupied() {
        return dateOccupied.get();
    }

    public ObjectProperty<LocalDate> dateOccupiedProperty() {
        return dateOccupied;
    }

    public void setDateOccupied(LocalDate dateOccupied) {
        this.dateOccupied.set(dateOccupied);
    }

    public int getOccupancyNumber() {
        return occupancyNumber.get();
    }

    public SimpleIntegerProperty occupancyNumberProperty() {
        return occupancyNumber;
    }

    public void setOccupancyNumber(int occupancyNumber) {
        this.occupancyNumber.set(occupancyNumber);
    }

    public double getRateApplied() {
        return rateApplied.get();
    }

    public SimpleDoubleProperty rateAppliedProperty() {
        return rateApplied;
    }

    public void setRateApplied(double rateApplied) {
        this.rateApplied.set(rateApplied);
    }

    public double getPhoneCharge() {
        return phoneCharge.get();
    }

    public SimpleDoubleProperty phoneChargeProperty() {
        return phoneCharge;
    }

    public void setPhoneCharge(double phoneCharge) {
        this.phoneCharge.set(phoneCharge);
    }
}
