package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.UserService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Mohsen on 9/16/2018.
 */
public class ChangePasswordAction extends ActionSupport {
    private String currentPassword;
    private String newPassword;
    private String retypeNewPassword;
    private boolean edited;

    public String execute() {
        System.out.println("ChangePasswordAction");
        HttpServletRequest request = ServletActionContext.getRequest();
        String username=request.getSession().getAttribute("username").toString();
        UserService userService=new UserService();
        edited=userService.updatePassword(currentPassword,newPassword,retypeNewPassword,username);
        return SUCCESS;
    }

    public ChangePasswordAction() {
    }

    public String getCurrentPassword() {
        return currentPassword;
    }

    public void setCurrentPassword(String currentPassword) {
        this.currentPassword = currentPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getRetypeNewPassword() {
        return retypeNewPassword;
    }

    public void setRetypeNewPassword(String retypeNewPassword) {
        this.retypeNewPassword = retypeNewPassword;
    }

    public boolean isEdited() {
        return edited;
    }

    public void setEdited(boolean edited) {
        this.edited = edited;
    }
}
