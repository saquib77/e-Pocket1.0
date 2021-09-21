package Model;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
public class fileOperator {
    //Delete's the file
    public static boolean deleteFile(String Path){
        boolean f = false;
        try{
            File file = new File(Path);
            f=file.delete();
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    //Upload's the File
    public static boolean uploadFile(InputStream is,String path){
        boolean f = false;
        try{
            FileOutputStream fos = new FileOutputStream(path);
            int n;
            while((n=is.read())!=-1){
                fos.write(n);
            }
            if(is!=null && fos!=null){
                is.close();
                fos.close();
            }
            f=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
