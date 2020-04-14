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
    void btnCustomers() {
        CustomerRecord customerRecord = new CustomerRecord();
        customerRecord.showStage();
    }

    @FXML
    void btnEmployees() {
        EmployeesRecord employeesRecord = new EmployeesRecord();
        employeesRecord.showStage();
    }

    @FXML
    void btnOccupancies() {
        OccupanciesRecord occupanciesRecord = new OccupanciesRecord();
        occupanciesRecord.showStage();
    }

    @FXML
    void btnPayments() {
        PaymentsRecords paymentsRecords = new PaymentsRecords();
        paymentsRecords.showStage();
    }

    @FXML
    void btnRooms() {
        RoomsRecords roomsRecords = new RoomsRecords();
        roomsRecords.showStage();
    }


}
