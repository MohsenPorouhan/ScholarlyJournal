package actions;

import com.opensymphony.xwork2.ActionSupport;
import service.PeopleService;

/**
 * Created by Mohsen on 9/16/2018.
 */
public class MyProfileEditAction extends ActionSupport {
    private int peopleId;
    private String firstName;
    private String lastName;
    private String nationalNumber;
    private boolean edited;
    public String execute(){
        System.out.println("MyProfileEditAction");
        PeopleService peopleService=new PeopleService();
        edited=peopleService.updatePeople(peopleId,firstName,lastName,nationalNumber);
        return SUCCESS;
    }

    public MyProfileEditAction() {
    }

    public boolean isEdited() {
        return edited;
    }

    public void setEdited(boolean edited) {
        this.edited = edited;
    }

    public int getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(int peopleId) {
        this.peopleId = peopleId;
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
