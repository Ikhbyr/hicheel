package sample;

import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;

public class Controller {
    public static ObservableList<StoreItem> storeItems = FXCollections.observableArrayList();

    @FXML
    void btnNewCustomerOrder() {
        CustomerOrder customerOrder = new CustomerOrder();
        customerOrder.showStage();
    }

    @FXML
    void btnNewStoreItem() {
        NewStoreItem newStoreItem = new NewStoreItem();
        newStoreItem.showStage();
    }

    @FXML
    void btnStoreInventory() {
        DepartmentStore departmentStore = new DepartmentStore();
        departmentStore.showStage();
    }

    @FXML
    void btnViewDailySales() {
        DailySales dailySales = new DailySales();
        dailySales.showStage();
    }
    @FXML
    void btnClose() {
        Platform.exit();
        System.exit(0);
    }
}
