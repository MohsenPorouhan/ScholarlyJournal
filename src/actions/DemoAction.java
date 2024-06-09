package actions;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Mohsen on 7/10/2018.
 */
public class DemoAction extends ActionSupport {
//    public static void main(String[] args) {
//        EntityManager entityManager = JPAProvider.getEntityManager();
////        String jql = "select p from people p";
////        List<PeopleEntity> peopleList = entityManager.createQuery(jql).getResultList();
////        for (PeopleEntity people : peopleList) {
////            System.out.println(people.getId() + " " + people.getFirstName());
////        }
//        entityManager.close();
//    }

    @Override
    public String execute() throws Exception {
        System.out.println("ffffffffffffffffffffffffffff");
//        EntityManager entityManager = JPAProvider.getEntityManager();
//        entityManager.close();
        return SUCCESS;
    }
}
