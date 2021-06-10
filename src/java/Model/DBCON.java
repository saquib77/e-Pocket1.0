package Model;

import com.mysql.cj.xdevapi.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBCON {
    public Connection con;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rst;
   
    public DBCON(){
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url ="jdbc:mysql://localhost:3306/ePocketDB";
            con=DriverManager.getConnection(url, "root", "Saquib@77");
        }
        catch(ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();
        }
    }  
}
