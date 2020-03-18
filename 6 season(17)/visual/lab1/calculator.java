package sample;

import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.scene.Scene;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Scene scene;
        Button button;
        primaryStage.setTitle("Calculator");
        TextField input = new TextField();
        button = new Button("BackSpace");
        Button button1 = new Button("C");
        button1.setPrefWidth(50);
        Button button2 = new Button("OFF");
        button2.setPrefWidth(50);
        VBox layout = new VBox(10);
        layout.setPadding(new Insets(30, 20, 20,20));
        HBox layout1 = new HBox(10);
        layout1.getChildren().addAll(button,button1,button2);
        layout1.setPadding(new Insets(30, 0, 10,20));
        Button b1 = new Button("7");
        Button b2 = new Button("8");
        Button b3 = new Button("9");
        Button b4 = new Button("/");
        Button b5 = new Button("x^");
        Button b6 = new Button("4");
        Button b7 = new Button("5");
        Button b8 = new Button("6");
        Button b9 = new Button("*");
        Button b10 = new Button("Sqrt");
        b10.setStyle("-fx-font-size: 0.6em; ");
        b10.setPrefHeight(25);
        Button b11 = new Button("1");
        Button b12 = new Button("2");
        Button b13 = new Button("3");
        Button b14 = new Button("-");
        Button b15 = new Button("1/x");
        b15.setStyle("-fx-font-size: 0.8em; ");
        b15.setPrefHeight(25);
        Button b16 = new Button("0");
        Button b17 = new Button("+/-");
        b17.setStyle("-fx-font-size: 0.7em; ");
        b17.setPrefHeight(25);
        Button b18 = new Button(".");
        Button b19 = new Button("+");
        Button b20 = new Button("=");
        b1.setPrefWidth(30);
        b2.setPrefWidth(30);
        b3.setPrefWidth(30);
        b5.setPrefWidth(30);
        b4.setPrefWidth(30);
        b6.setPrefWidth(30);
        b7.setPrefWidth(30);
        b8.setPrefWidth(30);
        b9.setPrefWidth(30);
        b10.setPrefWidth(30);
        b11.setPrefWidth(30);
        b12.setPrefWidth(30);
        b13.setPrefWidth(30);
        b14.setPrefWidth(30);
        b15.setPrefWidth(30);
        b16.setPrefWidth(30);
        b17.setPrefWidth(30);
        b18.setPrefWidth(30);
        b19.setPrefWidth(30);
        b20.setPrefWidth(30);
        HBox layout2 = new HBox(10);
        layout2.getChildren().addAll(b1,b2,b3,b4,b5);
        layout2.setPadding(new Insets(0, 0, 0,20));
        HBox layout3 = new HBox(10);
        layout3.getChildren().addAll(b6,b7,b8,b9,b10);
        layout3.setPadding(new Insets(0, 0, 0,20));
        HBox layout4 = new HBox(10);
        layout4.getChildren().addAll(b11,b12,b13,b14,b15);
        layout4.setPadding(new Insets(0, 0, 0,20));
        HBox layout5 = new HBox(10);
        layout5.getChildren().addAll(b16,b17,b18,b19,b20);
        layout5.setPadding(new Insets(0, 0, 0,20));
        layout.getChildren().addAll(input, layout1, layout2,layout3,layout4,layout5);
        scene = new Scene(layout, 250, 300);
        primaryStage.setScene(scene);
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
