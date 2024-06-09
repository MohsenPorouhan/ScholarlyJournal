package actions.admin;

import com.opensymphony.xwork2.ActionSupport;
import service.RefereeService;

/**
 * Created by Mohsen on 8/23/2018.
 */
public class newRefereeAction extends ActionSupport {
    private String firstName;
    private String lastName;
    private String nationalNumber;

    private boolean isTrue;

    public String execute() {
        System.out.println("newRefereeAction");
        return SUCCESS;
    }

    public String insertion() {
        System.out.println("referee insertion");
        RefereeService refereeService=new RefereeService();
        isTrue=refereeService.addReferee(firstName,lastName,nationalNumber);
        if (isTrue)
            return SUCCESS;
        else
            return ERROR;
    }

    public newRefereeAction() {
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNationalNumber() {
        return nationalNumber;
    }

    public void setNationalNumber(String nationalNumber) {
        this.nationalNumber = nationalNumber;
    }
}
