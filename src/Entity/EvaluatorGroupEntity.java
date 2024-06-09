package Entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Mohsen on 7/26/2018.
 */
@Entity(name = "evaluatorGrouop")
@Table(name = "EvaluatorGroup")
public class EvaluatorGroupEntity implements Serializable {
    @Id
    @Column(name = "ID")
    @SequenceGenerator(name = "SEQ_EVALUATOR",sequenceName = "SEQ_EVALUATOR",allocationSize = 1)
    @GeneratedValue(generator = "SEQ_EVALUATOR",strategy = GenerationType.SEQUENCE)
    private int id;

    @Basic
    @Column(name = "Commentt",nullable = false)
    private String comment;

    @Basic
    @Column(name = "CreatedDate")
    private String createdDate;

    @Basic
    @Column(name = "ModifiedDate")
    private String modifiedDate;

    @ManyToOne(targetEntity = PeopleEntity.class,fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_PEOPLE_ID",referencedColumnName = "ID")
    private PeopleEntity peopleEntity;

    @ManyToOne(targetEntity = ArticleEntity.class,fetch = FetchType.LAZY)
    @JoinColumn(name = "FK_ARTICLE_ID",referencedColumnName = "ID")
    private ArticleEntity articleEntity;

    public EvaluatorGroupEntity() {
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

    public ArticleEntity getArticleEntity() {
        return articleEntity;
    }

    public void setArticleEntity(ArticleEntity articleEntity) {
        this.articleEntity = articleEntity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public PeopleEntity getPeopleEntity() {
        return peopleEntity;
    }

    public void setPeopleEntity(PeopleEntity peopleEntity) {
        this.peopleEntity = peopleEntity;
    }
}
