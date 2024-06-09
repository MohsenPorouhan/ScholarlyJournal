package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.PeopleService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Mohsen on 9/15/2018.
 */
public class MyProfileAction extends ActionSupport {
    private List list;
    public String execute(){
        HttpServletRequest request = ServletActionContext.getRequest();
        String username=request.getSession().getAttribute("username").toString();
        PeopleService peopleService=new PeopleService();
        list=peopleService.peopleList(username);
        return SUCCESS;
    }

    public MyProfileAction() {
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
