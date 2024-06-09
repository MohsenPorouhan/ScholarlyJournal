package service;

import Entity.PeopleEntity;
import Entity.RoleEntity;
import Entity.UserEntity;
import util.JPAProvider;
import util.MD5;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.Date;

/**
 * Created by Mohsen on 7/14/2018.
 */
public class RegisterService {
    public boolean adduser(String firstname, String lastname, String nationalnumber, String username,
                           String password) {
            EntityManager entityManager = JPAProvider.getEntityManager();
        //String jql="select r.id from role r where r.title= :rid";
        //List list=  entityManager.createQuery(jql).setParameter("rid","user").getResultList();
        // System.out.println(list.get(0)+"idddddddddddddddddddddddd");
//        System.out.println(entityManager.find(RoleEntity.class,list.get(0)).getId());
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername(username);
        userEntity.setPassword(MD5.toMD5(password));
        userEntity.setCreatedDate(new Date().toString());
//        userEntity.setRole(roleEntity);
        PeopleEntity peopleEntity = new PeopleEntity();
        peopleEntity.setFirstName(firstname);
        peopleEntity.setLastName(lastname);
        peopleEntity.setNationalNumber(nationalnumber);
        peopleEntity.setReferee(false);
        peopleEntity.setCreatedDate(new Date().toString());
        userEntity.setPeople(peopleEntity);
//        UserRolePK userRolePK = new UserRolePK();
//        userRolePK.setRoleid("user");
//        userRolePK.setUserid(username);
        RoleEntity roleEntity = new RoleEntity();
        roleEntity.setRoleid("user");//
        roleEntity.setUserid(username);//
        roleEntity.setCreatedDate(new Date().toString());
//        roleEntity.setUserRolePK(userRolePK);
        entityManager.persist(userEntity);
        entityManager.persist(roleEntity);
        transaction.commit();
        entityManager.close();
        return true;
    }
}
