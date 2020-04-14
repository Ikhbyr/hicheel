package sample;

import javafx.beans.property.*;

import java.time.LocalDate;

public class CustomerOrderModel {
    private SimpleIntegerProperty itemNumber;
    private SimpleStringProperty itemName;
    private SimpleStringProperty description;
    private SimpleStringProperty size;
    private SimpleDoubleProperty unitPrice;
    private ObjectProperty<LocalDate> Date;
    private SimpleIntegerProperty qty;

    public CustomerOrderModel(int itemNumber, String size, double unitPrice, LocalDate date, String description, int qty){
        this.itemNumber = new SimpleIntegerProperty(itemNumber);
        this.size = new SimpleStringProperty(size);
        this.unitPrice = new SimpleDoubleProperty(unitPrice);
        this.Date = new SimpleObjectProperty<>(date);
        this.description = new SimpleStringProperty(description);
        this.qty = new SimpleIntegerProperty(qty);
    }

    public double getSubTotal(){
        return (this.getQty()*this.getUnitPrice());
    }

    public String getDescription() {
        return description.get();
    }

    public SimpleStringProperty descriptionProperty() {
        return description;
    }

    public void setDescription(String description) {
        this.description.set(description);
    }

    public int getQty() {
        return qty.get();
    }

    public SimpleIntegerProperty qtyProperty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty.set(qty);
    }

    public LocalDate getDate() {
        return Date.get();
    }

    public ObjectProperty<LocalDate> dateProperty() {
        return Date;
    }

    public void setDate(LocalDate date) {
        this.Date.set(date);
    }

    public int getItemNumber() {
        return itemNumber.get();
    }

    public SimpleIntegerProperty itemNumberProperty() {
        return itemNumber;
    }

    public void setItemNumber(int itemNumber) {
        this.itemNumber.set(itemNumber);
    }

    public String getItemName() {
        return itemName.get();
    }

    public SimpleStringProperty itemNameProperty() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName.set(itemName);
    }

    public String getSize() {
        return size.get();
    }

    public SimpleStringProperty sizeProperty() {
        return size;
    }

    public void setSize(String size) {
        this.size.set(size);
    }

    public double getUnitPrice() {
        return unitPrice.get();
    }

    public SimpleDoubleProperty unitPriceProperty() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice.set(unitPrice);
    }

}
