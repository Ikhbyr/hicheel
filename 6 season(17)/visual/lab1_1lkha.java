package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.text.TextAlignment;
import javafx.stage.Stage;


public class lab1_1 extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        VBox v = new VBox(10);
        v.setPadding(new Insets(10,20,10,20));

        HBox h1 = new HBox(20);
        h1.setPadding(new Insets(20,0,30,0));
        h1.setAlignment(Pos.CENTER);
        Label l1 = new Label("This is LABEL 1 written by Lkhagvaorj.A 17B1NUM2406");
        l1.setMaxWidth(120);
        l1.setWrapText(true);
        Button b1 = new Button("Button 1");
        h1.getChildren().addAll(l1, b1);

        StackPane stack1 = new StackPane();
        Label title = new Label("GroupBox 1");
        title.setBackground(new Background(new BackgroundFill(Color.WHITESMOKE, CornerRadii.EMPTY, Insets.EMPTY)));
        title.setTranslateY(-95);
        title.setTranslateX(-90);
        stack1.setBorder(new Border(new BorderStroke(Color.BLACK, BorderStrokeStyle.SOLID, new CornerRadii(0), new BorderWidths(1))));
        stack1.setPadding(new Insets(10,20,10,20));
        GridPane grid = new GridPane();
        grid.setHgap(8);
        grid.setVgap(10);
        grid.setAlignment(Pos.CENTER);
        stack1.getChildren().addAll(grid,title);

        Label speed1 = new Label("Speed 1");
        GridPane.setConstraints(speed1,0,0);
        TextField t1 = new TextField("25");
        t1.setMaxWidth(40);
        GridPane.setConstraints(t1,1,0);
        CheckBox check1 = new CheckBox("On1");
        check1.setSelected(true);
        GridPane.setConstraints(check1,2,0);
        check1.setPadding(new Insets(0,30,0,0));
        CheckBox ch1 = new CheckBox("Dig OP1");
        GridPane.setConstraints(ch1,3,0);

        Label speed2 = new Label("Speed 2");
        GridPane.setConstraints(speed2,0,1);
        TextField t2 = new TextField("150");
        t2.setMaxWidth(40);
        GridPane.setConstraints(t2,1,1);
        CheckBox check2 = new CheckBox("On2");
        check2.setSelected(true);
        GridPane.setConstraints(check2,2,1);
        CheckBox ch2 = new CheckBox("Dig OP2");
        ch2.setSelected(true);
        GridPane.setConstraints(ch2,3,1);

        Label speed3 = new Label("Speed 3");
        GridPane.setConstraints(speed3,0,2);
        TextField t3 = new TextField("80");
        t3.setMaxWidth(40);
        GridPane.setConstraints(t3,1,2);
        CheckBox check3 = new CheckBox("On3");
        check3.setSelected(true);
        GridPane.setConstraints(check3,2,2);
        CheckBox ch3 = new CheckBox("Dig OP3");
        GridPane.setConstraints(ch3,3,2);

        Label speed4 = new Label("Speed 4");
        GridPane.setConstraints(speed4,0,3);
        TextField t4 = new TextField("210");
        t4.setMaxWidth(40);
        GridPane.setConstraints(t4,1,3);
        CheckBox check4 = new CheckBox("On4");
        check4.setSelected(true);
        GridPane.setConstraints(check4,2,3);
        CheckBox ch4 = new CheckBox("Dig OP4");
        ch4.setSelected(true);
        GridPane.setConstraints(ch4,3,3);

        Label servo = new Label("Servo");
        GridPane.setConstraints(servo,0,4);
        TextField t5 = new TextField("128");
        t5.setMaxWidth(40);
        GridPane.setConstraints(t5,1,4);
        grid.getChildren().addAll(speed1,t1,check1,ch1,  speed2,t2,check2,ch2,  speed3,t3,check3,ch3,  speed4,t4,check4,ch4,  servo,t5);

        HBox h2 = new HBox();
        Button b2 = new Button("Send Settings");
        b2.setMaxSize(100,70);
        h2.setAlignment(Pos.CENTER);
        h2.getChildren().add(b2);

        StackPane stack2 = new StackPane();
        Label title2 = new Label("Input");
        title2.setTranslateY(-63);
        title2.setTranslateX(-100);
        title2.setBackground(new Background(new BackgroundFill(Color.WHITESMOKE, CornerRadii.EMPTY, Insets.EMPTY)));
        GridPane grid2 = new GridPane();
        grid2.setHgap(12);
        grid2.setVgap(10);
        grid2.setAlignment(Pos.CENTER);
        grid2.setPadding(new Insets(0,0,10,0));
        stack2.getChildren().addAll(grid2,title2);
        stack2.setPadding(new Insets(20,0,0,0));
        stack2.setBorder(new Border(new BorderStroke(Color.BLACK, BorderStrokeStyle.SOLID, new CornerRadii(0), new BorderWidths(1))));

        CheckBox ip1 = new CheckBox("Dig IP1");
        GridPane.setConstraints(ip1,0,0);
        CheckBox ip2 = new CheckBox("Dig IP2");
        ip2.setSelected(true);
        GridPane.setConstraints(ip2,0,1);
        CheckBox ip3 = new CheckBox("Dig IP3");
        ip3.setSelected(true);
        GridPane.setConstraints(ip3,0,2);
        CheckBox ip4 = new CheckBox("Dig IP4");
        ip4.setSelected(true);
        GridPane.setConstraints(ip4,1,0);
        CheckBox ip5 = new CheckBox("Dig IP5");
        GridPane.setConstraints(ip5,1,1);
        CheckBox ip6 = new CheckBox("Dig IP6");
        GridPane.setConstraints(ip6,1,2);
        grid2.getChildren().addAll(ip1,ip2,ip3,ip4,ip5,ip6);

        v.getChildren().addAll(h1, stack1,h2,stack2);
        Scene scene = new Scene(v,350,500);
        primaryStage.setTitle("Form 1 | lab1_1 | Lkhagvadorj");
        primaryStage.setScene(scene);
        primaryStage.show();
    }
}




