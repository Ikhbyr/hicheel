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

public class NewModel {
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("newModel.fxml").openStream());
            customerRecord.setTitle("New Model");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    @FXML
    private TextField txtModel;

    @FXML
    public Button btnOk;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel() {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }


    public void initialize(){
        btnOk.setOnAction(actionEvent-> {
            setModel(txtModel.getText());
            btnCancel();
        });
    }

    public void setModel(String model){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        try {
            statement = conn.createStatement();
            statement.executeUpdate("Insert into model(id, model) values(0,'"+model+"')");
            NewAutoPart.getModels();
            System.out.println("Nemegdlee");
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }
}
