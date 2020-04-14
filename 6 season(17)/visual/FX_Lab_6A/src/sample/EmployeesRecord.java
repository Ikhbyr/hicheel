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
import java.util.ResourceBundle;

public class EmployeesRecord implements Initializable {
    @FXML
    private TableView<Employee> lvwEmployees;

    @FXML
    private TableColumn<Employee, Integer> colEmployeeNumber;

    @FXML
    private TableColumn<Employee, String> colFirstName;

    @FXML
    private TableColumn<Employee, String> colLastName;

    @FXML
    private TableColumn<Employee, String> colTitle;

    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnNewEmployee() {
        EmployeeEdit employeeEdit = new EmployeeEdit();
        employeeEdit.showStage();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        colEmployeeNumber.setCellValueFactory(new PropertyValueFactory<>("EmployeeNumber"));
        colFirstName.setCellValueFactory(new PropertyValueFactory<>("FirstName"));
        colLastName.setCellValueFactory(new PropertyValueFactory<>("LastName"));
        colTitle.setCellValueFactory(new PropertyValueFactory<>("Title"));
        lvwEmployees.setItems(employees);
    }

    public static ObservableList<Employee> employees = FXCollections.observableArrayList();
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("EmployeesRecord.fxml").openStream());
            customerRecord.setTitle("Employees Records");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
