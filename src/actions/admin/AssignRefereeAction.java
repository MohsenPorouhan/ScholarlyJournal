package actions.admin;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.RefereeService;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * Created by Mohsen on 8/27/2018.
 */
public class AssignRefereeAction extends ActionSupport {
    private int start;
    private int length;
    private int draw;
    private String search;
    private String output;
    private int orderColumn;
    private boolean orderable;
    private String orderDIR;

    public String execute() {
        System.out.println("AssignRefereeAction");
        return SUCCESS;
    }

    public String dataTable() {
        System.out.println("AssignRefereeAction   dataTable");
        HttpServletRequest request = ServletActionContext.getRequest();
        this.search=request.getParameter("search[value]");
        this.orderColumn=Integer.parseInt(request.getParameter("order[0][column]"));
        String concatenateOrder="columns["+orderColumn+"][orderable]";
        this.orderable=Boolean.parseBoolean(request.getParameter(concatenateOrder));
        this.orderDIR=request.getParameter("order[0][dir]");
        System.out.println(start+"---------"+length+"-----"+draw);
        System.out.println(search);
        RefereeService refereeService = new RefereeService();
        HashMap hashMap = refereeService.articleList(start,length,draw,orderColumn,orderable,orderDIR,search);
        Gson gson = new Gson();
        this.output = gson.toJson(hashMap).toString();
        System.out.println(this.output);
        return SUCCESS;
    }

    public AssignRefereeAction() {
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }
}

