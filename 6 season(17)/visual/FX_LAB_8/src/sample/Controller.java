package sample;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.TreeItem;
import javafx.scene.control.TreeView;
import javafx.scene.input.MouseEvent;

import javax.sql.rowset.spi.SyncResolver;

public class Controller {
    @FXML
    private TreeView<String> tvwAutoParts;

    public void initialize() {
        TreeItem<String> rootItem = new TreeItem<String>("Tutorials");

        TreeItem<String> webItem = new TreeItem<>("Web Tutorials");
        webItem.getChildren().add(new TreeItem<>("HTML  Tutorial"));
        webItem.getChildren().add(new TreeItem<>("HTML5 Tutorial"));
        webItem.getChildren().add(new TreeItem<>("CSS Tutorial"));
        webItem.getChildren().add(new TreeItem<>("SVG Tutorial"));
        System.out.println(webItem.getChildren().sorted());

        rootItem.getChildren().add(webItem);

        TreeItem<String> webItem1 = new TreeItem<>("Web Tutorials12");
        webItem1.getChildren().add(new TreeItem<>("HTML  Tutorial"));
        webItem1.getChildren().add(new TreeItem<>("HTML5 Tutorial"));
        webItem1.getChildren().add(new TreeItem<>("CSS Tutorial"));
        webItem1.getChildren().add(new TreeItem<>("SVG Tutorial"));
        webItem.getChildren().add(webItem1);

        TreeItem<String> javaItem = new TreeItem<>("Java Tutorials");
        javaItem.getChildren().add(new TreeItem<>("Java Language"));
        javaItem.getChildren().add(new TreeItem<>("Java Collections"));
        javaItem.getChildren().add(new TreeItem<>("Java Concurrency"));
        rootItem.getChildren().add(javaItem);

        tvwAutoParts.setRoot(rootItem);

        tvwAutoParts.setShowRoot(false);
    }
}
