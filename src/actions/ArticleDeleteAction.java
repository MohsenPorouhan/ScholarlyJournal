package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ArticleService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Mohsen on 8/21/2018.
 */
public class ArticleDeleteAction extends ActionSupport {
    private String articleID;

    private boolean isTrue;

    public String execute() {
        System.out.println("ArticleDeleteAction");
        HttpServletRequest request = ServletActionContext.getRequest();
        ArticleService articleService = new ArticleService();
        String username = request.getSession().getAttribute("username").toString();
        String path = request.getSession().getServletContext().getRealPath("/");
        System.out.println(articleID.substring(articleID.indexOf("-")+1));
        isTrue = articleService.deleteArticle(username, path, Integer.parseInt(articleID.substring(0,articleID.indexOf("-"))),
                Integer.parseInt(articleID.substring(articleID.indexOf("-")+1)),true);
        if (isTrue) {
            return SUCCESS;
        } else
            return ERROR;
    }

    public ArticleDeleteAction() {
    }

    public String getArticleID() {
        return articleID;
    }

    public void setArticleID(String articleID) {
        this.articleID = articleID;
    }
}
