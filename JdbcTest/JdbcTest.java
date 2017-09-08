import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;


public class JdbcTest {
    public static void main(String[] args) throws Exception {
        Connection conn = null;
        String sql;
        String url = "jdbc:mysql://localhost:3306/test?"
                + "user=root&password=123456&useUnicode=true&characterEncoding=UTF8";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();
	    sql = "insert into student(NO,name) values('2012001','John Jin')";
	    int result = 0;
	    result = stmt.executeUpdate(sql);
	    sql = "insert into student(NO,name) values('2012002','Jack Lee')";
	    result = stmt.executeUpdate(sql);
	    sql = "select * from student";
	    ResultSet rs = stmt.executeQuery(sql);
	    while (rs.next()) {
	          System.out.println(rs.getString(1) + "\t" + rs.getString(2));
	    }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            conn.close();
        }

    }

}
