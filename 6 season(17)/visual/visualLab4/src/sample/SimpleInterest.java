package sample;

import javafx.beans.property.*;

import java.time.LocalDate;

public class SimpleInterest {
    private DoubleProperty principal;
    private DoubleProperty rate;
    private ObjectProperty<LocalDate> startDate;
    private ObjectProperty<LocalDate> endDate;
    private IntegerProperty periods;
    SimpleInterest(double princ, double rate, LocalDate startDate, LocalDate endDate, int periods){
        this.principal = new SimpleDoubleProperty(princ);
        this.rate = new SimpleDoubleProperty(rate);
        this.startDate = new SimpleObjectProperty<>(startDate);
        this.endDate = new SimpleObjectProperty<>(endDate);
        this.periods = new SimpleIntegerProperty(periods);

    }

    public final Double getPrincipal(){
        return principal.get();
    }
    public DoubleProperty principalProperty(){
        return principal;
    }

    public DoubleProperty rateProperty() {
        return rate;
    }

    public final Double getRate(){
        return rate.get();
    }
    public IntegerProperty periodsProperty() {
        return periods;
    }

    public int getPeriods() {
        return periods.get();
    }

    public void setPeriods(int periods) {
        this.periods.set(periods);
    }

    public ObjectProperty<LocalDate> endDateProperty() {
        if(this.endDate == null){
            this.endDate = new SimpleObjectProperty<>();
        }
        return endDate;
    }

    public LocalDate getEndDate() {
        return endDate.get();
    }

    public ObjectProperty<LocalDate> startDateProperty() {
        if(this.startDate == null){
            this.startDate = new SimpleObjectProperty<>();
        }
        return startDate;
    }

    public LocalDate getStartDate() {
        return startDate.get();
    }
}
