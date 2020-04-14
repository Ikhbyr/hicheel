package sample;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

public class CustomerEdit {
    @FXML
    private TextField txtAccountNumber;

    @FXML
    private TextField txtFirstName;

    @FXML
    private TextField txtLastName;

    @FXML
    private TextField txtPhoneNumber;

    @FXML
    private TextField txtEmergencyName;

    @FXML
    private TextField txtEmergencyPhone;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOK() {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setHeaderText("Амжилттай нэмэгдлээ.");
        alert.setTitle("Add Customer");
//        alert.setContentText("OK");
        Customer customer = new Customer(Integer.parseInt(txtAccountNumber.getText()),txtFirstName.getText(),txtLastName.getText(),txtPhoneNumber.getText(),txtEmergencyName.getText(),txtEmergencyPhone.getText());
        CustomerRecord.customers.add(customer);
        alert.showAndWait();
        btnCancel();
    }
    public void showStage(){
        try{
        Stage customerEdit = new Stage();
        Pane root = FXMLLoader.load(getClass().getResource("customerEdit.fxml"));
        customerEdit.setTitle("Customer Editor");
        customerEdit.setScene(new Scene(root));
        customerEdit.showAndWait();
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
