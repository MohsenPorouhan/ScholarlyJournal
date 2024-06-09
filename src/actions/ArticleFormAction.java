package actions;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import service.ArticleService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Mohsen on 8/4/2018.
 */

public class ArticleFormAction extends ActionSupport {

    private String subject;
    private boolean isTrue;

    private File fileUpload;
    private String fileUploadFileName;
    private String fileUploadContentType;

    public String execute() throws Exception {
        System.out.println("ArticleFormAction");
        System.out.println(this.subject);
        System.out.println(this.fileUpload);
        HttpServletRequest request = ServletActionContext.getRequest();
        ArticleService articleService = new ArticleService();

        Date dNow = new Date();
        String username=request.getSession().getAttribute("username").toString();
        SimpleDateFormat ft = new SimpleDateFormat("E-yyyy-MM-dd_hh-mm-ss-SS-a");
        String date=ft.format(dNow).toString();
        System.out.println("Current Date: " + ft.format(dNow));

        String path=request.getSession().getServletContext().getRealPath("/");
        isTrue = articleService.addArticle(subject,fileUpload,fileUploadFileName,fileUploadContentType,username,date,path);
//        System.out.println(path.substring(0,path.indexOf("out")));
        if (isTrue) {
            return SUCCESS;
        }
        else
            return ERROR;
    }

    public ArticleFormAction() {
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
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

    public File getFileUpload() {
        return fileUpload;
    }

    public void setFileUpload(File fileUpload) {
        this.fileUpload = fileUpload;
    }
}
