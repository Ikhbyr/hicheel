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

public class GraduateStudents implements Initializable {
    @FXML
    private TableView<Student> dgvUnnderStudent;

    @FXML
    private TableColumn<Student, Integer> colStudentNumber;

    @FXML
    private TableColumn<Student, String> colFirstName;

    @FXML
    private TableColumn<Student, String> colMiddleName;

    @FXML
    private TableColumn<Student, String> colLastName;

    @FXML
    private TableColumn<Student, String> colMajor;

    @FXML
    private TableColumn<Student, String> colMinor;

    @FXML
    private Button btnClose;

    @FXML
    private Button btnPrint;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("GraduateStudents.fxml").openStream());
            customerRecord.setTitle("Graduate Students");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    static ObservableList<Student> students = FXCollections.observableArrayList();
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        students.clear();
        dbc dbc1 = new dbc();
        dbc1.getGraduateStudent();
        colFirstName.setCellValueFactory(new PropertyValueFactory<>("FirstName"));
        colLastName.setCellValueFactory(new PropertyValueFactory<>("LastName"));
        colMajor.setCellValueFactory(new PropertyValueFactory<>("Major"));
        colMiddleName.setCellValueFactory(new PropertyValueFactory<>("MiddleName"));
        colMinor.setCellValueFactory(new PropertyValueFactory<>("Minor"));
        colStudentNumber.setCellValueFactory(new PropertyValueFactory<>("StudentNumber"));
        dgvUnnderStudent.setItems(students);
        btnPrint.setOnAction(e->{
            Reports reports = new Reports();
            reports.printGraduateStu();
        });
    }
}
