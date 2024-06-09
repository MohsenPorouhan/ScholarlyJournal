package service;

import Entity.ArticleEntity;
import Entity.PeopleEntity;
import util.JPAProvider;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;

/**
 * Created by Mohsen on 9/16/2018.
 */
public class PeopleService  {
    public List peopleList(String username) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        String jql = "select p.id,p.firstName,p.lastName,p.nationalNumber " +
                "from people p,user u " +
                "where 1=1" +
                "and u.username=:username " +
                "and u.people.id=p.id ";
        List<Object[]> list = entityManager.createQuery(jql).setParameter("username", username).getResultList();
        for (Object[] o : list) {
            for (int i = 0; i < o.length; i++) {
                System.out.print(o[i].toString() + "---");
            }
            System.out.println("");
        }
        return list;
    }

    public boolean updatePeople(int peopleId, String firstName, String lastName,String nationalNumber) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        PeopleEntity peopleEntity = entityManager.find(PeopleEntity.class, peopleId);
        peopleEntity.setFirstName(firstName);
        peopleEntity.setLastName(lastName);
        peopleEntity.setNationalNumber(nationalNumber);
        entityManager.persist(peopleEntity);
        transaction.commit();
        entityManager.close();
        return true;
    }
}
