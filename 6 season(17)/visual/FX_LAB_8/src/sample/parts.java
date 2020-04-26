package sample;

import java.io.Serializable;

public class parts implements Serializable {
    private int year;
    private String make;
    private String model;
    private String Category;
    private Double unitPrice;
    private String partName;
    private Integer partNumber;

    public parts(int year, String make, String model, String category, Double unitPrice, String partName, Integer partNumber) {
        this.year = year;
        this.make = make;
        this.model = model;
        Category = category;
        this.unitPrice = unitPrice;
        this.partName = partName;
        this.partNumber = partNumber;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public Double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getPartName() {
        return partName;
    }

    public void setPartName(String partName) {
        this.partName = partName;
    }

    public Integer getPartNumber() {
        return partNumber;
    }

    public void setPartNumber(Integer partNumber) {
        this.partNumber = partNumber;
    }
}
