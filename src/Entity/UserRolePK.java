package Entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import java.io.Serializable;

/**
 * Created by Mohsen on 7/21/2018.
 */

public class UserRolePK implements Serializable{
    @Basic
    @Column(name = "USERNAME")
    private String userid;

    @Basic
    @Column(name = "FK_ROLE_ID")
    private String roleid;

    public UserRolePK() {
    }

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
}
