package sample;

import javafx.application.Platform;
import javafx.beans.InvalidationListener;
import javafx.beans.Observable;
import javafx.beans.binding.Bindings;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.util.StringConverter;
import javafx.util.converter.NumberStringConverter;

import java.net.URL;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class Controller implements Initializable{
    @FXML
    private TextField txtPrincipal;

    @FXML
    private TextField txtInterestRate;

    @FXML
    private DatePicker dtpStartDate;

    @FXML
    private DatePicker dtpEndDate;

    @FXML
    private TextField txtPeriods;

    @FXML
    private TextField txtInterestEarned;

    @FXML
    private TextField txtFutureValue;

    @FXML
    void btnClose(ActionEvent event) {
        Platform.exit();
        System.exit(0);
    }
    SimpleInterest simpleInterest = new SimpleInterest(0.0,0.0,LocalDate.now(),LocalDate.now(),1);
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle){
        StringConverter<Number> converter = new NumberStringConverter();
        Bindings.bindBidirectional(txtPrincipal.textProperty(),simpleInterest.principalProperty(), converter);
        Bindings.bindBidirectional(txtInterestRate.textProperty(),simpleInterest.rateProperty(),converter);
        Bindings.bindBidirectional(txtPeriods.textProperty(),simpleInterest.periodsProperty(),converter);
        dtpEndDate.valueProperty().bindBidirectional(simpleInterest.endDateProperty());
        dtpStartDate.valueProperty().bindBidirectional(simpleInterest.startDateProperty());
        txtPrincipal.textProperty().addListener((obs, ov, nv) -> {
            tootsoo();
        });
        txtPeriods.textProperty().addListener((obs, ov, nv) -> {
            tootsoo();
        });
        txtInterestRate.textProperty().addListener((obs, ov, nv) -> {
            tootsoo();
        });
        simpleInterest.endDateProperty().addListener(new InvalidationListener() {
            @Override
            public void invalidated(Observable observable) {
                System.out.println("End Date has changed to: " + simpleInterest.getEndDate());
                calcDate(simpleInterest.getStartDate(), simpleInterest.getEndDate());
            }
        });
        simpleInterest.startDateProperty().addListener(new InvalidationListener() {
            @Override
            public void invalidated(Observable observable) {
                System.out.println("Start Date has changed to: " + simpleInterest.getStartDate());
                calcDate(simpleInterest.getStartDate(), simpleInterest.getEndDate());
            }
        });
    }

    public void tootsoo(){
        double InterestEarned = simpleInterest.getPrincipal()/365 * simpleInterest.getRate()/100 * simpleInterest.getPeriods();
        DecimalFormat df = new DecimalFormat("#.00");
        txtInterestEarned.setText("$"+df.format(InterestEarned));
        txtFutureValue.setText("$"+df.format(simpleInterest.getPrincipal() + InterestEarned));
    }

    public void calcDate(LocalDate date1, LocalDate date2){
        try {
            simpleInterest.setPeriods((date2.getYear() - date1.getYear()) * 365 + (date2.getDayOfYear() - date1.getDayOfYear()));
            txtPeriods.setText(Integer.toString(simpleInterest.getPeriods()));
            tootsoo();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
