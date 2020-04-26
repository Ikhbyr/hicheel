package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class NewMake {
    
    
    public void showStage(){
        try {
            Stage customerRecord = new Stage();
            FXMLLoader fxmlLoader = new FXMLLoader();
            Pane root = fxmlLoader.load(getClass().getResource("newMake.fxml").openStream());
            customerRecord.setTitle("New Auto Part");
            customerRecord.setScene(new Scene(root));
            customerRecord.showAndWait();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @FXML
    private TextField txtMake;

    @FXML
    private Button btnOk;

    @FXML
    private Button btnCancel;

    @FXML
    void btnCancel(ActionEvent event) {
        Stage stage = (Stage) btnCancel.getScene().getWindow();
        stage.close();
    }

    @FXML
    void btnOK(ActionEvent event) {
        setMake(txtMake.getText());
    }


    public void setMake(String make){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        try {
            statement = conn.createStatement();
            statement.executeUpdate("Insert into make(id, make) values(0,'"+make+"')");
            NewAutoPart.getMake();
            System.out.println("Nemegdlee");
        } catch (SQLException te) {
            te.printStackTrace();
        }

    }
}
