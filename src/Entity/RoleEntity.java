package Entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Mohsen on 7/10/2018.
 */
@Entity(name = "role")
@Table(name = "ROLE")
public class RoleEntity implements Serializable {
//    @Id
//    @Column(name = "ID")
//    @SequenceGenerator(name = "SEQ_ROLE", sequenceName = "SEQ_ROLE", allocationSize = 1)
//    @GeneratedValue(generator = "SEQ_ROLE", strategy = GenerationType.SEQUENCE)
//    private int id;
//    @EmbeddedId
//    private UserRolePK userRolePK;

    @Id
    @Column(name = "USERNAME")
    private String userid;

    @Id
    @Column(name = "FK_ROLE_ID")
    private String roleid;

    @Basic
    @Column(name = "CreatedDate",nullable = false)
    private String createdDate;

    @Basic
    @Column(name = "EndedDate")
    private String endedDate;

    //    @Basic
//    @Column(name = "Title")
//    private String title;

//    @Basic
//    @Column(name = "user_name", columnDefinition = "VARCHAR2(15 CHAR)", nullable = false)
//    private String username;

//    @Basic
//    @Column(name = "role_name", columnDefinition = "VARCHAR2(15 CHAR)", nullable = false)
//    private String rolename;

//    @ManyToOne(targetEntity = UserEntity.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
//    @JoinColumn(name = "fk_user_name", referencedColumnName = "user_name")
//    private UserEntity user;

//    @OneToMany(targetEntity = UserEntity.class,cascade = CascadeType.ALL,fetch = FetchType.LAZY)
//    @JoinColumn(name = "FK_ROLE_ID",referencedColumnName = "ID")
//    private Set<UserEntity> user;


    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }

    public RoleEntity() {
    }

//    public UserRolePK getUserRolePK() {
//        return userRolePK;
//    }
//
//    public void setUserRolePK(UserRolePK userRolePK) {
//        this.userRolePK = userRolePK;
//    }

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