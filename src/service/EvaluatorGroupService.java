package service;

import Entity.ArticleEntity;
import Entity.EvaluatorGroupEntity;
import Entity.PeopleEntity;
import util.JPAProvider;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.Date;
import java.util.List;

/**
 * Created by Mohsen on 9/10/2018.
 */
public class EvaluatorGroupService {
    public boolean addReferee(int articleId, int refereeId, String refereeIdea, int peopleId) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        EvaluatorGroupEntity evaluatorGroupEntity = new EvaluatorGroupEntity();
        PeopleEntity peopleEntity = entityManager.find(PeopleEntity.class, refereeId);
        entityManager.find(PeopleEntity.class, peopleId);
        ArticleEntity articleEntity = entityManager.find(ArticleEntity.class, articleId);
        evaluatorGroupEntity.setPeopleEntity(peopleEntity);
        evaluatorGroupEntity.setArticleEntity(articleEntity);
        evaluatorGroupEntity.setComment(refereeIdea);
        evaluatorGroupEntity.setCreatedDate(new Date().toString());
        entityManager.persist(evaluatorGroupEntity);
        transaction.commit();
        entityManager.close();
        return true;
    }

    public List listEvaluator(int articleId) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        String jql = "select " +
                "eva.commentt,eva.createddate " +
                ",(select concat(FIRSTNAME,' '||lastname)fullname from PEOPLE where PEOPLE.id=eva.FK_PEOPLE_ID)referee_name " +
                "from " +
                "PEOPLE ,ARTICLE,EVALUATORGROUP eva " +
                "where 1=1 " +
                "and people.id=article.FK_PEOPLE_ID " +
                "and article.id=eva.FK_ARTICLE_ID " +
                "and article.id=:id";
        List<Object[]> list = entityManager.createNativeQuery(jql).setParameter("id",articleId).getResultList();
        for (Object[] o : list) {
            for (int i = 0; i < o.length; i++) {
                System.out.print(o[i].toString() + "---");
            }
            System.out.println("");
        }
        return list;
    }
}
