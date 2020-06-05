package sample;

import java.sql.*;
    public class DBconnect {
        private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/student?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
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

        public void getStudentGrades(){
            dbConnection();
            Statement statement = null;
            Controller.studentGrades.clear();
            try {
                statement = conn.createStatement();
                ResultSet rs= statement.executeQuery("Select * from students");
                while(rs.next()) {
                    StudentGrade parkParts = new StudentGrade(rs.getInt("studentId"),rs.getString("firstName"),rs.getString("lastname"), rs.getInt("attScore"), rs.getDouble("attEg"), rs.getDouble("percentAtt"), rs.getInt("proScore"), rs.getDouble("proEg"), rs.getDouble("percentPro"), rs.getInt("writeScore"), rs.getDouble("writeEg"), rs.getDouble("percentWri") , rs.getInt("preScore"), rs.getDouble("preEg"), rs.getDouble("percentPre"), rs.getInt("praScore"), rs.getDouble("praEg"), rs.getDouble("percentPra"));
                    Controller.studentGrades.add(parkParts);
                }
            } catch (SQLException te) {
                te.printStackTrace();
            }
        }

        public  void setStudentScore(StudentGrade studentGrade){
            dbConnection();
            Statement statement = null;
            try {
                statement = conn.createStatement();
                    statement.executeUpdate("Insert into students(studentId, firstName, lastName, attScore, attEg, percentAtt, proScore, proEg, percentPro, writeScore, writeEg, percentWri, preScore, preEg, percentPre, praScore, praEg, percentPra) " +
                            "values("+studentGrade.getStudentId()+",'"+studentGrade.getFirstName()+"','"+studentGrade.getLastName()+"',"+studentGrade.getAttScore()+","+studentGrade.getAttEg()+","+studentGrade.getPercentAtt()+
                            ","+studentGrade.getProScore()+","+studentGrade.getProEg()+","+studentGrade.getPercentPro()+","+studentGrade.getWriteScore()+","+studentGrade.getWriteEg()+","+studentGrade.getPercentWri()+
                            ","+studentGrade.getPreScore()+","+studentGrade.getPreEg()+","+studentGrade.getPercentPre()+","+studentGrade.getPraScore()+","+studentGrade.getPraEg()+","+studentGrade.getPercentPra()+")");
                System.out.println("Nemegdlee");
            } catch (SQLException te) {
                te.printStackTrace();
            }
        }

        public void deleteGrade(int id){
            try {
                conn = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
                PreparedStatement st = conn.prepareStatement("DELETE FROM students WHERE studentId = "+id);
                st.executeUpdate();
                System.out.println("Ustlaa");
            } catch (SQLException te) {
                te.printStackTrace();
            }
        }

        public void updateGrade(int id, StudentGrade studentGrade){
            try {
                conn = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
                PreparedStatement st = conn.prepareStatement("UPDATE students SET firstName = '"+studentGrade.getFirstName()+"',lastName = '"+studentGrade.getLastName()+"', attScore = "+studentGrade.getAttScore()+", attEg = "+studentGrade.getAttEg()+", percentAtt = "+studentGrade.getPercentAtt()+
                        ", proScore = "+studentGrade.getProScore()+", proEg = "+studentGrade.getProEg()+", percentPro = "+studentGrade.getPercentPro()+", writeScore = "+studentGrade.getWriteScore()+", writeEg = "+studentGrade.getWriteEg()+", percentWri = "+studentGrade.getPercentWri()
                        +", preScore = "+studentGrade.getPreScore()+", preEg = "+studentGrade.getPreEg()+", percentPre = "+studentGrade.getPercentPre()+", praScore = "+studentGrade.getPraScore()+", praEg = "+studentGrade.getPraEg()+", percentPra = "+studentGrade.getPercentPra()+" where studentId = "+id);
                st.executeUpdate();
                System.out.println("Ustlaa");
            } catch (SQLException te) {
                te.printStackTrace();
            }
        }
    }

