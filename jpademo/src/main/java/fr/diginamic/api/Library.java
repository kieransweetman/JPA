package fr.diginamic.api;

import java.util.List;

import fr.diginamic.entities.Book;
import fr.diginamic.entities.Client;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class Library {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("library");
        EntityManager em = emf.createEntityManager();
        EntityTransaction tm = em.getTransaction();

        tm.begin();

        Client c = em.find(Client.class, 1);
        if (c != null) {

            List<Book> bookLoans = c.getLoans().get(0).getBooks();

            for (Book b : bookLoans) {
                System.out.println(b.toString());
            }
        }

        tm.rollback();
    }
}
