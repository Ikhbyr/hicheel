package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

public class DepartmentStore {
    @FXML
    private TableView<StoreItem> tbvDepartmentStore;

    @FXML
    private TableColumn<StoreItem, Integer> colItemNumber;

    @FXML
    private TableColumn<StoreItem, Double> colUnitPrice;

    @FXML
    private TableColumn<StoreItem, String> colSize;

    @FXML
    private TableColumn<StoreItem, String> colItemName;

    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnLoad() {
        colItemNumber.setCellValueFactory(new PropertyValueFactory<>("ItemNumber"));
        colItemName.setCellValueFactory(new PropertyValueFactory<>("ItemName"));
        colSize.setCellValueFactory(new PropertyValueFactory<>("Size"));
        colUnitPrice.setCellValueFactory(new PropertyValueFactory<>("UnitPrice"));
        tbvDepartmentStore.setItems(Controller.storeItems);
    }
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("departmentStore.fxml").openStream());
            customerRecord.setTitle("Department Store");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
