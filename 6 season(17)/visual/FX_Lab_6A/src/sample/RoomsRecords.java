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

public class RoomsRecords implements Initializable {
    @FXML
    private TableView<Room> lvwRoom;

    @FXML
    private TableColumn<Room, Integer> colRoomNumber;

    @FXML
    private TableColumn<Room, String> colRoomType;

    @FXML
    private TableColumn<Room, String > colBedType;

    @FXML
    private TableColumn<Room, Double> colRate;

    @FXML
    private TableColumn<Room, String> colAvailable;

    @FXML
    private Button btnClose;

    @FXML
    void btnNewRoom() {
        RoomEdit roomEdit = new RoomEdit();
        roomEdit.showStage();
    }

    @FXML
    public void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("room.fxml").openStream());
            customerRecord.setTitle("Rooms Records");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        colRoomNumber.setCellValueFactory(new PropertyValueFactory<>("RoomNumber"));
        colAvailable.setCellValueFactory(new PropertyValueFactory<>("RoomStatus"));
        colBedType.setCellValueFactory(new PropertyValueFactory<>("BedType"));
        colRate.setCellValueFactory(new PropertyValueFactory<>("Rate"));
        colRoomType.setCellValueFactory(new PropertyValueFactory<>("RoomType"));
        lvwRoom.setItems(rooms);
    }
    static ObservableList<Room> rooms = FXCollections.observableArrayList();
}
