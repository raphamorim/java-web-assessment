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
import modelo.Pessoa;

/**
 *
 * @author DesenvolvedorJava
 */
public class PessoaDao {
    
    public void cadastrarPessoa(Pessoa pessoa){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        em.persist(pessoa);
        em.getTransaction().commit();
        em.close();
    }
    
    public void excluirPessoa(int idPessoa){
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        Pessoa pessoa = em.find(Pessoa.class, idPessoa);
        em.remove(pessoa);
        em.getTransaction().commit();
        em.close();
    }
    
    public List<Pessoa> listarPessoas(){
        List<Pessoa> listaPessoas = new ArrayList<Pessoa>();
        EntityManagerFactory factory = 
                Persistence.createEntityManagerFactory("PersistSpring");
        
        EntityManager em = factory.createEntityManager();
        em.getTransaction().begin();
        listaPessoas = em.createQuery("Select p from Pessoa as p").getResultList();
        em.close();
        return listaPessoas;
    }
    
}
