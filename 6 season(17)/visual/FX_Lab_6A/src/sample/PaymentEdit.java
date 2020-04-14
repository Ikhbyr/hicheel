package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.net.URL;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class PaymentEdit implements Initializable {
    @FXML
    private DatePicker dtpPaymentDate;

    @FXML
    private TextField txtEmployeeNumber;

    @FXML
    private TextField txtEmployeeName;

    @FXML
    private TextField txtOccupancyNumber;

    @FXML
    private TextField txtoccupancyDetails;

    @FXML
    private DatePicker dtpFirstDateOccupied;

    @FXML
    private DatePicker dtpLastDateOccupied;

    @FXML
    private TextField txtTotalNights;

    @FXML
    private TextField txtPhoneUse;

    @FXML
    private TextField txtAmountCharged;

    @FXML
    private TextField txtSubTotal;

    @FXML
    private TextField txtTaxRate;

    @FXML
    private TextField txtTaxAmount;

    @FXML
    private TextField txtTotalAmountPaid;

    @FXML
    private TextField txtReceiptNumber;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }
    Payment payment = null;
    @FXML
    void btnOK() {
        payment = new Payment(Integer.parseInt(txtReceiptNumber.getText()),dtpPaymentDate.getValue(),Integer.parseInt(txtEmployeeNumber.getText()),txtEmployeeName.getText(),Integer.parseInt(txtOccupancyNumber.getText()),txtoccupancyDetails.getText(),dtpFirstDateOccupied.getValue(),dtpLastDateOccupied.getValue(),Integer.parseInt(txtTotalNights.getText()),Double.parseDouble(txtAmountCharged.getText()),Double.parseDouble(txtPhoneUse.getText()),Double.parseDouble(txtTaxRate.getText()));
        PaymentsRecords.payments.add(payment);
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Add Payment");
        alert.setHeaderText("Амжилттай нэмэгдлээ...");
        alert.showAndWait();
        btnCancel();
    }

    @FXML
    void btnCalculate() {
        double sub_total = Integer.parseInt(txtTotalNights.getText())*Double.parseDouble(txtAmountCharged.getText())+Double.parseDouble(txtPhoneUse.getText());
        txtSubTotal.setText(Double.toString(sub_total));
        double taxAmount = sub_total*Double.parseDouble(txtTaxRate.getText())/100;
        txtTaxAmount.setText(Double.toString(taxAmount));
        txtTotalAmountPaid.setText(Double.toString(sub_total+taxAmount));
    }

    public void calcDate(LocalDate date1, LocalDate date2){
        try {
            txtTotalNights.setText(Integer.toString((date2.getYear() - date1.getYear()) * 365 + (date2.getDayOfYear() - date1.getDayOfYear())));
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("paymentEdit.fxml").openStream());
            customerRecord.setTitle("Payment Edit");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        dtpLastDateOccupied.setValue(LocalDate.now());
        dtpFirstDateOccupied.setValue(LocalDate.now());
        dtpPaymentDate.setValue(LocalDate.now());
        txtEmployeeNumber.textProperty().addListener(observable -> {
            if(!txtEmployeeNumber.getText().trim().isEmpty()){
                for (Employee employee: EmployeesRecord.employees){
                    if (employee.getEmployeeNumber()==Integer.parseInt(txtEmployeeNumber.getText())){
                        txtEmployeeName.setText(employee.getFirstName());
                        break;
                    }else{
                        txtEmployeeName.setText("");
                    }
                }
            }
        });
        txtOccupancyNumber.textProperty().addListener(observable -> {
            if(!txtOccupancyNumber.getText().trim().isEmpty()){
                int num=0;
                double phoneUse=0,rate=0;
                for (Occupancy occupancy:OccupanciesRecord.occupancies){
                    if (occupancy.getOccupancyNumber()==Integer.parseInt(txtOccupancyNumber.getText())){
                        num = occupancy.getOccupancyNumber();
                        rate =+ occupancy.getRateApplied();
                        phoneUse=+occupancy.getPhoneCharge();
                        txtoccupancyDetails.setText(occupancy.getCustomerName()+" "+occupancy.getEmployeeName()+" "+occupancy.getRoomDescription());
                    }
                }
                if(num == Integer.parseInt(txtOccupancyNumber.getText())) {
                    txtPhoneUse.setText(Double.toString(phoneUse));
                    txtAmountCharged.setText(Double.toString(rate));
                }
            }
        });
    }
    @FXML
    void calculateDate() {
        if (dtpFirstDateOccupied.getValue() != null && dtpLastDateOccupied.getValue()!=null){
            calcDate(dtpFirstDateOccupied.getValue(),dtpLastDateOccupied.getValue());
        }
    }
}
