package sample;

import javafx.beans.property.*;
import javafx.scene.control.TreeItem;

import java.io.Serializable;

public class ParkParts implements Serializable {
    private int year;
    private StringProperty make;
    private StringProperty model;
    private StringProperty Category;
    private DoubleProperty unitPrice;
    private StringProperty partName;
    private IntegerProperty partNumber;

    public ParkParts(int year, String make, String model, String category, Double unitPrice, String partName, Integer partNumber) {
        this.year = year;
        this.make = new SimpleStringProperty(make);
        this.model = new SimpleStringProperty(model);
        this.Category = new SimpleStringProperty(category);
        this.unitPrice = new SimpleDoubleProperty(unitPrice);
        this.partName = new SimpleStringProperty(partName);
        this.partNumber = new SimpleIntegerProperty(partNumber);
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getMake() {
        return make.get();
    }

    public StringProperty makeProperty() {
        return make;
    }

    public void setMake(String make) {
        this.make = new SimpleStringProperty(make);
    }

    public String getModel() {
        return model.get();
    }

    public StringProperty modelProperty() {
        return model;
    }

    public void setModel(String model) {
        this.model=new SimpleStringProperty(model);
    }

    public String getCategory() {
        return Category.get();
    }

    public StringProperty categoryProperty() {
        return Category;
    }

    public void setCategory(String category) {
        this.Category = new SimpleStringProperty(category);
    }

    public double getUnitPrice() {
        return unitPrice.get();
    }

    public DoubleProperty unitPriceProperty() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = new SimpleDoubleProperty(unitPrice);
    }

    public String getPartName() {
        return partName.get();
    }

    public StringProperty partNameProperty() {
        return partName;
    }

    public void setPartName(String partName) {
        this.partName = new SimpleStringProperty(partName);
    }

    public int getPartNumber() {
        return partNumber.get();
    }

    public IntegerProperty partNumberProperty() {
        return partNumber;
    }

    public void setPartNumber(int partNumber) {
        this.partNumber = new SimpleIntegerProperty(partNumber);
    }
}
