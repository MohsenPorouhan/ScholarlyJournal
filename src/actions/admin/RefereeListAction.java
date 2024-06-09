package actions.admin;

import com.opensymphony.xwork2.ActionSupport;
import service.RefereeService;

import java.util.List;

/**
 * Created by Mohsen on 9/10/2018.
 */
public class RefereeListAction extends ActionSupport {
    private List list;
    public String execute(){
        RefereeService refereeService=new RefereeService();
        list=refereeService.refereeList();
        return SUCCESS;
    }

    public RefereeListAction() {
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
