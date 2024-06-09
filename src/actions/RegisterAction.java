package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.RegisterService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Mohsen on 7/14/2018.
 */
public class RegisterAction extends ActionSupport {
    private String firstName;
    private String lastName;
    private String nationalNumber;
    private String username;
    private String password;
    private String rpassword;
    private String ttttttt;
    private boolean isTrue=true;
//    private String isTrue2;

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        //System.out.println(request.getParameter("firstName"));
        System.out.println(this.firstName);
        System.out.println(this.lastName);
        System.out.println(this.nationalNumber);
        System.out.println(this.username);
        System.out.println(this.password);
        System.out.println(this.rpassword);
        RegisterService registerService = new RegisterService();
        isTrue = registerService.adduser(firstName, lastName, nationalNumber, username, password);
        if (isTrue) {
//            isTrue2 = "yes";
            session.setAttribute("isTrue2", "yes");
            return SUCCESS;
        } else
            return ERROR;
    }

    public String getTtttttt() {
        return ttttttt;
    }

    public void setTtttttt(String ttttttt) {
        this.ttttttt = ttttttt;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNationalNumber() {
        return nationalNumber;
    }

    public void setNationalNumber(String nationalNumber) {
        this.nationalNumber = nationalNumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRpassword() {
        return rpassword;
    }

    public void setRpassword(String rpassword) {
        this.rpassword = rpassword;
    }
}