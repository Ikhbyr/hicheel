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

public class UndergraduateMajors implements Initializable {
    @FXML
    private TableView<UndergraduateMajor> dgvUndergraduateMajor;

    @FXML
    private TableColumn<UndergraduateMajor, String> colMajor;

    @FXML
    private TableColumn<UndergraduateMajor, String> colDean;

    @FXML
    private TableColumn<UndergraduateMajor, String> colTitle;

    @FXML
    private Button btnClose;

    @FXML
    public Button btnPrint;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }
    static ObservableList<UndergraduateMajor> undergraduateMajors = FXCollections.observableArrayList();
    @FXML
    void btnNewUndergraduate() {
        NewUndergraduateMajor newUndergraduateMajor = new NewUndergraduateMajor();
        newUndergraduateMajor.showStage();
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("UndergraduateMajors.fxml").openStream());
            customerRecord.setTitle("Undergraduate Majors");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        undergraduateMajors.clear();
        dbc dbc1 = new dbc();
        dbc1.getUnderMajor();
        colDean.setCellValueFactory(new PropertyValueFactory<>("Dean"));
        colMajor.setCellValueFactory(new PropertyValueFactory<>("Major"));
        colTitle.setCellValueFactory(new PropertyValueFactory<>("Title"));
        dgvUndergraduateMajor.setItems(undergraduateMajors);
        btnPrint.setOnAction(e->{
            Reports reports = new Reports();
            reports.printUndergraduateMajor();
        });
    }
}
