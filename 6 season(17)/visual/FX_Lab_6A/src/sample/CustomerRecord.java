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

public class CustomerRecord implements Initializable {
    @FXML
    public TableView<Customer> lvwCustomers;

    @FXML
    public TableColumn<Customer, Integer> colAccountNumber;

    @FXML
    public TableColumn<Customer, String> colFirstName;

    @FXML
    public TableColumn<Customer, String> colLastName;

    @FXML
    public TableColumn<Customer, String> colPhoneNumber;

    @FXML
    public TableColumn<Customer, String> colEmergencyName;

    @FXML
    public TableColumn<Customer, String> colEmergencyPhone;

    @FXML
    private Button btnClose;

    @Override
    public void initialize(URL url, ResourceBundle resourceBundle){
        colAccountNumber.setCellValueFactory(new PropertyValueFactory<>("AcountNumber"));
        colFirstName.setCellValueFactory(new PropertyValueFactory<>("FirstName"));
        colLastName.setCellValueFactory(new PropertyValueFactory<>("LastName"));
        colEmergencyName.setCellValueFactory(new PropertyValueFactory<>("EmergencyName"));
        colEmergencyPhone.setCellValueFactory(new PropertyValueFactory<>("EmergencyPhone"));
        colPhoneNumber.setCellValueFactory(new PropertyValueFactory<>("PhoneNumber"));
        lvwCustomers.setItems(customers);
    }
    public void btnNewCustomer(){
        CustomerEdit customerEdit = new CustomerEdit();
        customerEdit.showStage();
    }
    public static ObservableList<Customer> customers = FXCollections.observableArrayList(
            new Customer(100752, "Caroline", "Lomey", "301-652-0700","ALbert Lomey","301-412-5055")
    );

    public void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("customerRecord.fxml").openStream());
            customerRecord.setTitle("Customer Records");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
