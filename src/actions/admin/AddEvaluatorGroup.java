package actions.admin;

import com.opensymphony.xwork2.ActionSupport;
import service.EvaluatorGroupService;

/**
 * Created by Mohsen on 9/10/2018.
 */
public class AddEvaluatorGroup extends ActionSupport {
    private String articleId;
    private String refereeId;
    private int peopleId;
    private String refereeIdea;
    private boolean insertedEvaluator;

    public String execute() {
        EvaluatorGroupService evaluatorGroupService = new EvaluatorGroupService();
        insertedEvaluator = evaluatorGroupService.addReferee(Integer.parseInt(articleId), Integer.parseInt(refereeId), refereeIdea,peopleId);
        return SUCCESS;
    }

    public AddEvaluatorGroup() {
    }

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getRefereeId() {
        return refereeId;
    }

    public void setRefereeId(String refereeId) {
        this.refereeId = refereeId;
    }

    public String getRefereeIdea() {
        return refereeIdea;
    }

    public void setRefereeIdea(String refereeIdea) {
        this.refereeIdea = refereeIdea;
    }

    public boolean isInsertedEvaluator() {
        return insertedEvaluator;
    }

    public void setInsertedEvaluator(boolean insertedEvaluator) {
        this.insertedEvaluator = insertedEvaluator;
    }

    public int getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(int peopleId) {
        this.peopleId = peopleId;
    }
}
