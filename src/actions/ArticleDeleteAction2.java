package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ArticleService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Mohsen on 8/21/2018.
 */
public class ArticleDeleteAction2 extends ActionSupport {
    private int articleID;
    private int peopleID;

    private boolean isTrue;

    public String execute() {
        System.out.println("ArticleDeleteAction2");
        HttpServletRequest request = ServletActionContext.getRequest();
        ArticleService articleService = new ArticleService();
        String username = request.getSession().getAttribute("username").toString();
        String path = request.getSession().getServletContext().getRealPath("/");
        isTrue = articleService.deleteArticle(username, path,articleID,peopleID,true);
        if (isTrue) {
            return SUCCESS;
        } else
            return ERROR;
    }

    public ArticleDeleteAction2() {
    }

    public int getArticleID() {
        return articleID;
    }

    public void setArticleID(int articleID) {
        this.articleID = articleID;
    }

    public int getPeopleID() {
        return peopleID;
    }

    public void setPeopleID(int peopleID) {
        this.peopleID = peopleID;
    }
}
