package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Control;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class NewAutoPart {
    @FXML
    public ComboBox<Integer> cbxYear;

    @FXML
    public ComboBox<String> cbxMakes;

    @FXML
    public ComboBox<String> cbxModels;

    @FXML
    public ComboBox<String> cbxCategories;

    @FXML
    private TextField txtUnitPrice;

    @FXML
    private TextField txtPartName;

    @FXML
    private TextField txtPartNumber;

    @FXML
    private Button btnNewCategory;

    @FXML
    private Button btnNewModel;

    @FXML
    private Button btnNewMake;

    @FXML
    private Button btnSubmit;

    @FXML
    private Button btnClose;

    @FXML
    void btnClose() {
        Stage stage = (Stage) btnClose.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnNewCategory() {
        NewCategory newCategory = new NewCategory();
        newCategory.showStage();
    }

    @FXML
    void btnNewMake() {
        NewMake make = new NewMake();
        make.showStage();
    }

    @FXML
    void btnNewModel() {
        NewModel model = new NewModel();
        model.showStage();
    }

    @FXML
    void btnSubmit() {
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        Double num;
        try {
            num = Double.parseDouble(txtUnitPrice.getText());
        } catch (NumberFormatException e) {
            num = 0.0;
        }
        try {
            statement = conn.createStatement();
            statement.executeUpdate("INSERT INTO `parkparts` (`id`, `year`, `partname`, `make`, `model`, `category`, `unitPrice`, `partNumber`) " +
                    "VALUES (NULL, '"+cbxYear.getValue()+"', '"+txtPartName.getText()+"', '"+cbxMakes.getValue()+"', '"+cbxModels.getValue()+"', '"+cbxCategories.getValue()+"', '"+num+"', '"+txtPartNumber.getText()+"')");
            NewAutoPart.getModels();
            System.out.println("Nemegdlee");
            btnClose();
        } catch (SQLException te) {
            te.printStackTrace();
        }

    }

    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("newAutoPart.fxml").openStream());
            customerRecord.setTitle("New Auto Part");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    public void initialize(){
        cbxYear.setItems(Controller.listYear);
        cbxMakes.setItems(Controller.listMake);
        cbxCategories.setItems(Controller.listCategory);
        cbxModels.setItems(Controller.listModel);
        getMake();
        getCategory();
        getModels();
    }
    public static void getModels(){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        Controller.listModel.clear();
        try {
            statement = conn.createStatement();
            ResultSet rs= statement.executeQuery("Select * from model");
            while(rs.next()) {
                Controller.listModel.add(rs.getString("Model"));
            }
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }

    public static void getMake(){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        Controller.listMake.clear();
        try {
            statement = conn.createStatement();
            ResultSet rs= statement.executeQuery("Select * from make");
            while(rs.next()) {
                Controller.listMake.add(rs.getString("Make"));
            }
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }
    public static void getCategory(){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        Controller.listCategory.clear();
        try {
            statement = conn.createStatement();
            ResultSet rs= statement.executeQuery("Select * from category");
            while(rs.next()) {
                Controller.listCategory.add(rs.getString("Category"));
            }
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }
}
