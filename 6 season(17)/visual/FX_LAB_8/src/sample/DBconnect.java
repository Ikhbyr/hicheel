package sample;

import java.sql.*;

public class DBconnect {
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/autopark?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static final String DATABASE_USERNAME = "root";
    private static final String DATABASE_PASSWORD = "";
    static Connection conn;

    public static Connection dbConnection(){
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

    public void getParkParts(){
        dbConnection();
        Statement statement = null;
        Controller.parkParts.clear();
        try {
            statement = conn.createStatement();
            ResultSet rs= statement.executeQuery("Select * from parkparts");
            while(rs.next()) {
                ParkParts parkParts = new ParkParts(rs.getInt("year"),rs.getString("make"),rs.getString("model"),rs.getString("category"),rs.getDouble("unitPrice"),rs.getString("partname"),rs.getInt("partnumber"));
                Controller.parkParts.add(parkParts);
            }
        } catch (SQLException te) {
            te.printStackTrace();
        }
    }

}
