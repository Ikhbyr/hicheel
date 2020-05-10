package sample;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.*;

import java.util.Objects;
import java.util.Random;

public class Controller {
    @FXML
    private TextField txtFirstSentence;

    @FXML
    private TextField txt1;

    @FXML
    private TextField txt2;

    @FXML
    private TextField txt3;

    @FXML
    private TextField txt4;

    @FXML
    public Button btnClear;

    @FXML
    public Button btnNext;

    @FXML
    private Label txtMsg;

    String sentence = "My name is Java";
    String sentence1 = "Dan lost his boot";
    Random random = new Random();
    int choose;
    String []sentenceArr;
    int fieldNumber=0;
    public void initialize(){
        choose = random.nextInt(2);
        if(choose==1){
            sentenceArr = sentence1.split(" ");
        }else{
            sentenceArr = sentence.split(" ");
        }
        inputValue();
        addHandler();
    }

    public void addHandler(){
        txt1.setOnDragDetected(event -> {
            fieldNumber = 1;
            writelog("Event on Source: drag detected");
            dragDetected(event);
        });

        txt1.setOnDragDone(event -> {
            writelog("Event on Source: drag done");
            dragDone(event);
        });

        txt2.setOnDragDetected(event -> {
            fieldNumber = 2;
            writelog("Event on Source: drag detected");
            dragDetected(event);
        });

        txt2.setOnDragDone(event -> {
            writelog("Event on Source: drag done");
            dragDone(event);
        });

        txt3.setOnDragDetected(event -> {
            fieldNumber = 3;
            writelog("Event on Source: drag detected");
            dragDetected(event);
        });

        txt3.setOnDragDone(event -> {
            writelog("Event on Source: drag done");
            dragDone(event);
        });

        txt4.setOnDragDetected(event -> {
            fieldNumber = 4;
            writelog("Event on Source: drag detected");
            dragDetected(event);
        });

        txt4.setOnDragDone(event -> {
            writelog("Event on Source: drag done");
            dragDone(event);
        });

        // Add mouse event handlers for the target
        txtFirstSentence.setOnDragOver(event -> {
            writelog("Event on Target: drag over");
            dragOver(event);
        });

        txtFirstSentence.setOnDragDropped(event -> {
            writelog("Event on Target: drag dropped");
            dragDropped(event);
        });

        btnClear.setOnAction(actionEvent -> {
            txtMsg.setText("");
            txtFirstSentence.clear();
            inputValue();
        });

        btnNext.setOnAction(actionEvent -> {
            txtMsg.setText("");
            txtFirstSentence.clear();
            if(choose==0){
                sentenceArr = sentence1.split(" ");
                choose=1;
            }else{
                sentenceArr = sentence.split(" ");
                choose=0;
            }
            inputValue();
        });

    }
    private void dragDetected(MouseEvent event)
    {
        // User can drag only when there is text in the source field
        String sourceText="";
        Dragboard dragboard;
        // Initiate a drag-and-drop gesture
        switch (fieldNumber) {
            case 1 -> {
                sourceText = txt1.getText();
                dragboard = txt1.startDragAndDrop(TransferMode.COPY_OR_MOVE);
            }
            case 2 -> {
                sourceText = txt2.getText();
                dragboard = txt2.startDragAndDrop(TransferMode.COPY_OR_MOVE);
            }
            case 3 -> {
                sourceText = txt3.getText();
                dragboard = txt3.startDragAndDrop(TransferMode.COPY_OR_MOVE);
            }
            case 4 -> {
                sourceText = txt4.getText();
                dragboard = txt4.startDragAndDrop(TransferMode.COPY_OR_MOVE);
            }
            default -> dragboard = txtFirstSentence.startDragAndDrop(TransferMode.COPY_OR_MOVE);
        }

        if (sourceText == null || sourceText.trim().equals(""))
        {
            event.consume();
            return;
        }

        // Add the source text to the Dragboard
        ClipboardContent content = new ClipboardContent();
        content.putString(sourceText);
        dragboard.setContent(content);
        event.consume();
    }

    private void dragOver(DragEvent event)
    {
        // If drag board has a string, let the event know that
        // the target accepts copy and move transfer modes
        Dragboard dragboard = event.getDragboard();

        if (dragboard.hasString())
        {
            event.acceptTransferModes(TransferMode.COPY_OR_MOVE);
        }

        event.consume();
    }

    private void dragDropped(DragEvent event)
    {
        // Transfer the data to the target
        Dragboard dragboard = event.getDragboard();

        if (dragboard.hasString())
        {
            String s;
            if (txtFirstSentence.getText()==null || txtFirstSentence.getText().trim().equals("")) {
                s = Objects.requireNonNull(txtFirstSentence.getText()).concat(dragboard.getString());
            }else{
                s = txtFirstSentence.getText().concat(" " + dragboard.getString());
            }
            txtFirstSentence.setText(s);
            if(txtFirstSentence.getText().equals(sentence) || txtFirstSentence.getText().equals(sentence1)){
                txtMsg.setText("YOU WIN!!!");
            }
            // Data transfer is successful
            event.setDropCompleted(true);
        }
        else
        {
            // Data transfer is not successful
            event.setDropCompleted(false);
        }

        event.consume();
    }

    private void dragDone(DragEvent event)
    {
        // Check how data was transfered to the target. If it was moved, clear the text in the source.
        TransferMode modeUsed = event.getTransferMode();

        if (modeUsed == TransferMode.MOVE)
        {
            switch (fieldNumber) {
                case 1 -> txt1.setText("");
                case 2 -> txt2.setText("");
                case 3 -> txt3.setText("");
                case 4 -> txt4.setText("");
            }
        }

        event.consume();
    }

    public void writelog(String msg){
        System.out.println(msg);
    }

    public void inputValue(){
        txt1.setText(sentenceArr[0]);
        txt2.setText(sentenceArr[1]);
        txt3.setText(sentenceArr[2]);
        txt4.setText(sentenceArr[3]);
    }
}
