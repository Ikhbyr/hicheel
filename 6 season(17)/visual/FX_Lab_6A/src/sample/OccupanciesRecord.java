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

public class OccupanciesRecord implements Initializable {
    @FXML
    private TableView<Occupancy> lvwOccupancies;

    @FXML
    private TableColumn<Occupancy, Integer> colOccupancyNumber;

    @FXML
    private TableColumn<Occupancy, LocalDate> colDateOccupied;

    @FXML
    private TableColumn<Occupancy, Integer> colProcessedBy;

    @FXML
    private TableColumn<Occupancy, Integer> colProcessedFor;

    @FXML
    private TableColumn<Occupancy, Integer> colRoomOccupied;

    @FXML
    private TableColumn<Occupancy, Double> colRateApplied;

    @FXML
    private TableColumn<Occupancy, Double> colPhoneUse;

    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnNewOccupancy() {
        OccupanciesEdit occupanciesEdit = new OccupanciesEdit();
        occupanciesEdit.showStage();
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("occupanciesRecords.fxml").openStream());
            customerRecord.setTitle("Occupancies Records");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        colOccupancyNumber.setCellValueFactory(new PropertyValueFactory<>("OccupancyNumber"));
        colDateOccupied.setCellValueFactory(new PropertyValueFactory<>("DateOccupied"));
        colPhoneUse.setCellValueFactory(new PropertyValueFactory<>("PhoneCharge"));
        colProcessedBy.setCellValueFactory(new PropertyValueFactory<>("EmployeeNumber"));
        colProcessedFor.setCellValueFactory(new PropertyValueFactory<>("CustomerNumber"));
        colRateApplied.setCellValueFactory(new PropertyValueFactory<>("RateApplied"));
        colRoomOccupied.setCellValueFactory(new PropertyValueFactory<>("RoomNumber"));
        lvwOccupancies.setItems(occupancies);

    }
    static ObservableList<Occupancy> occupancies = FXCollections.observableArrayList();
}
