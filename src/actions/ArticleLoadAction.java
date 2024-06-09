package actions;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ArticleService;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Mohsen on 7/29/2018.
 */
public class ArticleLoadAction extends ActionSupport {

    private List list;
    private String output;
   @Override
   public String execute(){
       System.out.println("ArticleLoadAction");
       HttpServletRequest request = ServletActionContext.getRequest();
       String username=request.getSession().getAttribute("username").toString();
       ArticleService articleService=new ArticleService();
       list=articleService.articleList(username);
       return SUCCESS;
   }

    public String articleLoad22(){
        System.out.println("ArticleLoadAction    method:articleLoad22");
        return SUCCESS;
    }

    public String articleDataTable(){
        System.out.println("ArticleLoadAction  method: articleDataTable");
        HttpServletRequest request = ServletActionContext.getRequest();
        String username=request.getSession().getAttribute("username").toString();
        ArticleService articleService=new ArticleService();
        HashMap hashMap = articleService.articleList2(username);
        Gson gson = new Gson();
        this.output = gson.toJson(hashMap).toString();
        System.out.println(this.output);
        return SUCCESS;
    }

    public ArticleLoadAction() {
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
