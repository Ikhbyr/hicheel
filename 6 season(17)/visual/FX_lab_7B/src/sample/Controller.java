package sample;

import javafx.application.Platform;
import javafx.fxml.FXML;


public class Controller {
    @FXML
    void btnClose() {
        Platform.exit();
        System.exit(0);
    }

    @FXML
    void btnEmployees(){
        Employees employees = new Employees();
        employees.showStage();
    }

    @FXML
    void btnGraduateMajors() {
        GraduateMajors graduateMajors = new GraduateMajors();
        graduateMajors.showStage();
    }

    @FXML
    void btnGraduateRegistrations() {
        GraduateRegistrations graduateRegistrations = new GraduateRegistrations();
        graduateRegistrations.showStage();
    }

    @FXML
    void btnGraduateStudents() {
        GraduateStudents graduateStudents = new GraduateStudents();
        graduateStudents.showStage();
    }

    @FXML
    void btnUndergraduateMajors() {
        UndergraduateMajors undergraduateMajors = new UndergraduateMajors();
        undergraduateMajors.showStage();
    }

    @FXML
    void btnUndergraduateRegistrations() {
        UndergraduateRegistrations undergraduateRegistrations = new UndergraduateRegistrations();
        undergraduateRegistrations.showStage();
    }

    @FXML
    void btnUndergraduateStudents() {
        UndergraduateStudents undergraduateStudents = new UndergraduateStudents();
        undergraduateStudents.showStage();

    }
}
