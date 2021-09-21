package Business;
import Model.*;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
public class Upload implements Business{
    private final String UPLOAD_DIR = "/home/saquib/NetBeansProject/e-Pocket1.0/web/Files";
    public String businessLogic(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String temp="error";
        try{
            String ext = request.getParameter("ext");
            Part part = request.getPart("file");
            
            String location = part.getSubmittedFileName();
            User u = (User)session.getAttribute("curentUser");
            int uid = u.getUid();
            String path = UPLOAD_DIR+File.separator+location;
            if(fileOperator.uploadFile(part.getInputStream(), path)){
                temp= "uploaded";
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return temp;
    }
}
