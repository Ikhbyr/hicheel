package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.net.URL;
import java.util.ResourceBundle;

public class NewUndergraduateMajor implements Initializable {
    @FXML
    private TextField txtMajor;

    @FXML
    private ComboBox<String> cbxDean;

    @FXML
    private Button btnCancel;
    ObservableList<String> cbxType = FXCollections.observableArrayList("Bedroom","Conference Room","Other");
    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOk() {
        dbc dbc1 = new dbc();
        dbc1.insertUnderMajor(txtMajor.getText(),cbxDean.getValue());
        btnCancel();
    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        cbxDean.setItems(cbxType);
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("NewUndergraduateMajor.fxml").openStream());
            customerRecord.setTitle("New Undergraduate Major");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
