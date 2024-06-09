package service;

import Entity.ArticleEntity;
import Entity.PeopleEntity;
import org.apache.commons.io.FileUtils;
import util.JPAProvider;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.io.File;
import java.io.IOException;
import java.util.*;

/**
 * Created by Mohsen on 8/4/2018.
 */
public class ArticleService {
    public boolean addArticle(String subject, File fileUpload, String fileUploadFileName, String fileUploadContentType,
                              String username, String date, String path) {
//        UserRolePK userRolePK=new UserRolePK();
//        userRolePK.setUserid(username);
//        userRolePK.setRoleid("user");
        EntityManager entityManager = JPAProvider.getEntityManager();
//        String jql="select u.username,p.firstName,p.lastName,r.userRolePK " +
//                "from user u , people p ,role r " +
//                "where u.username= :username " +
//                "and u.people.id=p.id " +
//                "and r.userRolePK=:userRolePK ";

        String jql = "select u.people.id " +
                "from user u " +
                "where u.username=:username";

//        String jql="select u.username,p.firstName,p.lastName,r.roleid,p.nationalNumber " +
//                "from user u , people p ,role r " +
//                "where 1=1 " +
//                "and u.people.id=p.id " +
//                "and r.userid=u.username ";
//        List<Object[]> list=  entityManager.createQuery(jql).getResultList();
//        for (Object[] o : list) {
//            for (int i = 0; i <o.length ; i++) {
//                System.out.print(o[i].toString() + "---");
//            }
//            System.out.println("");
//        }

//        List list=  entityManager.createQuery(jql).setParameter("username",username).setParameter("userRolePK",userRolePK).getResultList();
        Object peopleID = entityManager.createQuery(jql).setParameter("username", username).getSingleResult();
        System.out.println(peopleID.toString());
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
//        File saveFilePath = new File(request.getSession().getServletContext().getRealPath("/")+"web/upload/" + fileUploadFileName);
        File saveFilePath = new File(path + "/upload/" + username + date + fileUploadFileName);
//        File saveFilePath = new File(path.substring(0, path.indexOf("out")) + "web/upload/" + username + date + fileUploadFileName);
        try {
            FileUtils.copyFile(fileUpload, saveFilePath);
//                file = new File(path.substring(0,path.indexOf("out"))+"web/upload/GAN.pdf ");
//
//                // Path to a file and is not empty to delete
//
//                if (file.isFile() && file.exists()) {
//
//                    file.delete();
//
//                }
        } catch (IOException ex) {
            System.out.println("Couldn't save file: " + ex.getMessage());
        }
        ArticleEntity articleEntity = new ArticleEntity();
        PeopleEntity peopleEntity = entityManager.find(PeopleEntity.class, peopleID);
        articleEntity.setPeople(peopleEntity);
//        articleEntity.setPath(path.substring(0, path.indexOf("out")) + "web/upload/" + username + date + fileUploadFileName);
        articleEntity.setPath("/upload/" + username + date + fileUploadFileName);
        articleEntity.setStatus("1");
        articleEntity.setSubject(subject);
        articleEntity.setCreatedDate(new Date().toString());
        System.out.println(fileUploadContentType);
        System.out.println(fileUploadFileName);
        entityManager.persist(articleEntity);
        transaction.commit();
        entityManager.close();
        return true;
    }

    public List articleList(String username) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        String jql = "select a.path,a.status,a.subject,a.id,p.id " +
                "from article a,user u,people p " +
                "where 1=1" +
                "and u.username=:username " +
                "and u.people.id=p.id " +
                "and a.people.id=u.people.id " +
                "order by a.id desc";
        List<Object[]> list = entityManager.createQuery(jql).setParameter("username", username).getResultList();
        for (Object[] o : list) {
            for (int i = 0; i < o.length; i++) {
                System.out.print(o[i].toString() + "---");
            }
            System.out.println("");
        }
        return list;
    }

    public HashMap articleList2(String username) {
        List<Map<String, String>> myMap = new ArrayList<Map<String, String>>();
        HashMap hashMap = new HashMap();
        String[] aColumns = {"subject", "status", "articleId", "peopleId", "modifiedDate", "createdDate", "path"};
        EntityManager entityManager = JPAProvider.getEntityManager();
        String jql = "select a.subject,a.status,a.id,p.id,coalesce(a.modifiedDate,'0') as modifiedDate,a.createdDate,a.path " +
                "from article a,user u,people p " +
                "where 1=1 " +
                "and u.username=:username " +
                "and u.people.id=p.id " +
                "and a.people.id=u.people.id " +
                "order by a.id desc";
        List<Object[]> list = entityManager.createQuery(jql).setParameter("username", username).getResultList();
        int index = 0;
        for (Object[] o : list) {
            Map<String, String> myMap1 = new HashMap<String, String>();
            for (int i = 0; i < o.length; i++) {
                for (int j = i; j <= i; j++) {
                    myMap1.put(aColumns[j], o[i].toString());
                }
            }
            myMap.add(index, myMap1);
            index++;
        }
//        hashMap.put("recordsTotal",24);
//        hashMap.put("recordsFiltered",24);
//        hashMap.put("draw",draw);
        hashMap.put("aaData", myMap);
        return hashMap;
    }

    public boolean deleteArticle(String username, String path, int id, int peopleID, boolean del) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        String jql = "select a.path " +
                "from user u,article a " +
                "where u.username=:username " +
                "and a.people.id=u.people.id " +
                "and a.id=:id";
        Object articlePath = entityManager.createQuery(jql).setParameter("id", id).setParameter("username", username).getSingleResult();
//        System.out.println(path+articlePath.toString().substring(1));
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        File file;
        file = new File(path + articlePath.toString().substring(1));
        // Path to a file and is not empty to delete

        if (file.isFile() && file.exists()) {
            file.delete();
        }
        if (del == true) {
            entityManager.find(PeopleEntity.class, peopleID);
            ArticleEntity articleEntity = entityManager.find(ArticleEntity.class, id);
            entityManager.remove(articleEntity);
        }
        transaction.commit();
        entityManager.close();
        return true;
    }

    public boolean updateArticle(int articleId, String status, int peopleId) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.find(PeopleEntity.class, peopleId);
        ArticleEntity articleEntity = entityManager.find(ArticleEntity.class, articleId);
        articleEntity.setStatus(status);
        entityManager.persist(articleEntity);
        transaction.commit();
        entityManager.close();
        return true;
    }

    public boolean updateArticle2(int articleId, int peopleId, String subject, File fileUpload, String fileUploadFileName,
                                  String fileUploadContentType, String path, String date, String username) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        if (this.deleteArticle(username, path, articleId, peopleId,false)) {
            File saveFilePath = new File(path + "/upload/" + username + date + fileUploadFileName);
//        File saveFilePath = new File(path.substring(0, path.indexOf("out")) + "web/upload/" + username + date + fileUploadFileName);
            try {
                FileUtils.copyFile(fileUpload, saveFilePath);
            } catch (IOException ex) {
                System.out.println("Couldn't save file: " + ex.getMessage());
            }
            entityManager.find(PeopleEntity.class, peopleId);
            ArticleEntity articleEntity = entityManager.find(ArticleEntity.class, articleId);
            articleEntity.setSubject(subject);
            articleEntity.setPath("/upload/" + username + date + fileUploadFileName);
            articleEntity.setModifiedDate(date);
            entityManager.persist(articleEntity);
            transaction.commit();
            entityManager.close();

        }
        return true;
    }
}
