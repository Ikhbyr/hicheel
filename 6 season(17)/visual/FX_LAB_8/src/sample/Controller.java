package sample;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseButton;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

import java.io.*;
import java.sql.*;
import java.util.HashMap;


public class Controller implements Serializable{
    @FXML
    private TableView<ParkParts> lvwAutoParts;

    @FXML
    private TableColumn<ParkParts, Integer> colPartnumber;

    @FXML
    private TableColumn<ParkParts, String> colPartName;

    @FXML
    private TableColumn<ParkParts, Double> colUnitPrice;

    @FXML
    private TableView<SelectedParts> lvwSelectedParts;

    @FXML
    private TableColumn<SelectedParts, Integer> colPartNumberSelected;

    @FXML
    private TableColumn<SelectedParts, String> colPartNameSelected;

    @FXML
    private TableColumn<SelectedParts, Double> colUnitPriceSelected;

    @FXML
    private TableColumn<SelectedParts, Integer> colQtySelected;

    @FXML
    private TableColumn<SelectedParts, Double> colSubTotalSelected;

    @FXML
    private TextField txtPartNumber;

    @FXML
    private TextField txtPartName;

    @FXML
    private TextField txtUnitPrice;

    @FXML
    private TextField txtQty;

    @FXML
    private TextField txtSubTotal;

    @FXML
    public Button btnAdd;

    @FXML
    public Button btnNewAutoPart;

    @FXML
    public Button btnNewCustomerOrder;

    @FXML
    public TextField txtSave;

    @FXML
    public Button btnSave;

    @FXML
    private TextField txtOpen;

    @FXML
    public Button btnOpen;

    @FXML
    private TextField txtTaxRate;

    @FXML
    private TextField txtTaxAmount;

    @FXML
    private TextField txtPartsTotal;

    @FXML
    private TextField txtOrderTotal;

    @FXML
    public Button btnClose;

    @FXML
    public TreeView<String> tvwAutoParts;

    @FXML
    public Button rptInfo1;

    @FXML
    public Button rptInfo2;

    @FXML
    void btnSelected() {
        tvwAutoParts.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                if (mouseEvent.getButton().equals(MouseButton.PRIMARY)) {
                    if (mouseEvent.getClickCount() == 2) {
                        System.out.println("Double clicked");
                        try {
                            System.out.println(tvwAutoParts.getSelectionModel().getSelectedItem().getValue());
                            for(ParkParts parkParts1:parkParts){
                                if ((tvwAutoParts.getSelectionModel().getSelectedItem().getValue().equals(parkParts1.getPartName())) && (tvwAutoParts.getSelectionModel().getSelectedItem().getParent().getValue().equals(parkParts1.getModel())) && (tvwAutoParts.getSelectionModel().getSelectedItem().getParent().getParent().getValue().equals(parkParts1.getMake()))){
                                    int i =0;
                                    for (ParkParts parkParts2:selectedParts){
                                        if (parkParts2.getPartNumber() == parkParts1.getPartNumber()){
                                            i=0;
                                        }else {
                                            i++;
                                        }
                                    }
                                    if(i==selectedParts.size())
                                    selectedParts.add(parkParts1);
                                    tvwAutoParts.getSelectionModel().clearSelection();
                                }
                            }
                        }catch (NullPointerException e){
                            System.out.print("");
                        }
                    }
                }
            }
        });
    }

    @FXML
    void btnRowSelcet() {
        lvwAutoParts.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent mouseEvent) {
                if (mouseEvent.getButton().equals(MouseButton.PRIMARY)) {
                    if (mouseEvent.getClickCount() == 2) {
                        try {
                            txtPartName.setText(lvwAutoParts.getSelectionModel().getSelectedItem().getPartName());
                            txtPartNumber.setText(Integer.toString(lvwAutoParts.getSelectionModel().getSelectedItem().getPartNumber()));
                            txtUnitPrice.setText(Double.toString(lvwAutoParts.getSelectionModel().getSelectedItem().getUnitPrice()));
                        }catch (NullPointerException e){
                            System.out.println("null");
                        }
                    }
                }
            }
        });
    }
    static ObservableList<ParkParts> parkParts = FXCollections.observableArrayList();
    static ObservableList<Integer> listYear = FXCollections.observableArrayList();
    static ObservableList<String> listMake = FXCollections.observableArrayList();
    static ObservableList<String> listModel = FXCollections.observableArrayList();
    static ObservableList<String> listCategory = FXCollections.observableArrayList();
    static ObservableList<ParkParts> selectedParts = FXCollections.observableArrayList();
    static ObservableList<SelectedParts> endSelectedParts = FXCollections.observableArrayList();

    Image nodeImage = new Image("https://w0.pngwave.com/png/354/987/google-docs-google-drive-google-sheets-document-txt-file-png-clip-art.png", 20, 20, true, true);
    Image rootImage = new Image("https://i1.pngguru.com/preview/359/574/335/label-folders-purple-folder-icon-png-clipart.jpg", 20, 20, true, true);
    Image toolsImage = new Image("https://pluspng.com/img-png/tools-png-tool-picture-png-image-2400.png", 20, 20, true, true);
    Image makeImage = new Image("https://png.pngtree.com/png-clipart/20190516/original/pngtree-tune-up-auto-car-logo-design-png-image_4258928.jpg", 20, 20, true, true);

    public void initialize() {
        initFeild();
        setTreeView();
        setButtonEvent();
        addListYear();
        setReceiptNumber();
        colPartnumber.setCellValueFactory(new PropertyValueFactory<>("PartNumber"));
        colPartName.setCellValueFactory(new PropertyValueFactory<>("PartName"));
        colUnitPrice.setCellValueFactory(new PropertyValueFactory<>("UnitPrice"));
        lvwAutoParts.setItems(selectedParts);

        colPartNameSelected.setCellValueFactory(new PropertyValueFactory<>("PartName"));
        colPartNumberSelected.setCellValueFactory(new PropertyValueFactory<>("PartNumber"));
        colSubTotalSelected.setCellValueFactory(new PropertyValueFactory<>("SubTotal"));
        colUnitPriceSelected.setCellValueFactory(new PropertyValueFactory<>("UnitPrice"));
        colQtySelected.setCellValueFactory(new PropertyValueFactory<>("Qty"));
        lvwSelectedParts.setItems(endSelectedParts);

        txtQty.textProperty().addListener((observable, oldValue, newValue) -> {
            if (!newValue.equals("")){
                double subtotal = Double.parseDouble(txtUnitPrice.getText()) * Double.parseDouble(newValue);

                txtSubTotal.textProperty().bind(new SimpleStringProperty(String.format("%.2f", subtotal)));
            }
        });

    }

    public void setReceiptNumber(){
        Connection conn = DBconnect.dbConnection();
        Statement statement = null;
        int receiptNum=0;
        try {
            statement = conn.createStatement();
            ResultSet rs= statement.executeQuery("Select * from orderparts");
            while(rs.next()) {
                if(rs.getInt("orderId")>receiptNum){
                    receiptNum=rs.getInt("orderId");
                }
            }
            receiptNum++;
            txtSave.setText(Integer.toString(receiptNum));
            txtSave.setDisable(true);
        } catch (SQLException te) {
            te.printStackTrace();
        }

    }
    public void addListYear(){
        for (int i = 1990; i <= 2020; i++) {
            listYear.add(i);
        }
    }

    public void ClearField(){
        txtQty.setText("0");
        txtUnitPrice.setText("");
        txtPartName.setText("");
        txtPartNumber.setText("");
    }
    public void setButtonEvent(){
        rptInfo1.setOnAction(actionEvent -> {
            Reports reports = new Reports();
            reports.PrintAutoParts();
        });
        rptInfo2.setOnAction(actionEvent -> {
            Reports reports = new Reports();
            reports.PrintAutoPartsOrder();
        });
        btnNewAutoPart.setOnAction(actionEvent->{
            NewAutoPart newAutoPart = new NewAutoPart();
            newAutoPart.showStage();
            setTreeView();
        });
        btnAdd.setOnAction(actionEvent->{
            SelectedParts selectedParts = new SelectedParts(Integer.parseInt(txtQty.getText()),Double.parseDouble(txtUnitPrice.getText()),txtPartName.getText(),Integer.parseInt(txtPartNumber.getText()));
            endSelectedParts.add(selectedParts);
            orderSummary();
            ClearField();
        });
        btnClose.setOnAction(actionEvent->{
            Stage stage = (Stage) btnClose.getScene().getWindow();
            stage.close();
            System.exit(0);
        });
        btnNewCustomerOrder.setOnAction(actionEvent->{
            txtSubTotal.setDisable(false);
            txtQty.setDisable(false);
            txtPartNumber.setDisable(false);
            txtPartName.setDisable(false);
            txtUnitPrice.setDisable(false);
            btnAdd.setDisable(false);
            txtQty.setEditable(true);
            setReceiptNumber();
            endSelectedParts.clear();
        });
        btnOpen.setOnAction(actionEvent->{
            Connection conn = DBconnect.dbConnection();
            Statement statement = null;
            Controller.parkParts.clear();
            try {
                statement = conn.createStatement();
                ResultSet rs= statement.executeQuery("Select * from orderparts");
                endSelectedParts.clear();
                while(rs.next()) {
                    if(rs.getInt("orderId")==Integer.parseInt(txtOpen.getText())) {
                        SelectedParts selectedParts = new SelectedParts(rs.getInt("qty"), rs.getDouble("unitPrice"), rs.getString("partName"), rs.getInt("partNumber"));
                        Controller.endSelectedParts.add(selectedParts);
                    }
                }
                orderSummary();
                setReceiptNumber();
            } catch (SQLException te) {
                te.printStackTrace();
            }
        });
        btnSave.setOnAction(actionEvent->{
            Connection conn = DBconnect.dbConnection();
            Statement statement = null;
            try {
                statement = conn.createStatement();
                for(SelectedParts selectedParts: endSelectedParts) {
                    statement.executeUpdate("Insert into orderparts(orderId, qty, unitPrice, partName, partnumber) " +
                            "values("+Integer.parseInt(txtSave.getText())+","+selectedParts.getQty()+","+selectedParts.getUnitPrice()+",'"+selectedParts.getPartName()+"',"+selectedParts.getPartNumber()+")");
                }
                System.out.println("Nemegdlee");
                endSelectedParts.clear();
                setReceiptNumber();
            } catch (SQLException te) {
                te.printStackTrace();
            }
        });
    }

    public void setTreeView(){
        DBconnect dBconnect = new DBconnect();
        dBconnect.getParkParts();
        TreeItem<String> rootItem = new TreeItem<String>("College Park Auto-Parts");
        for (int i = 1990; i <= 2020; i++) {
            TreeItem<String> year = new TreeItem<>(Integer.toString(i),new ImageView(rootImage));
            HashMap<String,ParkParts> hashMake = new HashMap<String,ParkParts>();
            HashMap<String,ParkParts> hashModel = new HashMap<String,ParkParts>();
            TreeItem<String> make = null;
            TreeItem<String> model = null;
            for(ParkParts parkParts1:parkParts){
                if(parkParts1.getYear()==i){
                    TreeItem<String> partName = new TreeItem<>(parkParts1.getPartName(),new ImageView(nodeImage));
                    if(hashMake.containsKey(parkParts1.getMake())){
                        if(hashModel.containsKey(parkParts1.getModel())){
                            for(TreeItem<String> make1 : year.getChildren()){
                                if(make1.getValue().contentEquals(parkParts1.getMake())) {
                                    for (TreeItem<String> model1 : make1.getChildren()) {
                                        if (model1.getValue().contentEquals(parkParts1.getModel())) {
                                            model1.getChildren().add(partName);
                                        }
                                    }
                                }
                            }
                        }else{
                            model = new TreeItem<>(parkParts1.getModel(),new ImageView(toolsImage));
                            for(TreeItem<String> make1 : year.getChildren()){
                                if(make1.getValue().contentEquals(parkParts1.getMake())){
                                    make1.getChildren().add(model);
                                    model.getChildren().add(partName);
                                }
                            }
                            hashModel.put(parkParts1.getModel(),parkParts1);
                        }
                    }else{
                        make = new TreeItem<>(parkParts1.getMake(), new ImageView(makeImage));
                        year.getChildren().add(make);
                        model = new TreeItem<>(parkParts1.getModel(),new ImageView(toolsImage));
                        make.getChildren().add(model);
                        model.getChildren().add(partName);
                        hashMake.put(parkParts1.getMake(),parkParts1);
                    }
                }
            }
            rootItem.getChildren().add(year);
        }
        rootItem.getChildren().sorted();
        tvwAutoParts.setRoot(rootItem);
        tvwAutoParts.setShowRoot(true);
    }

    public void orderSummary(){
        double taxAmount=0, partsTotal, orderTotal;

        for(SelectedParts selectedParts : endSelectedParts){
            taxAmount = taxAmount + selectedParts.getSubTotal();
        }
        txtTaxAmount.setText(Double.toString(taxAmount));
        partsTotal=taxAmount*Double.parseDouble(txtTaxRate.getText())/100;
        txtPartsTotal.setText(String.format("%.2f",partsTotal));
        orderTotal = taxAmount+partsTotal;
        txtOrderTotal.setText(String.format("%.2f",orderTotal));
    }

    public void initFeild(){
        txtSubTotal.setDisable(true);
        txtQty.setDisable(true);
        txtPartNumber.setDisable(true);
        txtPartName.setDisable(true);
        txtUnitPrice.setDisable(true);
        btnAdd.setDisable(true);
        txtSubTotal.setEditable(false);
        txtQty.setEditable(false);
        txtPartNumber.setEditable(false);
        txtPartName.setEditable(false);
        txtUnitPrice.setEditable(false);
        txtUnitPrice.setText("0.00");
        txtQty.setText("0");
        txtSubTotal.setText("0.00");

        txtTaxRate.setText("7.75");
        txtTaxAmount.setText("0.00");
        txtPartsTotal.setText("0.00");
        txtOrderTotal.setText("0.00");
    }
}