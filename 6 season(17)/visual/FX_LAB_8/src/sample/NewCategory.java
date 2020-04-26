package sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class NewCategory {
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("newCategory.fxml").openStream());
            customerRecord.setTitle("New Category");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    @FXML
    private TextField txtCategory;

    @FXML
    private Button btnOk;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOK() {
        setCategory(txtCategory.getText());
        btnCancel();
    }

    public void setCategory(String category){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        try {
            statement = conn.createStatement();
            statement.executeUpdate("Insert into category(id, category) values(0,'"+category+"')");
            NewAutoPart.getCategory();
            System.out.println("Nemegdlee");
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }

}
