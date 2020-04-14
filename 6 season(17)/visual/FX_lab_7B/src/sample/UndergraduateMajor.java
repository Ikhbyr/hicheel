package sample;

import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;

public class UndergraduateMajor {
    private SimpleIntegerProperty id;
    private SimpleStringProperty major;
    private SimpleStringProperty dean;
    private SimpleStringProperty note;

    public UndergraduateMajor(String major, String dean, String note) {
        this.major = new SimpleStringProperty(major);
        this.dean = new SimpleStringProperty(dean);
        this.note = new SimpleStringProperty(note);
    }

    public int getId() {
        return id.get();
    }

    public SimpleIntegerProperty idProperty() {
        return id;
    }

    public String getMajor() {
        return major.get();
    }

    public SimpleStringProperty majorProperty() {
        return major;
    }

    public String getDean() {
        dbc  dbc1 = new dbc();
        return dbc1.getGetEmployeesName(Integer.parseInt(dean.get()));
    }
    public String getTitle() {
        dbc  dbc1 = new dbc();
        return dbc1.getGetEmployeesTitle(Integer.parseInt(dean.get()));
    }
    public SimpleStringProperty deanProperty() {
        return dean;
    }

    public String getNote() {
        return note.get();
    }

    public SimpleStringProperty noteProperty() {
        return note;
    }

}
