package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.net.URL;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class DailySales implements Initializable {
    @FXML
    private TableView<CustomerOrderModel> tbvDaily;

    @FXML
    private TableColumn<CustomerOrderModel, Integer> colItemNumber;

    @FXML
    private TableColumn<CustomerOrderModel, Double> colUnitPrice;

    @FXML
    private TableColumn<CustomerOrderModel, String> colSize;

    @FXML
    private TableColumn<CustomerOrderModel, String> colDescription;
    @FXML
    private TableColumn<CustomerOrderModel, Integer> colQuantity;

    @FXML
    private DatePicker dtpSaleDate;

    ObservableList<CustomerOrderModel> customerOrderModels = FXCollections.observableArrayList();
    @FXML
    void dateInto() {
        customerOrderModels.clear();
        for(CustomerOrderModel Order: CustomerOrder.customerOrderModels){
            if(calcDate(Order.getDate(),dtpSaleDate.getValue())==0){
                customerOrderModels.add(Order);
                tbvDaily.setItems(customerOrderModels);
            }
        }
    }
    public int calcDate(LocalDate date1, LocalDate date2){
        System.out.println((date2.getYear() - date1.getYear()) + (date2.getDayOfYear() - date1.getDayOfYear()));
        return ((date2.getYear() - date1.getYear()) + (date2.getDayOfYear() - date1.getDayOfYear()));
    }
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
            Pane root = fxmlLoader.load(getClass().getResource("dailySales.fxml").openStream());
            customerRecord.setTitle("Daily Sales");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        colDescription.setCellValueFactory(new PropertyValueFactory<>("Description"));
        colItemNumber.setCellValueFactory(new PropertyValueFactory<>("ItemNumber"));
        colSize.setCellValueFactory(new PropertyValueFactory<>("Size"));
        colUnitPrice.setCellValueFactory(new PropertyValueFactory<>("UnitPrice"));
        colQuantity.setCellValueFactory(new PropertyValueFactory<>("Qty"));
        dtpSaleDate.setValue(LocalDate.now());
        dateInto();
    }
}
