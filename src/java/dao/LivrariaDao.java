/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
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
    
    public List<Livro> listarLivro(){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        List<Livro> listaLivro = em.createQuery("select l from Livro as l").getResultList();
        em.close();
        factory.close();
        return listaLivro;
    }
    
    public Livro verLivro(int idlivro){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        Livro livro = em.find(Livro.class, idlivro);
        em.close();
        factory.close();
        return livro;
    }
    
    public void excluirLivro(int idlivro){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        Livro livro = em.find(Livro.class, idlivro);
        em.remove(livro);
        em.getTransaction().commit();
        em.close();
        factory.close();
    }
    
    
    public void atualizarLivro(Livro livro){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        em.merge(livro);
        em.getTransaction().commit();
        em.close();
        factory.close();
    }
    
}
