package actions;

import com.opensymphony.xwork2.ActionSupport;
import service.EvaluatorGroupService;

import java.util.List;

/**
 * Created by Mohsen on 9/12/2018.
 */
public class EvaluatorDetailsAction extends ActionSupport {
    private List list;
    private int articleId;
    public String execute() {
        System.out.println(articleId+" articleId");
        EvaluatorGroupService evaluatorGroupService=new EvaluatorGroupService();
        list=evaluatorGroupService.listEvaluator(articleId);
        return SUCCESS;
    }

    public EvaluatorDetailsAction() {
    }

    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
}
