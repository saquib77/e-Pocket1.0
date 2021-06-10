package Business;

import Model.*;
import javax.servlet.http.HttpServletRequest;

public class Verify implements Business{

    @Override
    public String businessLogic(HttpServletRequest request) {
        String email = request.getParameter("email");
        String otp = request.getParameter("otp");
        DBCON db = new DBCON();
        String res="";
        try{
            db.pstmt = db.con.prepareStatement("select verification_code from email_verification where email=?");
            db.pstmt.setString(1,email);
            db.rst = db.pstmt.executeQuery();
            String otpdb="";
            while(db.rst.next()){
                otpdb = db.rst.getString("verification_code");
            }
            if(otp.equals(otpdb)){
                db.pstmt = db.con.prepareStatement("update email_verification set verification_time=now()");
                db.pstmt.executeUpdate();
                db.pstmt = db.con.prepareStatement("update login_master set status=1");
                db.pstmt.executeUpdate();
                res="verified";
            }else res="unverified";
        }catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
}
