package service;

import Entity.PeopleEntity;
import util.JPAProvider;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.*;

/**
 * Created by Mohsen on 8/25/2018.
 */
public class RefereeService {
    public boolean addReferee(String firstname, String lastname, String nationalnumber) {
        EntityManager entityManager = JPAProvider.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        PeopleEntity peopleEntity = new PeopleEntity();
        peopleEntity.setFirstName(firstname);
        peopleEntity.setLastName(lastname);
        peopleEntity.setNationalNumber(nationalnumber);
        peopleEntity.setReferee(true);
        peopleEntity.setCreatedDate(new Date().toString());
        entityManager.persist(peopleEntity);
        transaction.commit();
        entityManager.close();
        return true;
    }

    public HashMap articleList(int start, int length, int draw, int orderColumn, boolean orderable,
                               String orderDIR, String search) {
        List<Map<String, String>> myMap = new ArrayList<Map<String, String>>();
        HashMap hashMap = new HashMap();
        String[] aColumns = {"path", "status","createdDate","modifiedDate", "subject", "articleID", "peopleID","firstname","lastname"};
        EntityManager entityManager = JPAProvider.getEntityManager();
//        String jql = "select a.path,a.status,a.subject,a.id,p.id " +
//                "from article a,user u,people p " +
//                "where 1=1" +
//                "and u.people.id=p.id " +
//                "and a.people.id=u.people.id " +
//                "order by a.id desc";
        String limit;
        String order;
        String where = " and (";
        int exactOrder = orderColumn + 1;
        if (orderable) {
            order = "order by " + exactOrder + " " + orderDIR;
        } else {
            order = "order by -1 desc";
        }
        if (length == -1) {
            limit = "";
        } else {
            limit = "and indexx between :start and :endd ";
        }
        if (where != "") {
            for (int i = 0; i < aColumns.length; i++) {
                where = where + aColumns[i] + " Like :sVal or ";
            }
            where = where.substring(0, where.length() - 3);
            where += ") ";
        } else {
            where = "";
        }

        String queryTotalResult = "select count(*) from(" +
                "select " +
                "rownum indexx " +
                ",articleent0_.Path as path " +
                ",articleent0_.Status as status, articleent0_.Subject as subject " +
                ",articleent0_.ID as articleID, peopleenti2_.ID as peopleID " +
                "from Article articleent0_ " +
                "cross join USERR userentity1_ " +
                "cross join PEOPLE peopleenti2_ " +
                "where 1=1 " +
                "and userentity1_.people_ID=peopleenti2_.ID " +
                "and articleent0_.FK_PEOPLE_ID=userentity1_.people_ID) " +
                "where 1=1 ";

        String queryFilteredTotal = "select count(*) from(" +
                "select " +
                "rownum indexx " +
                ",articleent0_.Path as path " +
                ",articleent0_.Status as status, articleent0_.Subject as subject " +
                ",articleent0_.ID as articleID, peopleenti2_.ID as peopleID " +
                ",peopleenti2_.firstname as firstname,peopleenti2_.lastname as lastname "+
                ",articleent0_.CreatedDate as createdDate,coalesce(articleent0_.ModifiedDate,'0')modifiedDate "+
                "from Article articleent0_ " +
                "cross join USERR userentity1_ " +
                "cross join PEOPLE peopleenti2_ " +
                "where 1=1 " +
                "and userentity1_.people_ID=peopleenti2_.ID " +
                "and articleent0_.FK_PEOPLE_ID=userentity1_.people_ID) " +
                "where 1=1 " +
                where;

        String nativeQuery = "select path,status,createdDate,modifiedDate,subject,articleID,peopleID,firstname,lastname from(" +
                "select " +
                "rownum indexx " +
                ",articleent0_.Path as path " +
                ",articleent0_.Status as status, articleent0_.Subject as subject " +
                ",articleent0_.ID as articleID, peopleenti2_.ID as peopleID " +
                ",peopleenti2_.firstname as firstname,peopleenti2_.lastname as lastname "+
                ",articleent0_.CreatedDate as createdDate,coalesce(articleent0_.ModifiedDate,'0')modifiedDate "+
                "from Article articleent0_ " +
                "cross join USERR userentity1_ " +
                "cross join PEOPLE peopleenti2_ " +
                "where 1=1 " +
                "and userentity1_.people_ID=peopleenti2_.ID " +
                "and articleent0_.FK_PEOPLE_ID=userentity1_.people_ID) " +
                "where 1=1 " +
                where +
                limit +
                order;
        List<Object[]> list = null;
        if (length != -1 && search.equals("")) {
            list = entityManager.createNativeQuery(nativeQuery).setParameter("start", start + 1).setParameter("endd", length + start).setParameter("sVal", "%" + search + "%").getResultList();
        } else if (length == -1) {
            list = entityManager.createNativeQuery(nativeQuery).setParameter("sVal", "%" + search + "%").getResultList();
        } else if (!search.equals("")) {
            list = entityManager.createNativeQuery(nativeQuery).setParameter("start", start + 1).setParameter("endd", length + start).setParameter("sVal", "%" + search + "%").getResultList();
        }

//        List<Object[]> list = entityManager.createQuery(jql).setFirstResult(1).setMaxResults(10).getResultList();
        int index = 0;
        for (Object[] o : list) {
            Map<String, String> myMap1 = new HashMap<String, String>();
            for (int i = 0; i < o.length; i++) {
                for (int j = i; j <= i; j++) {
//                    if(aColumns[j].equals("path")){
//                        myMap1.put(aColumns[j],"<a href='"+ o[i].toString()+"'>download</a>");
//                    }
//                    else
                    myMap1.put(aColumns[j], o[i].toString());
//                    String out = null;
//                    try {
//                        out = new String(o[i].toString().getBytes("ISO-8859-1"), "UTF-8");
//                    } catch (UnsupportedEncodingException e) {
//                        e.printStackTrace();
//                    }
//
//                    System.out.println(out);
                }
            }
            myMap.add(index, myMap1);
            index++;
        }
        Object totalResult = entityManager.createNativeQuery(queryTotalResult).getSingleResult();
        Object filterTotal = entityManager.createNativeQuery(queryFilteredTotal).setParameter("sVal", "%" + search + "%").getSingleResult();
        hashMap.put("recordsTotal", totalResult.toString());
        hashMap.put("recordsFiltered", filterTotal.toString());
        hashMap.put("draw", draw);
        hashMap.put("aaData", myMap);
        return hashMap;
    }
    public List refereeList(){
        EntityManager entityManager = JPAProvider.getEntityManager();
        String jql = "select p.id,p.firstName,p.lastName " +
                "from people p " +
                "where 1=1" +
                "and p.isReferee=1 "+
                "order by p.id desc";
        List<Object[]> list = entityManager.createQuery(jql).getResultList();
        for (Object[] o : list) {
            for (int i = 0; i < o.length; i++) {
                System.out.print(o[i].toString() + "---");
            }
            System.out.println("");
        }
        return list;
    }
}