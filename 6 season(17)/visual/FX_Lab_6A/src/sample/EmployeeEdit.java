package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

public class EmployeeEdit {
    @FXML
    private TextField txtEmployeeNumber;

    @FXML
    private TextField txtFirstName;

    @FXML
    private TextField txtLastName;

    @FXML
    private TextField txtTitle;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOk() {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Add Employee");
        alert.setHeaderText("Амжилттай нэмэгдлээ...");
        Employee employee = new Employee(txtFirstName.getText(),txtLastName.getText(),txtTitle.getText(),Integer.parseInt(txtEmployeeNumber.getText()));
        EmployeesRecord.employees.add(employee);
        alert.showAndWait();
        btnCancel();
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("employeeEdit.fxml").openStream());
            customerRecord.setTitle("Employee Editor");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
