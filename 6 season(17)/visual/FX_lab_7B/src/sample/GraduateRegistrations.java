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

public class GraduateRegistrations implements Initializable {
    @FXML
    private TableView<Student> dgvRegistrations;

    @FXML
    private TableColumn<Student, Integer> colStudentNumber;

    @FXML
    private TableColumn<Student, String> colStudentName;

    @FXML
    private TableColumn<Student, String> colSemester;

    @FXML
    private TableColumn<Student, String> colCourseCode;

    @FXML
    private TableColumn<Student, String> colCourseName;

    @FXML
    private TableColumn<Student, Integer> colCredits;

    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("GraduateRegistrations.fxml").openStream());
            customerRecord.setTitle("employees.fxml");
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
        dbc dbc1 = new dbc();
        dbc1.registerStudent();
        colCourseCode.setCellValueFactory(new PropertyValueFactory<>("CourseCode"));
        colCourseName.setCellValueFactory(new PropertyValueFactory<>("CourseName"));
        colCredits.setCellValueFactory(new PropertyValueFactory<>("Credits"));
        colSemester.setCellValueFactory(new PropertyValueFactory<>("Semester"));
        colStudentName.setCellValueFactory(new PropertyValueFactory<>("StudentName"));
        colStudentNumber.setCellValueFactory(new PropertyValueFactory<>("StudentNumber"));
        dgvRegistrations.setItems(students);
    }
}
