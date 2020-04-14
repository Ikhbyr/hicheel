package sample;

import javafx.beans.property.SimpleDoubleProperty;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class Room {
    private SimpleIntegerProperty roomNumber;
    private SimpleStringProperty roomType;
    private SimpleStringProperty bedType;
    private SimpleDoubleProperty rate;
    private SimpleStringProperty roomStatus;

    public Room(int roomNumber, String roomType, String bedType, Double rate, String roomStatus) {
        this.roomNumber = new SimpleIntegerProperty(roomNumber);
        this.roomType = new SimpleStringProperty(roomType);
        this.bedType = new SimpleStringProperty(bedType);
        this.rate = new SimpleDoubleProperty(rate);
        this.roomStatus = new SimpleStringProperty(roomStatus);
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

    public String getRoomType() {
        return roomType.get();
    }

    public SimpleStringProperty roomTypeProperty() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType.set(roomType);
    }

    public String getBedType() {
        return bedType.get();
    }

    public SimpleStringProperty bedTypeProperty() {
        return bedType;
    }

    public void setBedType(String bedType) {
        this.bedType.set(bedType);
    }

    public double getRate() {
        return rate.get();
    }

    public SimpleDoubleProperty rateProperty() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate.set(rate);
    }

    public String getRoomStatus() {
        return roomStatus.get();
    }

    public SimpleStringProperty roomStatusProperty() {
        return roomStatus;
    }

    public void setRoomStatus(String roomStatus) {
        this.roomStatus.set(roomStatus);
    }
}
