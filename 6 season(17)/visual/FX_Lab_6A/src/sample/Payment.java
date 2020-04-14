package sample;

import javafx.beans.property.*;

import java.time.LocalDate;

public class Payment {
    private ObjectProperty<LocalDate> paymentDate;
    private SimpleIntegerProperty employeeNumber;
    private SimpleStringProperty employeeName;
    private SimpleIntegerProperty occupancyNumber;
    private SimpleStringProperty occupancyName;
    private ObjectProperty<LocalDate> firstDate;
    private ObjectProperty<LocalDate> lastDate;
    private SimpleIntegerProperty totalNights;
    private  SimpleDoubleProperty amountCharged;
    private SimpleDoubleProperty PhoneUse;
    private SimpleDoubleProperty taxRate;
    private SimpleIntegerProperty receiptnumber;

    public Payment(int receiptNumber, LocalDate paymentDate, int employeeNumber, String employeeName, int occupancyNumber, String occupancyName, LocalDate firstDate, LocalDate lastDate, int totalNights, double amountCharged,double phoneUse, double taxRate) {
        this.paymentDate = new SimpleObjectProperty<>(paymentDate);
        this.receiptnumber = new SimpleIntegerProperty(receiptNumber);
        this.employeeNumber = new SimpleIntegerProperty(employeeNumber);
        this.employeeName = new SimpleStringProperty(employeeName);
        this.occupancyNumber = new SimpleIntegerProperty(occupancyNumber);
        this.occupancyName = new SimpleStringProperty(occupancyName);
        this.firstDate = new SimpleObjectProperty<>(firstDate);
        this.lastDate = new SimpleObjectProperty<>(lastDate);
        this.totalNights = new SimpleIntegerProperty(totalNights);
        this.amountCharged = new SimpleDoubleProperty(amountCharged);
        this.PhoneUse = new SimpleDoubleProperty(phoneUse);
        this.taxRate = new SimpleDoubleProperty(taxRate);
    }

    public int getReceiptnumber() {
        return receiptnumber.get();
    }

    public SimpleIntegerProperty receiptnumberProperty() {
        return receiptnumber;
    }

    public void setReceiptnumber(int receiptnumber) {
        this.receiptnumber.set(receiptnumber);
    }

    public double getTaxAmount(){
        return getSubTotal()*getTaxRate()/100;
    }
    public double getSubTotal(){
        return  getTotalNights()*getAmountCharged()+getPhoneUse();
    }
    public double getAmountPaid(){
        return getSubTotal()+getTaxAmount();
    }
    public LocalDate getPaymentDate() {
        return paymentDate.get();
    }

    public ObjectProperty<LocalDate> paymentDateProperty() {
        return paymentDate;
    }

    public void setPaymentDate(LocalDate paymentDate) {
        this.paymentDate.set(paymentDate);
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

    public String getEmployeeName() {
        return employeeName.get();
    }

    public SimpleStringProperty employeeNameProperty() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName.set(employeeName);
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

    public String getOccupancyName() {
        return occupancyName.get();
    }

    public SimpleStringProperty occupancyNameProperty() {
        return occupancyName;
    }

    public void setOccupancyName(String occupancyName) {
        this.occupancyName.set(occupancyName);
    }

    public LocalDate getFirstDate() {
        return firstDate.get();
    }

    public ObjectProperty<LocalDate> firstDateProperty() {
        return firstDate;
    }

    public void setFirstDate(LocalDate firstDate) {
        this.firstDate.set(firstDate);
    }

    public LocalDate getLastDate() {
        return lastDate.get();
    }

    public ObjectProperty<LocalDate> lastDateProperty() {
        return lastDate;
    }

    public void setLastDate(LocalDate lastDate) {
        this.lastDate.set(lastDate);
    }

    public int getTotalNights() {
        return totalNights.get();
    }

    public SimpleIntegerProperty totalNightsProperty() {
        return totalNights;
    }

    public void setTotalNights(int totalNights) {
        this.totalNights.set(totalNights);
    }

    public double getAmountCharged() {
        return amountCharged.get();
    }

    public SimpleDoubleProperty amountChargedProperty() {
        return amountCharged;
    }

    public void setAmountCharged(double amountCharged) {
        this.amountCharged.set(amountCharged);
    }

    public double getPhoneUse() {
        return PhoneUse.get();
    }

    public SimpleDoubleProperty phoneUseProperty() {
        return PhoneUse;
    }

    public void setPhoneUse(double phoneUse) {
        this.PhoneUse.set(phoneUse);
    }

    public double getTaxRate() {
        return taxRate.get();
    }

    public SimpleDoubleProperty taxRateProperty() {
        return taxRate;
    }

    public void setTaxRate(double taxRate) {
        this.taxRate.set(taxRate);
    }
}
