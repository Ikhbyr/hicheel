package sample;

import javafx.beans.property.*;

public class SelectedParts {
    private int qty;
    private DoubleProperty unitPrice;
    private StringProperty partName;
    private IntegerProperty partNumber;

    public SelectedParts(int qty, Double unitPrice, String partName, Integer partNumber) {
        this.qty = qty;
        this.unitPrice = new SimpleDoubleProperty(unitPrice);
        this.partName = new SimpleStringProperty(partName);
        this.partNumber = new SimpleIntegerProperty(partNumber);
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public double getUnitPrice() {
        return unitPrice.get();
    }

    public DoubleProperty unitPriceProperty() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice.set(unitPrice);
    }

    public String getPartName() {
        return partName.get();
    }

    public StringProperty partNameProperty() {
        return partName;
    }

    public void setPartName(String partName) {
        this.partName.set(partName);
    }

    public int getPartNumber() {
        return partNumber.get();
    }

    public IntegerProperty partNumberProperty() {
        return partNumber;
    }

    public void setPartNumber(int partNumber) {
        this.partNumber.set(partNumber);
    }

    public double getSubTotal(){
        return this.qty*getUnitPrice();
    }
}
