/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Autor;
import modelo.Editora;
import modelo.Livro;

/**
 *
 * @author DesenvolvedorJava
 */
public class LivrariaDao
{
    
    public void cadastrarAutor(Autor autor){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        em.persist(autor);
        em.getTransaction().commit();
        em.close();
    }
    
    public void cadastrarEditora(Editora editora){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        em.persist(editora);
        em.getTransaction().commit();
        em.close();
    }
    
    public List<Editora> listarEditora(){
               EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        List<Editora> listaEditora = em.createQuery("select e from Editora as e").getResultList();
        em.close();
        factory.close();
        return listaEditora;
    }
    
    public List<Autor> listarAutor(){
               EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        List<Autor> listaAutor = em.createQuery("select a from Autor as a").getResultList();
        em.close();
        factory.close();
        return listaAutor;
    }
    
    public void cadastrarLivro(Livro livro){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        em.persist(livro);
        em.getTransaction().commit();
        em.close();
        factory.close();
    }
    
}
