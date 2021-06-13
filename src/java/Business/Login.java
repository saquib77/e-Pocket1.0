package Business;
import javax.servlet.http.HttpServletRequest;
import Model.DBCON;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;
public class Login implements Business{
    public String name="";
    public String getUname(String email){
        DBCON db = new DBCON();
        String fname="";
        String lname="";
        try{
        db.pstmt = db.con.prepareStatement("select firstname,lastname from user_master where(email=?)");
        db.pstmt.setString(1, email);
        db.rst = db.pstmt.executeQuery();
        while(db.rst.next()){
            fname = db.rst.getString("firstname");
            lname = db.rst.getString("lastname");
        }
        }catch(Exception e){
            e.printStackTrace();
        }
        return fname+" "+lname;
    }
    @Override
    public String businessLogic(HttpServletRequest request) {
        DBCON db = new DBCON();
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        System.out.println(pass+" "+email);
        String res = null;
        try{
            db.pstmt = db.con.prepareStatement("select password,status from login_master where email=?");
            db.pstmt.setString(1,email);
            db.rst = db.pstmt.executeQuery();
            String pwd="";
            int status=0;
            while(db.rst.next()){
                pwd = db.rst.getString("password");
                status = db.rst.getInt("status");
            }
            System.out.println(pwd);
            if(pwd.equals(pass) && status==1){
                res = getUname(email);
            }else if(pwd.equals(pass) && status==0){
                res= "verify";
            }else res = "ude";
        }catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
    
}
