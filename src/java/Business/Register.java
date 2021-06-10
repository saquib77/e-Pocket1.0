
package Business;
import Model.*;
import java.text.DecimalFormat;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;

public class Register implements Business {

    @Override
    public String businessLogic(HttpServletRequest request) {
        String firstname = request.getParameter("fname");
        String lastname = request.getParameter("lname");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String phnum = request.getParameter("phnum");
        String country = request.getParameter("country");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String gender = request.getParameter("gen");
        String que = request.getParameter("que");
        String ans = request.getParameter("ans");
        System.out.println(email);
        String st="unsuccessfull";
        DBCON db = new DBCON();
        try{
            db.pstmt = db.con.prepareStatement("select MAX(uid) from user_master where(email=?)");
            db.pstmt.setString(1,email);
            db.rst = db.pstmt.executeQuery();
            int uid=0;
            if(db.rst.next()){
                uid = db.rst.getInt(1);
            }else uid = uid+1;
            db.pstmt = db.con.prepareStatement("select id from countries where(name=?)");
            db.pstmt.setString(1,country);
            db.rst = db.pstmt.executeQuery();
            int country_id=0;
            if(db.rst.next()){
                country_id = db.rst.getInt(1);
            }
            db.pstmt = db.con.prepareStatement("select id from states where(name=?)");
            db.pstmt.setString(1,state);
            db.rst = db.pstmt.executeQuery();
            int state_id=0;
            if(db.rst.next()){
                state_id = db.rst.getInt(1);
            }
            db.pstmt = db.con.prepareStatement("select id from cities where(name=?)");
            db.pstmt.setString(1,city);
            db.rst = db.pstmt.executeQuery();
            int city_id=0;
            if(db.rst.next()){
                city_id = db.rst.getInt(1);
            }
            int s;
            db.pstmt = db.con.prepareStatement("insert into login_master(email,password,status)values(?,?,?)");
            db.pstmt.setString(1, email);
            db.pstmt.setString(2,pass);
            db.pstmt.setInt(3, 0);
            db.pstmt.executeUpdate();
            s=1;
            if(s==1){
                s=0;
                db.pstmt = db.con.prepareStatement("insert into user_master(uid,firstname,lastname,phone_num,city_id,state_id,country_id,email,gender,que,ans)values(?,?,?,?,?,?,?,?,?,?,?)");
                db.pstmt.setInt(1, uid);
                db.pstmt.setString(2,firstname);
                db.pstmt.setString(3,lastname);
                db.pstmt.setString(4,phnum);
                db.pstmt.setInt(5,city_id);
                db.pstmt.setInt(6,state_id);
                db.pstmt.setInt(7,country_id);
                db.pstmt.setString(8,email);
                db.pstmt.setString(9,gender);
                db.pstmt.setString(10,que);
                db.pstmt.setString(11,ans);
                db.pstmt.executeUpdate();
                s=1;
                if(s==1){
                    s=0;
                    String otp= new DecimalFormat("000000").format(new Random().nextInt(999999));
                    db.pstmt = db.con.prepareStatement("insert into email_verification(email,verification_code,creation_time)values(?,?,now())");
                    db.pstmt.setString(1,email);
                    db.pstmt.setString(2,otp);
                    db.pstmt.executeUpdate();
                    SendMail sm = new SendMail();
                    String msg = firstname+" "+lastname +"Please Verify Your Account & Your OTP is :" +otp;
                    sm.mailSender(email, msg);
                    s=1;
                }
                if(s==1){
                    s=0;
                    db.pstmt = db.con.prepareStatement("insert into pass_recovery(rec_id,rec_que,rec_pass,email)values(?,?,?,?)");
                    db.pstmt.setInt(1, uid);
                    db.pstmt.setString(2,que);
                    db.pstmt.setString(3,ans);
                    db.pstmt.setString(4,email);
                    db.pstmt.executeUpdate();
                    s=1;
                }
            }
            st="successfull";
        }catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }
    
}
