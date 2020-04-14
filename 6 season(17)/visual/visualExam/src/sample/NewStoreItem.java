package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

public class NewStoreItem {
    @FXML
    private TextField txtItemNumber;

    @FXML
    private TextField txtItemName;

    @FXML
    private TextField txtSize;

    @FXML
    private TextField txtUnitPrice;

    @FXML
    private Button btnClose;

    @FXML
    void btnAddItem() {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Add Employee");
        alert.setHeaderText("Амжилттай нэмэгдлээ...");
        StoreItem storeItem1 = new StoreItem(Integer.parseInt(txtItemNumber.getText()),txtItemName.getText(),txtSize.getText(),Double.parseDouble(txtUnitPrice.getText()));
        Controller.storeItems.add(storeItem1);
        alert.showAndWait();
        btnClose();
    }

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("storeItem.fxml").openStream());
            customerRecord.setTitle("Store Item");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
