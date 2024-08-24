package fr.diginamic;

import fr.diginamic.entities.Book;
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
        Book b = em.find(Book.class, "0");

        if (b != null) {
            em.remove(b);
        }

        tm.commit();

        System.out.println(b.toString());
    }
}