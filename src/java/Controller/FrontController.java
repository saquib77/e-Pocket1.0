package Controller;
import Business.*;
import Business.Login;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            String cp = request.getContextPath();
            String sp = request.getServletPath(); 
            String pi = request.getPathInfo();
            if(pi.equals("/index.jsp")){
                String path = "https://localhost:8084"+cp+pi;
                response.sendRedirect(path);
            }else if(pi.equals("/Login")){
                Login obj = (Login)Class.forName("Business."+pi.substring(1)).newInstance();
                String res = obj.businessLogic(request);
                System.out.println("Login "+res);
                if(res.equals("loggedin")){
                    HttpSession hs =  request.getSession();
                    hs.setAttribute("currentUser", res);
                    pi = "/DashboardPage";
                }else if(res.equals("verify")){
                    HttpSession hs = request.getSession();
                    hs.setAttribute("currentUser", res);
                    pi = "/VerifyPage";
                }else if(res.equals("ude")){
                    HttpSession hs = request.getSession();
                    hs.setAttribute("currentUser", res);
                    pi = "/ErrorPage";
                }
            }else if(pi.equals("/Register")){
                Register reg = (Register)Class.forName("Business."+pi.substring(1)).newInstance();
                String res = reg.businessLogic(request);
                out.println("Register "+res);
                if(res.equals("successfull")){
                    out.println(res);
                    HttpSession hs = request.getSession();
                    hs.setAttribute("currentUser", res);
                    pi = "/VerifyPage";
                }else{
                    pi = "/RegisterPage";
                }
            }else if(pi.equals("/Verify")){
                Verify v = (Verify)Class.forName("Business."+pi.substring(1)).newInstance();
                String res = v.businessLogic(request);
                out.println(res);
                if(res.equals("verified")){
                    HttpSession hs = request.getSession();
                    hs.setAttribute("currentUser",res);
                    pi = "/LoginPage";
                }else{
                    pi = "/VerifyPage";
                }
            }
            
            Properties prop = new Properties();
            File f = new File("/home/saquib/NetBeansProjects/e-Pocket1.0/src/java/Controller/view.properties");
            FileInputStream fis = new FileInputStream(f);
            prop.load(fis);
            String viewpath = prop.getProperty(pi.substring(1));
            System.out.println("Viewpath "+viewpath);
            request.getRequestDispatcher(viewpath).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace(out);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
