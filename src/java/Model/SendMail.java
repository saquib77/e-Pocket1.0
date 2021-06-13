
package Model;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
    String sub="Verify Your Email";
    String from = "loginlogout280@gmail.com";
    String username = "loginlogout280@gmail.com";
    String e_password = "Loginlogout@280";
    public int mailSender(String email,String msg){
        try {
            Properties prop = new Properties();
            prop.put("mail.smtp.host","smtp.gmail.com");
            prop.put("mail.smtp.auth","true");
            prop.put("mail.smtp.starttls.enable","true");
            prop.put("mail.smtp.port","587");
            Session session = Session.getInstance(prop,
                    new javax.mail.Authenticator() {
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication(){
                            return new PasswordAuthentication(username,e_password);
                        }
                    });
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject(sub);
            message.setContent(msg,"text/html");
            Transport.send(message);
            
        }catch(Exception e){
            return 0;
        }
        return 1;
    }
}
