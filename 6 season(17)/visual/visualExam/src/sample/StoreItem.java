package sample;

import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

import java.time.LocalDate;

public class StoreItem {
    private SimpleIntegerProperty itemNumber;
    private SimpleStringProperty itemName;
    private SimpleStringProperty size;
    private SimpleDoubleProperty unitPrice;

    public StoreItem(int itemNumber, String itemName, String size, double unitPrice){
        this.itemName = new SimpleStringProperty(itemName);
        this.itemNumber = new SimpleIntegerProperty(itemNumber);
        this.size = new SimpleStringProperty(size);
        this.unitPrice = new SimpleDoubleProperty(unitPrice);
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
