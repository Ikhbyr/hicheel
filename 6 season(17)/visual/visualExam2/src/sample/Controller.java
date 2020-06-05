package sample;

import javafx.beans.Observable;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.control.cell.*;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.util.Callback;
import javafx.util.StringConverter;

import java.awt.*;

public class Controller{
//    @FXML
//    private ListView<String> lvwListPeople;

    @FXML
    private TableView<Info> vwTableView;
    @FXML
    private TableColumn<Info, String> colEnglish;

    @FXML
    private TableColumn<Info, String> colJapan;

    @FXML
    private TableColumn<Info, Boolean> colBoolean;

    @FXML
    private TableColumn<Info, String> colColor;

    static Object[][] rowData = {
            { "1", "ichi -\u4E00", Boolean.TRUE, "red" },
            { "2", "ni -\u4E8C", Boolean.TRUE, "blue" },
            { "3", "san -\u4E09", Boolean.FALSE, "green" },
            { "4", "shi -\u56DB", Boolean.TRUE, "magenta" },
            { "5", "go -\u4E94", Boolean.FALSE, "pink" },
    };
    static Info []infos = new Info[rowData.length];
    static ObservableList<Info> items = FXCollections.observableArrayList();
    static ObservableList<String> colorList = FXCollections.observableArrayList();
    
    public void initialize(){
        readData();
//        lvwListPeople.setEditable(true);
//        StringConverter<People> converter;
//        Callback<ListView<String>, ListCell<String>> cellFactory = TextFieldListCell.forListView();
//        ObservableList<String> items = FXCollections.<String>observableArrayList();
//
//        people[0] = new People(10, "Bat");
//        people[1] = new People(9, "Dorj");
//        for (int i = 0; i < 2; i++) {
//            lvwListPeople.getItems().add(people[i].getData());
//            items.add(people[i].getData());
//        }
//        lvwListPeople.setCellFactory(ChoiceBoxListCell.forListView(items));
        items.addAll();
        vwTableView.setEditable(true);
        colEnglish.setCellFactory(TextFieldTableCell.forTableColumn());
        colJapan.setCellFactory(TextFieldTableCell.forTableColumn());

        colEnglish.setCellValueFactory(new PropertyValueFactory<>("English"));
        colJapan.setCellValueFactory(new PropertyValueFactory<>("Japan"));

        colColor.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<Info, String>, ObservableValue<String>>() {

            @Override
            public ObservableValue<String> call(TableColumn.CellDataFeatures<Info, String> param) {
                Info Info = param.getValue();
                String color = Info.getColor();

                return new SimpleObjectProperty<String>(color){
                    private final javafx.scene.shape.Rectangle rectangle;
                    {
                        setContentDisplay(ContentDisplay.GRAPHIC_ONLY);
                        rectangle = new Rectangle(10, 10);
                    }

                    @Override
                    protected void updateItem(Color item, boolean empty) {
                        super.updateItem(item, empty);

                        if (item == null || empty) {
                            setGraphic(null);
                        } else {
                            rectangle.setFill(item);
                            setGraphic(rectangle);
                        }
                    }
                };;
            }
        });

        colColor.setCellFactory(ComboBoxTableCell.forTableColumn(colorList));

        colColor.setOnEditCommit((TableColumn.CellEditEvent<Info, String> event) -> {
            TablePosition<Info, String> pos = event.getTablePosition();

            String color = event.getNewValue();
            int row = pos.getRow();
            Info Info = event.getTableView().getItems().get(row);
            Info.setColor(color);
        });
        colBoolean.setEditable(true);
        colBoolean.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<Info, Boolean>, ObservableValue<Boolean>>() {

            @Override
            public ObservableValue<Boolean> call(TableColumn.CellDataFeatures<Info, Boolean> param) {
                Info info = param.getValue();

                SimpleBooleanProperty booleanProp = new SimpleBooleanProperty(info.isBool());
                booleanProp.addListener(new ChangeListener<Boolean>() {
                    @Override
                    public void changed(ObservableValue<? extends Boolean> observable, Boolean oldValue, Boolean newValue) {
                        info.setBool(newValue);
                    }
                });
                return booleanProp;
            }
        });
        colBoolean.setCellFactory(new Callback<TableColumn<Info, Boolean>, TableCell<Info, Boolean>>() {
            @Override
            public TableCell<Info, Boolean> call(TableColumn<Info, Boolean> p) {
                CheckBoxTableCell<Info, Boolean> cell = new CheckBoxTableCell<Info, Boolean>();
                cell.setAlignment(Pos.CENTER);
                return cell;
            }
        });
        vwTableView.setItems(items);
    }

    public static void readData(){
        System.out.println(rowData.length);
        for (int i = 0; i < rowData.length; i++) {
            infos[i] = new Info(rowData[i][3].toString(),rowData[i][0].toString(),rowData[i][1].toString(),rowData[i][2].equals(true));
            colorList.add(String.valueOf(rowData[i][3]));
        }
        items.addAll(infos);
    }
}

