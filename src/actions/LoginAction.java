package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginAction extends ActionSupport {
    private String j_username;
    private String j_password;

    public void auth() {
        System.out.println("AAAAAAAAAAAAAAAA");
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        HttpSession session = request.getSession();
        System.out.println(j_username);
        System.out.println(j_password);
        try {
            request.login(j_username, j_password);
            // System.out.println(request.isUserInRole("user"));
            // if(request.getUserPrincipal().getName().equals(j_username))
//            System.out.println(request.authenticate(response)+"llllllllll");

//            session.setAttribute("username", request.getUserPrincipal().getName());
            if (request.isUserInRole("admin"))
                session.setAttribute("role", "admin");

            session.setAttribute("username", j_username);

            response.sendRedirect("user/demo");
            // else response.sendRedirect("login");
        } catch (ServletException e) {
            if (e.getMessage().equals("Login failed")) {
                try {
                    session.setAttribute("message", "error");
                    response.sendRedirect("login");
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            } else if (e.getMessage().equals("This request has already been authenticated")) {
                try {
                    request.logout();
                    response.sendRedirect("login");
                } catch (ServletException e1) {
                    e1.printStackTrace();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            } else
                e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String getJ_username() {
        return j_username;
    }

    public void setJ_username(String j_username) {
        this.j_username = j_username;
    }

    public String getJ_password() {
        return j_password;
    }

    public void setJ_password(String j_password) {
        this.j_password = j_password;
    }
}
