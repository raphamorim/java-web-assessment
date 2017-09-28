<%-- 
    Document   : cadastroLivro
    Created on : 28/03/2017, 08:56:11
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro Livro - Assessment</title>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid" style="padding-top: 1rem">
            <div class="row justify-content-md-center">
                <h2>Cadastro de Livro</h2>
            </div>
        </div>
        <hr>       
        <div class="container-fluid">
        <div class="row justify-content-md-center">
        <s:form action="cadastrarLivro.htm"
                method="POST" modelAttribute="livro" >
                <div class="form-group">
                    <label for="titulo">Título do Livro: </label>
                    <td><s:input path="titulo" placeholder="Digite o Título" class="form-control" required="true"/></td>
                </div>
                
                <div class="form-group">
                    <label for="ano">Ano do Livro: </label>
                    <td><s:input path="ano" value="2017" class="form-control" required="true"/></td>
                </div>
                
                <div class="form-group">
                    <label for="autor">Autor do Livro: </label>
                    <td><s:select class="custom-select" path="autor.id" 
                              itemValue="id" itemLabel="nome" 
                            items="${listaAutor}" /></td>
                </div>
                
                <div class="form-group">
                    <label for="autor">Editora do Livro: </label>
                    <td><s:select class="custom-select" path="editora.id" 
                              itemValue="id" itemLabel="nome" 
                            items="${listaEditora}" /></td>
                </div>

            <input type="submit" class="btn btn-primary" value="Enviar"/>
        </s:form>
        </div>
        </div>
    </body>
</html>
