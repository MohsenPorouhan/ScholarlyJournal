package actions.admin;

import com.opensymphony.xwork2.ActionSupport;
import service.ArticleService;

/**
 * Created by Mohsen on 9/13/2018.
 */
public class UpdateStatusAction extends ActionSupport {
    private int articleId;
    private int peopleId;
    private String status;
    private boolean updated;

    public String execute() {
        System.out.println(articleId + " articleId");
        System.out.println(status + " status");
        ArticleService articleService = new ArticleService();
        updated = articleService.updateArticle(articleId, status,peopleId);
        return SUCCESS;
    }

    public UpdateStatusAction() {
    }

    public int getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(int peopleId) {
        this.peopleId = peopleId;
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean isUpdated() {
        return updated;
    }

    public void setUpdated(boolean updated) {
        this.updated = updated;
    }
}
