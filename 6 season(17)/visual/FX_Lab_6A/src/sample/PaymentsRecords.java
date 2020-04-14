package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.net.URL;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class PaymentsRecords implements Initializable {
    @FXML
    private TableView<Payment> lvwPayments;

    @FXML
    private TableColumn<Payment, Integer> colRecieptNumber;

    @FXML
    private TableColumn<Payment, Integer> colProcessedBy;

    @FXML
    private TableColumn<Payment, LocalDate> colPaymentDate;

    @FXML
    private TableColumn<Payment, Integer> colAccountNumber;

    @FXML
    private TableColumn<Payment, LocalDate> colFirstDayOccupied;

    @FXML
    private TableColumn<Payment, LocalDate> colLastDayOccupied;

    @FXML
    private TableColumn<Payment, Integer> colTotalNights;

    @FXML
    private TableColumn<Payment, Double> colAmountCharged;

    @FXML
    private TableColumn<Payment, Double> colPhoneUse;

    @FXML
    private TableColumn<Payment, Double> colSubTotal;

    @FXML
    private TableColumn<Payment, Double> colTaxRate;

    @FXML
    private TableColumn<Payment, Double> coltaxAmount;

    @FXML
    private TableColumn<Payment, Double> colAmountPaid;

    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnNewPayment() {
        PaymentEdit paymentEdit = new PaymentEdit();
        paymentEdit.showStage();
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("paymentsRecords.fxml").openStream());
            customerRecord.setTitle("Payments");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        colTaxRate.setCellValueFactory(new PropertyValueFactory<>("TaxRate"));
        colAccountNumber.setCellValueFactory(new PropertyValueFactory<>("OccupancyNumber"));
        colAmountCharged.setCellValueFactory(new PropertyValueFactory<>("AmountCharged"));
        colAmountPaid.setCellValueFactory(new PropertyValueFactory<>("AmountPaid"));
        colFirstDayOccupied.setCellValueFactory(new PropertyValueFactory<>("FirstDate"));
        colLastDayOccupied.setCellValueFactory(new PropertyValueFactory<>("LastDate"));
        colPaymentDate.setCellValueFactory(new PropertyValueFactory<>("PaymentDate"));
        colPhoneUse.setCellValueFactory(new PropertyValueFactory<>("PhoneUse"));
        colProcessedBy.setCellValueFactory(new PropertyValueFactory<>("EmployeeNumber"));
        colRecieptNumber.setCellValueFactory(new PropertyValueFactory<>("Receiptnumber"));
        colSubTotal.setCellValueFactory(new PropertyValueFactory<>("SubTotal"));
        coltaxAmount.setCellValueFactory(new PropertyValueFactory<>("TaxAmount"));
        colTotalNights.setCellValueFactory(new PropertyValueFactory<>("TotalNights"));
        lvwPayments.setItems(payments);
    }
    static ObservableList<Payment> payments = FXCollections.observableArrayList();
}
