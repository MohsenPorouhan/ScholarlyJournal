package service;

import Entity.PeopleEntity;
import Entity.UserEntity;
import util.JPAProvider;
import util.MD5;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;

/**
 * Created by Mohsen on 9/16/2018.
 */
public class UserService {
    public boolean updatePassword(String currentPassword, String newPassword, String retypeNewPassword, String username) {
        Object peopleId = null;
        Object password = null;
        EntityManager entityManager = JPAProvider.getEntityManager();

        String jql = "select p.id,u.password " +
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
            peopleId = o[0];
            password = o[1];
        }


        if (password.equals(MD5.toMD5(currentPassword))) {
            EntityTransaction transaction = entityManager.getTransaction();
            transaction.begin();
            entityManager.find(PeopleEntity.class, peopleId);
            UserEntity userEntity = entityManager.find(UserEntity.class, username);
            userEntity.setPassword(MD5.toMD5(newPassword));
            entityManager.persist(userEntity);
            transaction.commit();
            entityManager.close();
            return true;
        } else
            return false;
    }
}
