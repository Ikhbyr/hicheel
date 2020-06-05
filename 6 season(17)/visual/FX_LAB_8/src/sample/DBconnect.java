import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class ConnectDB {
    public static Connection connection;

    public static Connection connectDb() {

        try {
            connection = DriverManager.getConnection("jdbc:mysql://localhost/studengrade?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");
            System.out.println("DB Connected");
            return connection;
        } catch (Exception ex) {
            System.out.println("DB Failed");
            System.out.println(ex.getMessage());
        }
        return null;
    }
}