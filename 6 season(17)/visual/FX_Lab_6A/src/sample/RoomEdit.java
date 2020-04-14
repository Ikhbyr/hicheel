package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class RoomEdit implements Initializable {
    @FXML
    private TextField txtRoomNumber;

    @FXML
    private ComboBox<String> cbxRoomTypes;

    @FXML
    private ComboBox<String> cbxBedTypes;

    @FXML
    private TextField txtRate;

    @FXML
    private ComboBox<String> cbxOccupanyStatus;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOk() {
        try {
            Room room = new Room(Integer.parseInt(txtRoomNumber.getText()), cbxRoomTypes.getValue(), cbxBedTypes.getValue(), Double.parseDouble(txtRate.getText()), cbxOccupanyStatus.getValue());
            RoomsRecords.rooms.add(room);
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText("Амжилттай нэмэгдлээ.");
            alert.setTitle("Add Customer");
            alert.showAndWait();
            btnCancel();
        }
        catch (Exception e){
            System.out.println("Aldaa garlaa");
        }
    }

    ObservableList<String> cbxRoomType = FXCollections.observableArrayList("Bedroom","Conference Room","Other");
    ObservableList<String> cbxBedType = FXCollections.observableArrayList("King","Queen","Double","Other");
    ObservableList<String> cbxStatus = FXCollections.observableArrayList("Other","Available","Occupied");
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("roomEdit.fxml").openStream());
            customerRecord.setTitle("Room Edit");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        cbxBedTypes.setItems(cbxBedType);
        cbxRoomTypes.setItems(cbxRoomType);
        cbxOccupanyStatus.setItems(cbxStatus);
    }
}
