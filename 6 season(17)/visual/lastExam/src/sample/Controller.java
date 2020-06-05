package sample;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Objects;

public class Controller {
    public TextField tvStudentId;
    public TextField tvFirstName;
    public TextField tvLastName;
    public TextField tvAttendanceF;
    public TextField tvAttendanceS;
    public TextField tvAttendanceT;
    public TextField tvWrittenQuizF;
    public TextField tvWrittenQuizS;
    public TextField tvWrittenQuizT;
    public TextField tvPracticalQuizF;
    public TextField tvPracticalQuizS;
    public TextField tvPracticalQuizT;
    public TextField tvProjectF;
    public TextField tvProjectS;
    public TextField tvProjectT;
    public TextField tvPrelimExamF;
    public TextField tvPrelimExamS;
    public TextField tvPrelimExamT;
    public TextField tvPrelimGrade;
    public TextField tvRemarks;

    public Button btnClearAllGrades;
    public Button btnShowDetails;
    public Button btnComputeGrades;
    public Button btnDeleteRecord;
    public Button btnLoadStudents;
    public Button btnUpdateRecord;
    public Button btnSaveRecord;
    public Button btnExitProgram;
    public Button btnPrevPrev;
    public Button btnPrev;
    public Button btnNext;
    public Button btnNextNext;

    public TableView<StudentGrade> tablevStudent;
    public TableColumn<StudentGrade, String> colFirstname;
    public TableColumn<StudentGrade, String> colLastName;
    public TableColumn<StudentGrade, String> coltwenty;
    public TableColumn<StudentGrade, String> colFirstFifth;
    public TableColumn<StudentGrade, String> colSecondFifth;
    public TableColumn<StudentGrade, String> colFirstHundred;
    public TableColumn<StudentGrade, String> colSecondHundred;
    public TableColumn<StudentGrade, String> colPrelimGrade;
    public TableColumn<StudentGrade, String> colRemarks;

    public static Statement statement;
    public static Connection connection;

    static ObservableList<StudentGrade> studentsList = FXCollections.observableArrayList();

    public void initialize(){
        try {
            connection = ConnectDB.connectDb();
            statement = Objects.requireNonNull(connection).createStatement();
        }catch (SQLException | NullPointerException ex){
            System.out.println(ex.getMessage());
        }

        //roomStatus.setCellValueFactory(new PropertyValueFactory<Room, Double>("status"));


        tvAttendanceF.textProperty().addListener((observable, oldValue, newValue) -> {
            try {
                tvAttendanceS.setText(String.valueOf(Double.parseDouble(newValue) / 20 * 100));
            }catch (Exception ex){
                ex.printStackTrace();
            }
        });

        tvWrittenQuizF.textProperty().addListener((observable, oldValue, newValue) -> {
            try {
                tvWrittenQuizS.setText(String.valueOf(Double.parseDouble(newValue) / 50 * 100));
            }catch (Exception ex){
                ex.printStackTrace();
            }
        });

        tvPracticalQuizF.textProperty().addListener((observable, oldValue, newValue) -> {
            try {
                tvPracticalQuizS.setText(String.valueOf(Double.parseDouble(newValue) / 50 * 100));
            }catch (Exception ex){
                ex.printStackTrace();
            }
        });

        tvProjectF.textProperty().addListener((observable, oldValue, newValue) -> {
            try {
                tvProjectS.setText(String.valueOf(Double.parseDouble(newValue) / 100 * 100));
            }catch (Exception ex){
                ex.printStackTrace();
            }
        });

        tvPrelimExamF.textProperty().addListener((observable, oldValue, newValue) -> {
            try {
                tvPrelimExamS.setText(String.valueOf(Double.parseDouble(newValue) / 100 * 100));
            }catch (Exception ex){
                ex.printStackTrace();
            }
        });
    }


    public void btnClearAllGrades(ActionEvent actionEvent) {
        tvStudentId.setText("");
        tvFirstName.setText("");
        tvLastName.setText("");
        tvAttendanceF.setText("");
        tvAttendanceS.setText("");
        tvAttendanceT.setText("");
        tvWrittenQuizF.setText("");
        tvWrittenQuizS.setText("");
        tvWrittenQuizT.setText("");
        tvPracticalQuizF.setText("");
        tvPracticalQuizS.setText("");
        tvPracticalQuizT.setText("");
        tvProjectF.setText("");
        tvProjectS.setText("");
        tvProjectT.setText("");
        tvPrelimExamF.setText("");
        tvPrelimExamS.setText("");
        tvPrelimExamT.setText("");
        tvPrelimGrade.setText("");
        tvRemarks.setText("");
    }

    public void btnShowDetails(ActionEvent actionEvent) {
    }

    public void btnComputeGrades(ActionEvent actionEvent) {
        try {
            double attendance = Double.parseDouble(tvAttendanceT.getText());
            double writtenQuiz = Double.parseDouble(tvWrittenQuizT.getText());
            double practicalQuiz = Double.parseDouble(tvPracticalQuizT.getText());
            double project = Double.parseDouble(tvProjectT.getText());
            double prelimExam = Double.parseDouble(tvPrelimExamT.getText());
            double sum = attendance + writtenQuiz + practicalQuiz + project + prelimExam;
            if (sum < 100) {
                tvPrelimGrade.setText(String.valueOf(sum));
                if (sum < 80)
                    tvRemarks.setText("Failed");
                else tvRemarks.setText("Passed");
            } else System.out.println("Error");

        } catch (Exception ex){
            ex.printStackTrace();
        }

    }

    public void btnDeleteRecord(ActionEvent actionEvent) {
    }

    public void btnLoadStudents(ActionEvent actionEvent) {
        try {
            ResultSet rs= statement.executeQuery("Select * from students");
            while(rs.next()) {
                StudentGrade student = new StudentGrade(rs.getString("id"),rs.getString("firstName"),rs.getString("lastname"), rs.getInt("attScore"), rs.getDouble("attEg"), rs.getDouble("percentAtt"), rs.getInt("proScore"), rs.getDouble("proEg"), rs.getDouble("percentPro"), rs.getInt("writeScore"), rs.getDouble("writeEg"), rs.getDouble("percentWri"), , rs.getInt("preScore"), rs.getDouble("preEg"), rs.getDouble("percentPre"), rs.getInt("praScore"), rs.getDouble("praEg"), rs.getDouble("percentPra"));
                studentsList.add(student);
            }
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }

    public void btnUpdateRecord(ActionEvent actionEvent) {
    }

    public void btnSaveRecord(ActionEvent actionEvent) {
        try {
            statement.executeUpdate("Insert into students(studentId, firstName, lastName, attScore, attEg, percentAtt, proScore, proEg, percentPro, writeScore, writeEg, percentWri, preScore, preEg, percentPre, praScore, praEg, percentPra) " +
                    "values("+studentGrade.getStudentId()+",'"+studentGrade.getFirstName()+"','"+studentGrade.getLastName()+"',"+studentGrade.getAttScore()+","+studentGrade.getAttEg()+","+studentGrade.getPercentAtt()+
                    ","+studentGrade.getProScore()+","+studentGrade.getProEg()+","+studentGrade.getPercentPro()+","+studentGrade.getWriteScore()+","+studentGrade.getWriteEg()+","+studentGrade.getPercentWri()+
                    ","+studentGrade.getPreScore()+","+studentGrade.getPreEg()+","+studentGrade.getPercentPre()+","+studentGrade.getPraScore()+","+studentGrade.getPraEg()+","+studentGrade.getPercentPra()+")");
            System.out.println("Nemegdlee");
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }

    public void btnExitProgram(ActionEvent actionEvent) {
        System.exit(0);
    }

    public void btnPrevPrev(ActionEvent actionEvent) {
    }

    public void btnPrev(ActionEvent actionEvent) {
    }

    public void btnNext(ActionEvent actionEvent) {
    }

    public void btnNextNext(ActionEvent actionEvent) {
    }
}