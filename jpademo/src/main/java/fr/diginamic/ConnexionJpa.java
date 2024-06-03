package fr.diginamic;

import fr.diginamic.entities.Region;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

/**
 * ConnexionJpa
 */
public class ConnexionJpa {

    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("test_pu");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tm = em.getTransaction();

        tm.begin();
        Region r = em.find(Region.class, "0");

        if (r != null) {
            em.remove(r);
        }

        tm.commit();

        System.out.println(r.toString());
    }
}