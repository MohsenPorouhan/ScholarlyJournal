package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ArticleService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Mohsen on 9/15/2018.
 */
public class ArticleEditAction extends ActionSupport {
    private int articleID;
    private int peopleID;
    private String subject;

    private File fileUpload;
    private String fileUploadFileName;
    private String fileUploadContentType;

    public String execute() {
        System.out.println("ArticleEditAction");
        HttpServletRequest request = ServletActionContext.getRequest();
        Date dNow = new Date();
        String username=request.getSession().getAttribute("username").toString();
        SimpleDateFormat ft = new SimpleDateFormat("E-yyyy-MM-dd_hh-mm-ss-SS-a");
        String date=ft.format(dNow).toString();
        String path=request.getSession().getServletContext().getRealPath("/");
        ArticleService articleService=new ArticleService();
        articleService.updateArticle2(articleID,peopleID,subject,fileUpload,fileUploadFileName,fileUploadContentType,path,date
        ,username);
        return SUCCESS;
    }

    public ArticleEditAction() {
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public File getFileUpload() {
        return fileUpload;
    }

    public void setFileUpload(File fileUpload) {
        this.fileUpload = fileUpload;
    }

    public String getFileUploadFileName() {
        return fileUploadFileName;
    }

    public void setFileUploadFileName(String fileUploadFileName) {
        this.fileUploadFileName = fileUploadFileName;
    }

    public String getFileUploadContentType() {
        return fileUploadContentType;
    }

    public void setFileUploadContentType(String fileUploadContentType) {
        this.fileUploadContentType = fileUploadContentType;
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
