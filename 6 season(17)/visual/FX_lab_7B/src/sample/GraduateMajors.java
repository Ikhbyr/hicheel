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

public class GraduateMajors implements Initializable {

    @FXML
    private TableView<GraduateMajor> dgvGraduateMajor;

    @FXML
    private TableColumn<GraduateMajor, String> colMajor;

    @FXML
    private TableColumn<GraduateMajor, String> colDean;

    @FXML
    private TableColumn<GraduateMajor, String> colTitle;

    @FXML
    private Button btnClose;

    @FXML
    public Button btnPrint;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }
    static ObservableList<GraduateMajor> GraduateMajors = FXCollections.observableArrayList();
    @FXML
    void btnNewGraduate() {
        NewGraduateMajor newGraduateMajor = new NewGraduateMajor();
        newGraduateMajor.showStage();
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("GraduateMajors.fxml").openStream());
            customerRecord.setTitle("Graduate Majors");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        dbc dbc1 = new dbc();
        dbc1.getGraduateMajor();
        colDean.setCellValueFactory(new PropertyValueFactory<>("Dean"));
        colMajor.setCellValueFactory(new PropertyValueFactory<>("Major"));
        colTitle.setCellValueFactory(new PropertyValueFactory<>("Title"));
        dgvGraduateMajor.setItems(GraduateMajors);
        btnPrint.setOnAction(e->{
            Reports reports = new Reports();
            reports.printGraduateMajor();
        });
    }
}
