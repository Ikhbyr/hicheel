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

public class OccupanciesEdit implements Initializable {
    @FXML
    private DatePicker dtpDateOccupied;

    @FXML
    private TextField txtEmployeeNumber;

    @FXML
    private TextField txtEmployeeName;

    @FXML
    private TextField txtCustomerNumber;

    @FXML
    private TextField txtCustomerName;

    @FXML
    private TextField txtRoomNumber;

    @FXML
    private TextField txtRoomDescription;

    @FXML
    private TextField txtRateApplied;

    @FXML
    private TextField txtPhoneUse;

    @FXML
    private TextField txtOccupanyNumber;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOK() {
        if(txtCustomerNumber.getText().trim().isEmpty()){
            txtCustomerNumber.setText("0");
        }
        if(txtRateApplied.getText().trim().isEmpty()){
            txtRateApplied.setText("0");
        }
        if(txtPhoneUse.getText().trim().isEmpty()){
            txtPhoneUse.setText("0");
        }
        Occupancy occupancy = new Occupancy(Integer.parseInt(txtOccupanyNumber.getText()),Integer.parseInt(txtEmployeeNumber.getText()),txtEmployeeName.getText(),Integer.parseInt(txtCustomerNumber.getText()),txtCustomerName.getText(),Integer.parseInt(txtRoomNumber.getText()),txtRoomDescription.getText(),Double.parseDouble(txtRateApplied.getText()),Double.parseDouble(txtPhoneUse.getText()),dtpDateOccupied.getValue());
        OccupanciesRecord.occupancies.add(occupancy);
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Add Occupancy");
        alert.setHeaderText("Амжилттай нэмэгдлээ...");
        alert.showAndWait();
        btnCancel();
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("occupanciesEdit.fxml").openStream());
            customerRecord.setTitle("Occupancy Edit");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        dtpDateOccupied.setValue(LocalDate.now());
        txtEmployeeNumber.textProperty().addListener((observableValue, s, t1) -> {
            if(!txtEmployeeNumber.getText().trim().isEmpty()){
                for(Employee employee:EmployeesRecord.employees){
                    if (employee.getEmployeeNumber()==Integer.parseInt(txtEmployeeNumber.getText())){
                        txtEmployeeName.setText(employee.getFirstName());
                        break;
                    }else{
                        txtEmployeeName.setText("");
                    }
                }
            }
        });
        txtCustomerNumber.textProperty().addListener((observableValue, s, t1) -> {
            if(!txtCustomerNumber.getText().trim().isEmpty()){
                for (Customer customer:CustomerRecord.customers){
                    if (customer.getAcountNumber()==Integer.parseInt(txtCustomerNumber.getText())){
                        txtCustomerName.setText(customer.getFirstName());
                        break;
                    }else
                        txtCustomerName.setText("");
                }

            }
        });
        txtRoomNumber.textProperty().addListener(observable -> {
            if(!txtRoomNumber.getText().trim().isEmpty()){
                for (Room room:RoomsRecords.rooms){
                    if (room.getRoomNumber()==Integer.parseInt(txtRoomNumber.getText())){
                        txtRoomDescription.setText(room.getRoomType()+" "+room.getBedType()+" "+room.getRoomStatus());
                        break;
                    }else{
                        txtRoomDescription.setText("");
                    }
                }
            }
        });
    }
}
