package sample;

import javafx.fxml.Initializable;
import javafx.scene.control.Alert;

import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;

public class dbc implements Initializable {
    // Replace below database url, username and password with your actual database credentials
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/monsonuniversity1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static final String DATABASE_USERNAME = "root";
    private static final String DATABASE_PASSWORD = "";
    private static final String GET_EMPLOYEES = "Select * from employees";
    private static final String GET_UNDER_MAJOR = "Select * from undergraduatemajors";

    Connection connection;

    public static Connection dbConnection(){
        Connection conn;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            return conn;
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }

    public void getEmployees(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery(GET_EMPLOYEES);

            while(rs.next()) {
                Employee employee = new Employee(rs.getInt("EmployeeNumber"),rs.getString("FirstName"),rs.getString("LastName"),rs.getString("MiddleName"),rs.getString("Title"));
                Employees.employees.add(employee);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }

    public String getGetEmployeesName(int dean){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from employees where employeeNumber = "+dean);

            if(rs.next()) {
                return (rs.getString("LastName")+" "+rs.getString("FirstName"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }
    public String getGetEmployeesTitle(int dean){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from employees where employeeNumber = "+dean);

            if(rs.next()) {
                return (rs.getString("Title"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }
    public void getGraduateMajor(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from graduatemajors");
            GraduateMajors.GraduateMajors.clear();
            while(rs.next()) {
                GraduateMajor Major = new GraduateMajor(rs.getString("Major"),rs.getString("Dean"),rs.getString("Notes"));
                GraduateMajors.GraduateMajors.add(Major);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }
    public void getUnderMajor(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery(GET_UNDER_MAJOR);
            UndergraduateMajors.undergraduateMajors.clear();
            while(rs.next()) {
                UndergraduateMajor undergraduateMajor = new UndergraduateMajor(rs.getString("Major"),rs.getString("Dean"),rs.getString("Notes"));
                UndergraduateMajors.undergraduateMajors.add(undergraduateMajor);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }
    public String getUnderMajor(int majorId){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from undergraduatemajors where MajorId = "+majorId);
            UndergraduateMajors.undergraduateMajors.clear();
            if (rs.next()) {
                return (rs.getString("Major"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }
    public String getUnderMinor(int minorId){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from minors where minorId ="+minorId);
            UndergraduateMajors.undergraduateMajors.clear();
            if (rs.next()) {
                return (rs.getString("Minor"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }
    public void insertUnderMajor(String major, String dean){
        String Insert_Under_major = "Insert into undergraduatemajors(MajorId, Major, Dean, Notes) value(0,'"+major+"','"+dean+"','null')";
        System.out.println(Insert_Under_major);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            statement.executeUpdate(Insert_Under_major);
            connection.close();
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setHeaderText("Амжилттай нэмэгдлээ.");
            alert.setTitle("Add Undergraduate Major");
            alert.showAndWait();
            getUnderMajor();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }
    public void registerStudent(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from undergraduatestudents");
            UndergraduateRegistrations.students.clear();
            while (rs.next()) {
                Student student = new Student(rs.getInt("StudentNumber"),rs.getString("FirstName"),rs.getString("LastName"),rs.getString("MiddleName"),rs.getInt("MajorId"),rs.getInt("MinorId"));
                UndergraduateRegistrations.students.add(student);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }
    public void getUnderStudent(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from undergraduatestudents");
            UndergraduateMajors.undergraduateMajors.clear();
            while (rs.next()) {
                Student student = new Student(rs.getInt("StudentNumber"),rs.getString("FirstName"),rs.getString("LastName"),rs.getString("MiddleName"),rs.getInt("MajorId"),rs.getInt("MinorId"));
                UndergraduateStudents.students.add(student);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }
    public void getGraduateStudent(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from Graduatestudents");
            GraduateStudents.students.clear();
            while (rs.next()) {
                Student student = new Student(rs.getInt("StudentNumber"),rs.getString("FirstName"),rs.getString("LastName"),rs.getString("MiddleName"),rs.getInt("MajorId"),rs.getInt("MinorId"));
                GraduateStudents.students.add(student);
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
    }

    public String getUnderRegister(int stuNumber, String type){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from undergraduateregistrations where studentNumber ="+stuNumber);
            if (rs.next()) {
                if (type.equals("sem"))
                    return Integer.toString(rs.getInt("SemesterID"));
                else
                    return rs.getString("CourseCode");
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }
    public String getUnderCourse(String courseCode, String type){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from undergraduatecourses where courseCode = "+courseCode);
            if (rs.next()) {
                if (type.equals("name"))
                    return rs.getString("courseName");
                else
                    return Integer.toString(rs.getInt("Credits"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return  null;
    }
    public String getSemester(int semId){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
            Statement statement = connection.createStatement();
            ResultSet rs= statement.executeQuery("Select * from semesters where SemesterId ="+semId);
            if (rs.next()) {
                return (rs.getString("Semester"));
            }
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            // print SQL exception information
            System.out.println(e.getMessage());
        }
        return null;
    }
    @Override
    public void initialize(URL url, ResourceBundle resourceBundle) {

    }
}
