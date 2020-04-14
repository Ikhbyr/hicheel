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
import jdk.javadoc.doclet.Reporter;

import java.net.URL;
import java.util.ResourceBundle;

public class Employees implements Initializable {
    @FXML
    private TableView<Employee> dgvEmployees;

    @FXML
    private TableColumn<Employee, Integer> colEmployeeNumber;

    @FXML
    private TableColumn<Employee, String> colFirstName;

    @FXML
    private TableColumn<Employee, String> colMiddleName;

    @FXML
    private TableColumn<Employee, String> colLastName;

    @FXML
    private TableColumn<Employee, String> colName;

    @FXML
    private TableColumn<Employee, String> colTitle;

    @FXML
    private Button btnClose;

    @FXML
    void btnPrintEmployees(){
        Reports employeesReport = new Reports();
        employeesReport.PrintEmployee();
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("employees.fxml").openStream());
            customerRecord.setTitle("Monson University - Employees");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }
    dbc dbc1 = new dbc();
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        employees.clear();
        dbc1.getEmployees();
        colEmployeeNumber.setCellValueFactory(new PropertyValueFactory<>("EmployeeNumber"));
        colFirstName.setCellValueFactory(new PropertyValueFactory<>("FirstName"));
        colLastName.setCellValueFactory(new PropertyValueFactory<>("LastName"));
        colMiddleName.setCellValueFactory(new PropertyValueFactory<>("MiddleName"));
        colName.setCellValueFactory(new PropertyValueFactory<>("Note"));
        colTitle.setCellValueFactory(new PropertyValueFactory<>("Title"));
        dgvEmployees.setItems(employees);
    }

    static ObservableList<Employee> employees = FXCollections.observableArrayList();
}
