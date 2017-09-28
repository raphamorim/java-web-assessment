/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author DesenvolvedorJava
 */
@Entity
public class Livro
{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    String titulo;
    
    @OneToOne
    private Autor autor;
    
    @OneToOne
    private Editora editora;
    private int ano;

    public String getTitulo()
    {
        return titulo;
    }

    public void setTitulo(String titulo)
    {
        this.titulo = titulo;
    }
    
    public int getAno()
    {
        return ano;
    }

    public void setAno(int ano)
    {
        this.ano = ano;
    }
    

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public Autor getAutor()
    {
        return autor;
    }

    public void setAutor(Autor autor)
    {
        this.autor = autor;
    }

    public Editora getEditora()
    {
        return editora;
    }

    public void setEditora(Editora editora)
    {
        this.editora = editora;
    }
            
}
