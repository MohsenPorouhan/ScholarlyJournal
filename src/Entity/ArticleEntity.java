package Entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Mohsen on 7/11/2018.
 */

@Entity(name = "article")
@Table(name = "Article")
public class ArticleEntity implements Serializable {
    @Id
    @Column(name = "ID")
    @SequenceGenerator(name = "SEQ_ARTICLE", sequenceName = "SEQ_ARTICLE", allocationSize = 1)
    @GeneratedValue(generator = "SEQ_ARTICLE", strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    @Column(name = "Subject")
    private String subject;

    @Basic
    @Column(name = "CreatedDate")
    private String createdDate;

    @Basic
    @Column(name = "ModifiedDate")
    private String modifiedDate;

    @Basic
    @Column(name = "Path")
    private String path;

    @Basic
    @Column(name = "Status")
    private String status;

    @ManyToOne(targetEntity = PeopleEntity.class,fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_PEOPLE_ID", referencedColumnName = "ID")
    private PeopleEntity people;

    public ArticleEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public String getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(String modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public PeopleEntity getPeople() {
        return people;
    }

    public void setPeople(PeopleEntity people) {
        this.people = people;
    }
}
