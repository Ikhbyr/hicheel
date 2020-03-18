package sample;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Scene scene;
        primaryStage.setTitle("Calculate");
        TextField input = new TextField("1.80");
        TextField input2 = new TextField("75");
        TextField input3 = new TextField();
        HBox layout2 = new HBox(10);
        HBox layout1 = new HBox(10);
        HBox layout3 = new HBox(10);
        Label label1 = new Label("Your Height(in m)");
        Label label2 = new Label("Your Weight (in kg)");
        Label label3 = new Label("Your BMI is");
        label1.setFont(new Font("Arial", 10));
        label2.setFont(new Font("Arial", 10));
        label3.setFont(new Font("Arial", 10));
        layout2.getChildren().addAll(label2, input2);
        layout1.getChildren().addAll(label1, input);
        layout3.getChildren().addAll(label3, input3);
        layout2.setPadding(new Insets(5, 20, 5,20));
        layout1.setPadding(new Insets(5, 20, 5,20));
        layout3.setPadding(new Insets(5, 20, 5,20));
        VBox layout = new VBox(10);
        HBox h2 = new HBox();
        Button cal = new Button("Calculate");
        cal.setMaxSize(100,70);
        h2.setAlignment(Pos.CENTER);
        h2.getChildren().add(cal);
//        cal.setOnAction((e)->textField2.setText(textField1.getText()));
        cal.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                double height = Double.parseDouble(input.getText());
                double weight = Integer.parseInt(input2.getText());
                double BMI = weight/(height*height);
                input3.setText(Double.toString(BMI));
            }
        });
        layout.getChildren().addAll(layout1,layout2, layout3, h2);
        scene = new Scene(layout, 300, 300);
        primaryStage.setScene(scene);
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
