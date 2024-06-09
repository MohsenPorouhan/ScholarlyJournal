package Entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Mohsen on 7/10/2018.
 */
@Entity(name = "user")
@Table(name = "USERR")
public class UserEntity implements Serializable {
    //    @Id
//    @Column(name = "ID")
//    @SequenceGenerator(name = "SEQ_USER", allocationSize = 1, sequenceName = "SEQ_USER")
//    @GeneratedValue(generator = "SEQ_USER", strategy = GenerationType.SEQUENCE)
//    private int id;
    @Id
    @Column(name = "username",columnDefinition = "VARCHAR2(15 CHAR)", nullable = false)
    private String username;

    @Basic
    @Column(name = "Password", columnDefinition = "VARCHAR2(255 CHAR)",nullable = false)
    private String password;

    @Basic
    @Column(name = "CreatedDate")
    private String createdDate;

    @Basic
    @Column(name = "EndedDate")
    private String endedDate;

    @OneToOne(targetEntity = PeopleEntity.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private PeopleEntity people;

//    @ManyToOne(targetEntity = RoleEntity.class, cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
//    @JoinColumn(name = "FK_ROLE_ID", referencedColumnName = "ID")
//    private RoleEntity role;

    public UserEntity() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public PeopleEntity getPeople() {
        return people;
    }

    public void setPeople(PeopleEntity people) {
        this.people = people;
    }
}
