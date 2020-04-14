package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;


import java.net.URL;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.util.ResourceBundle;

public class CustomerOrder implements Initializable {
    @FXML
    private TextField txtItemNumber1;

    @FXML
    private TextField txtDescription1;

    @FXML
    private TextField txtSize1;

    @FXML
    private TextField txtUnitPrice1;

    @FXML
    private TextField txtQuantity1;

    @FXML
    private TextField txtSubTotal1;

    @FXML
    private TextField txtItemNumber2;

    @FXML
    private TextField txtDescription2;

    @FXML
    private TextField txtSize2;

    @FXML
    private TextField txtUnitPrice2;

    @FXML
    private TextField txtQuantity2;

    @FXML
    private TextField txtSubTotal2;

    @FXML
    private TextField txtItemNumber3;

    @FXML
    private TextField txtDescription3;

    @FXML
    private TextField txtSize3;

    @FXML
    private TextField txtUnitPrice3;

    @FXML
    private TextField txtQuantity3;

    @FXML
    private TextField txtSubTotal3;

    @FXML
    private TextField txtItemNumber4;

    @FXML
    private TextField txtDescription4;

    @FXML
    private TextField txtSize4;

    @FXML
    private TextField txtUnitPrice4;

    @FXML
    private TextField txtQuantity4;

    @FXML
    private TextField txtSubTotal4;

    @FXML
    private TextField txtItemNumber5;

    @FXML
    private TextField txtDescription5;

    @FXML
    private TextField txtSize5;

    @FXML
    private TextField txtUnitPrice5;

    @FXML
    private TextField txtQuantity5;

    @FXML
    private TextField txtSubTotal5;

    @FXML
    private TextField txtItemNumber6;

    @FXML
    private TextField txtDescription6;

    @FXML
    private TextField txtSize6;

    @FXML
    private TextField txtUnitPrice6;

    @FXML
    private TextField txtQuantity6;

    @FXML
    private TextField txtSubTotal6;

    @FXML
    private DatePicker dtpSaleDate;

    @FXML
    private TextField txtTotalOrder;
    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }
    public static ObservableList<CustomerOrderModel> customerOrderModels = FXCollections.observableArrayList();
    @FXML
    void btnSave() {
        if(!txtItemNumber1.getText().trim().isEmpty()) {
            CustomerOrderModel customerOrderModel1 = new CustomerOrderModel(Integer.parseInt(txtItemNumber1.getText()), txtSize1.getText(), Double.parseDouble(txtUnitPrice1.getText()), dtpSaleDate.getValue(), txtDescription1.getText(), Integer.parseInt(txtQuantity1.getText()));
            customerOrderModels.add(customerOrderModel1);
        }
        if(!txtItemNumber2.getText().trim().isEmpty()) {
            CustomerOrderModel customerOrderModel2 = new CustomerOrderModel(Integer.parseInt(txtItemNumber2.getText()), txtSize2.getText(), Double.parseDouble(txtUnitPrice2.getText()), dtpSaleDate.getValue(), txtDescription2.getText(), Integer.parseInt(txtQuantity2.getText()));
            customerOrderModels.add(customerOrderModel2);
        }
        if(!txtItemNumber3.getText().trim().isEmpty()) {
            CustomerOrderModel customerOrderModel3 = new CustomerOrderModel(Integer.parseInt(txtItemNumber3.getText()), txtSize3.getText(), Double.parseDouble(txtUnitPrice3.getText()), dtpSaleDate.getValue(), txtDescription3.getText(), Integer.parseInt(txtQuantity3.getText()));
            customerOrderModels.add(customerOrderModel3);
        }
        if(!txtItemNumber4.getText().trim().isEmpty()) {
            CustomerOrderModel customerOrderModel4 = new CustomerOrderModel(Integer.parseInt(txtItemNumber4.getText()), txtSize4.getText(), Double.parseDouble(txtUnitPrice4.getText()), dtpSaleDate.getValue(), txtDescription4.getText(), Integer.parseInt(txtQuantity4.getText()));
            customerOrderModels.add(customerOrderModel4);
        }
        if(!txtItemNumber5.getText().trim().isEmpty()) {
            CustomerOrderModel customerOrderModel5 = new CustomerOrderModel(Integer.parseInt(txtItemNumber5.getText()), txtSize5.getText(), Double.parseDouble(txtUnitPrice5.getText()), dtpSaleDate.getValue(), txtDescription5.getText(), Integer.parseInt(txtQuantity5.getText()));
            customerOrderModels.add(customerOrderModel5);
        }
        if(!txtItemNumber6.getText().trim().isEmpty()) {
            CustomerOrderModel customerOrderModel6 = new CustomerOrderModel(Integer.parseInt(txtItemNumber6.getText()), txtSize6.getText(), Double.parseDouble(txtUnitPrice6.getText()), dtpSaleDate.getValue(), txtDescription6.getText(), Integer.parseInt(txtQuantity6.getText()));
            customerOrderModels.add(customerOrderModel6);
        }
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Add Order");
        alert.setHeaderText("Хадгалсан...");
        alert.showAndWait();
        btnClose();
        showStage();
    }

    @FXML
    void btnRead1() {
        if(!txtItemNumber1.getText().trim().isEmpty())
        for( StoreItem item : Controller.storeItems){
            if(item.getItemNumber()== Integer.parseInt(txtItemNumber1.getText())){
                txtSize1.setText(item.getSize());
                txtUnitPrice1.setText(Double.toString(item.getUnitPrice()));
                txtDescription1.setText(item.getItemName());
                break;
            }else {
                txtSize1.setText("");
                txtUnitPrice1.setText("");
                txtDescription1.setText("");
            }
        }
        else {
            txtSize1.setText("");
            txtUnitPrice1.setText("");
            txtDescription1.setText("");
        }
    }

    @FXML
    void btnRead2() {
        if(!txtItemNumber2.getText().trim().isEmpty())
        for( StoreItem item : Controller.storeItems){
            if(item.getItemNumber()== Integer.parseInt(txtItemNumber2.getText())){
                txtSize2.setText(item.getSize());
                txtUnitPrice2.setText(Double.toString(item.getUnitPrice()));
                txtDescription2.setText(item.getItemName());
                break;
            }else {
                txtSize2.setText("");
                txtUnitPrice2.setText("");
                txtDescription2.setText("");
            }
        }
        else {
            txtSize2.setText("");
            txtUnitPrice2.setText("");
            txtDescription2.setText("");
        }
    }

    @FXML
    void btnRead3() {
        if(!txtItemNumber3.getText().trim().isEmpty())
        for( StoreItem item : Controller.storeItems){
            if(item.getItemNumber()== Integer.parseInt(txtItemNumber3.getText())){
                txtSize3.setText(item.getSize());
                txtUnitPrice3.setText(Double.toString(item.getUnitPrice()));
                txtDescription3.setText(item.getItemName());
                break;
            }else {
                txtSize3.setText("");
                txtUnitPrice3.setText("");
                txtDescription3.setText("");
            }
        }else {
            txtSize3.setText("");
            txtUnitPrice3.setText("");
            txtDescription3.setText("");
        }
    }

    @FXML
    void btnRead4() {
        if(!txtItemNumber4.getText().trim().isEmpty())
        for( StoreItem item : Controller.storeItems){
            if(item.getItemNumber()== Integer.parseInt(txtItemNumber4.getText())){
                txtSize4.setText(item.getSize());
                txtUnitPrice4.setText(Double.toString(item.getUnitPrice()));
                txtDescription4.setText(item.getItemName());
                break;
            }else {
                txtSize4.setText("");
                txtUnitPrice4.setText("");
                txtDescription4.setText("");
            }
        }else {
            txtSize4.setText("");
            txtUnitPrice4.setText("");
            txtDescription4.setText("");
        }
    }

    @FXML
    void btnRead5() {
        if(!txtItemNumber5.getText().trim().isEmpty())
        for( StoreItem item : Controller.storeItems){
            if(item.getItemNumber()== Integer.parseInt(txtItemNumber5.getText())){
                txtSize5.setText(item.getSize());
                txtUnitPrice5.setText(Double.toString(item.getUnitPrice()));
                txtDescription5.setText(item.getItemName());
                break;
            }else {
                txtSize5.setText("");
                txtUnitPrice5.setText("");
                txtDescription5.setText("");
            }
        }else {
            txtSize5.setText("");
            txtUnitPrice5.setText("");
            txtDescription5.setText("");
        }
    }

    @FXML
    void btnRead6() {
        if(!txtItemNumber6.getText().trim().isEmpty())
        for( StoreItem item : Controller.storeItems){
            if(item.getItemNumber()== Integer.parseInt(txtItemNumber6.getText())){
                txtSize6.setText(item.getSize());
                txtUnitPrice6.setText(Double.toString(item.getUnitPrice()));
                txtDescription6.setText(item.getItemName());
                break;
            }else {
                txtSize6.setText("");
                txtUnitPrice6.setText("");
                txtDescription6.setText("");
            }
        }else {
            txtSize6.setText("");
            txtUnitPrice6.setText("");
            txtDescription6.setText("");
        }
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("customerOrder.fxml").openStream());
            customerRecord.setTitle("Customer Order");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {
        dtpSaleDate.setValue(LocalDate.now());
        DecimalFormat df = new DecimalFormat("#.00");
        txtQuantity1.textProperty().addListener((obs, ov, nv) -> {
            if(txtQuantity1.getText().trim().isEmpty() || txtUnitPrice1.getText().trim().isEmpty()){
                txtSubTotal1.setText("0.00");
            }else {
                txtSubTotal1.setText(df.format(Double.parseDouble(txtUnitPrice1.getText())*Integer.parseInt(txtQuantity1.getText())));
            }
            CalTotalOrder();
        });
        txtQuantity2.textProperty().addListener((obs, ov, nv) -> {
            if(txtQuantity2.getText().trim().isEmpty() || txtUnitPrice2.getText().trim().isEmpty()){
                txtSubTotal2.setText("0.00");
            }else {
                txtSubTotal2.setText(df.format(Double.parseDouble(txtUnitPrice2.getText())*Integer.parseInt(txtQuantity2.getText())));
            }
            CalTotalOrder();
        });
        txtQuantity3.textProperty().addListener((obs, ov, nv) -> {
            if(txtQuantity3.getText().trim().isEmpty() || txtUnitPrice3.getText().trim().isEmpty()){
                txtSubTotal3.setText("0.00");
            }else {
                txtSubTotal3.setText(df.format(Double.parseDouble(txtUnitPrice3.getText())*Integer.parseInt(txtQuantity3.getText())));
            }
            CalTotalOrder();
        });
        txtQuantity4.textProperty().addListener((obs, ov, nv) -> {
            if(txtQuantity4.getText().trim().isEmpty() || txtUnitPrice4.getText().trim().isEmpty()){
                txtSubTotal4.setText("0.00");
            }else {
                txtSubTotal4.setText(df.format(Double.parseDouble(txtUnitPrice4.getText())*Integer.parseInt(txtQuantity4.getText())));
            }
            CalTotalOrder();
        });
        txtQuantity5.textProperty().addListener((obs, ov, nv) -> {
            if(txtQuantity5.getText().trim().isEmpty() || txtUnitPrice5.getText().trim().isEmpty()){
                txtSubTotal5.setText("0.00");
            }else {
                txtSubTotal5.setText(df.format(Double.parseDouble(txtUnitPrice5.getText())*Integer.parseInt(txtQuantity5.getText())));
            }
            CalTotalOrder();
        });
        txtQuantity6.textProperty().addListener((obs, ov, nv) -> {
            if(txtQuantity6.getText().trim().isEmpty() || txtUnitPrice6.getText().trim().isEmpty()){
                txtSubTotal6.setText("0.00");
            }else {
                txtSubTotal6.setText(df.format(Double.parseDouble(txtUnitPrice6.getText())*Integer.parseInt(txtQuantity6.getText())));
            }
            CalTotalOrder();
        });
    }
    public void CalTotalOrder(){
        double s=0;
        if(!txtSubTotal1.getText().trim().isEmpty()) {
            s=s+Double.parseDouble(txtSubTotal1.getText());
        }
        if(!txtSubTotal2.getText().trim().isEmpty()) {
            s=s+Double.parseDouble(txtSubTotal2.getText());
        }
        if(!txtSubTotal3.getText().trim().isEmpty()) {
            s=s+Double.parseDouble(txtSubTotal3.getText());
        }
        if(!txtSubTotal3.getText().trim().isEmpty()) {
            s=s+Double.parseDouble(txtSubTotal3.getText());
        }
        if(!txtSubTotal3.getText().trim().isEmpty()) {
            s=s+Double.parseDouble(txtSubTotal3.getText());
        }
        if(!txtSubTotal3.getText().trim().isEmpty()) {
            s=s+Double.parseDouble(txtSubTotal3.getText());
        }
        txtTotalOrder.setText(Double.toString(s));
    }
}
