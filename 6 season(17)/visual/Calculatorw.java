package sample;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.ContentDisplay;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.scene.control.TextField;
import javafx.scene.control.Button;
import java.awt.*;

public class Calculator extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        VBox vbox = new VBox(10);
        vbox.setPadding(new Insets(10,10,10,10));

        Text t = new Text("Celsius to Fahrenheit");
        t.setFont(Font.font("Vanedana", FontWeight.BOLD,20));
        t.setFill(Color.GREEN);
        Text c = new Text("Degree Celsius");
        c.setFont(Font.font(10));
        TextField textField1 = new TextField("0");
        textField1.setAlignment(Pos.CENTER_RIGHT);
//        textField1.setMaxWidth(100);

        Text f = new Text("Degree Fahrenheit");
        c.setFont(Font.font(10));
        TextField textField2 = new TextField();
        textField2.setAlignment(Pos.CENTER_RIGHT);

        HBox h =new HBox(50);
        Button refresh = new Button("Refresh");
        refresh.setOnAction((e)->{textField1.setText("0"); textField2.setText("");});
        Button calculate = new Button("Calculate");
//        calculate.setOnAction((e)->textField2.setText(textField1.getText()));
        calculate.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                double Celsius = Integer.parseInt(textField1.getText());
                double Fahrenheit = Celsius*1.8+32;
                textField2.setText(Double.toString(Fahrenheit));
            }
        });
        Button close = new Button("Close");
        close.setOnAction((e)->primaryStage.close());
        h.getChildren().addAll(refresh,calculate, close);


        vbox.getChildren().addAll(t, c, textField1, f, textField2, h);
        Scene scene = new Scene(vbox,300,200);
        primaryStage.setTitle("Celsius to Fahrenheit | Lab1_2 | Lkhagvadorj");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

}
