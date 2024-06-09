package Entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Mohsen on 7/10/2018.
 */
@Entity(name = "people")
@Table(name = "PEOPLE")
public class PeopleEntity implements Serializable {
    @Id
    @Column(name = "ID")
    @SequenceGenerator(name = "SEQ_PEOPLE", sequenceName = "SEQ_PEOPLE", allocationSize = 1)
    @GeneratedValue(generator = "SEQ_PEOPLE", strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    @Column(name = "FirstName", columnDefinition = "VARCHAR2(60 CHAR)", nullable = false)
    private String firstName;

    @Basic
    @Column(name = "LastName", length = 40, nullable = false)
    private String lastName;

    @Basic
    @Column(name = "NationalNumber", length = 10, unique = true)
    private String nationalNumber;

    @Basic
    @Column(name = "IsReferee")
    private boolean isReferee;

    @Basic
    @Column(name = "CreatedDate", nullable = false)
    private String createdDate;

    @Basic
    @Column(name = "EndedDate")
    private String endedDate;

    public PeopleEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public boolean isReferee() {
        return isReferee;
    }

    public void setReferee(boolean isReferee) {
        this.isReferee = isReferee;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getEndedDate() {
        return endedDate;
    }

    public void setEndedDate(String endedDate) {
        this.endedDate = endedDate;
    }
}