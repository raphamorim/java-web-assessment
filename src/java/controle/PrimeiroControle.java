/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.LivrariaDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelo.Autor;
import modelo.Editora;
import modelo.Livro;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Hugo Raphael Vianna Amorim
 */
@Controller("/primeiro")
public class PrimeiroControle {
    
    @RequestMapping(value="/index.htm", method = RequestMethod.GET)
    public String chamarIndex()
    {
        return "index";
    }
    
    @RequestMapping(value="/listaLivro.htm", method = RequestMethod.GET)
    public String chamarIndex(@ModelAttribute("livro") Livro livro, HttpServletRequest req)
    {
        LivrariaDao dao = new LivrariaDao();
        List<Livro> lista = dao.listarLivro();
        req.setAttribute("listaLivro",  lista);
        return "listaLivro";
    }
      
    @RequestMapping(value="/excluirLivro.htm", method = RequestMethod.GET)
    public String excluirPessoa(HttpServletRequest req,
    @RequestParam("id") String id){

        LivrariaDao dao = new LivrariaDao();
        dao.excluirLivro(Integer.parseInt(id));
        List<Livro> lista = dao.listarLivro();
        req.setAttribute("listaLivro", lista);

        return "listaLivro";
    }
    
    @RequestMapping(value="/preparaCadastrarAutor.htm", method = RequestMethod.GET)
    public String preparaCadastrarAutor(@ModelAttribute("autor") Autor autor){
        
        return "cadastroAutor";
    }
    
    @RequestMapping(value="/preparaCadastrarEditora.htm", method = RequestMethod.GET)
    public String preparaCadastrarEditora(@ModelAttribute("editora") Editora editora){
        
        return "cadastroEditora";
    }
    
    @RequestMapping(value = "/cadastrarAutor.htm", method = RequestMethod.POST)
    public String cadastrarAutor(@ModelAttribute("autor") Autor autor){
        new LivrariaDao().cadastrarAutor(autor);
        return "index";
    }
    
    @RequestMapping(value = "/cadastrarEditora.htm", method = RequestMethod.POST)
    public String cadastrarEditora(@ModelAttribute("editora") Editora editora){
        new LivrariaDao().cadastrarEditora(editora);
        return "index";
    }
    
    @RequestMapping(value = "/verLivro.htm", method = RequestMethod.GET)
    public String verLivro(HttpServletRequest req, @RequestParam("id") String id){

        LivrariaDao dao = new LivrariaDao();
        Livro meuLivro = dao.verLivro(Integer.parseInt(id));
        req.setAttribute("livro", meuLivro);
        
        req.setAttribute("listaAutor", dao.listarAutor());
        req.setAttribute("listaEditora", dao.listarEditora());
        
        return "verLivro";
    }
    
    @RequestMapping(value = "/preparaCadastroLivro.htm", method = RequestMethod.GET)
    public String preparaCadastroLivro(@ModelAttribute("livro") Livro livro, HttpServletRequest req){
        
        livro.setAutor(new Autor());
        livro.setEditora(new Editora());
        LivrariaDao dao = new LivrariaDao();
        
        req.setAttribute("listaAutor", dao.listarAutor());
        req.setAttribute("listaEditora", dao.listarEditora());
        
        return "cadastroLivro";
    }
    
    @RequestMapping(value = "/cadastrarLivro.htm", method = RequestMethod.POST)
    public String cadastrarLivro(@ModelAttribute("livro") Livro livro){
        LivrariaDao dao = new LivrariaDao();
        
        dao.cadastrarLivro(livro);
        return "index";
    }
    
    @RequestMapping(value = "/atualizarLivro.htm", method = RequestMethod.POST)
    public String atualizarLivro(@ModelAttribute("livro") Livro livro){
        LivrariaDao dao = new LivrariaDao();
        
        dao.atualizarLivro(livro);
        return "index";
    }
    
}
