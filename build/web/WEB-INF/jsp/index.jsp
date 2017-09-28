<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-br">
    <head>
        <title>Assessment</title>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link href="<c:url value="/recursos/css/main.css" />" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid" style="margin-top: 1rem;">
            <div class="row justify-content-md-center">
                <h1>Painel</h1>
            </div>
        </div>
        <hr>
        <c:if test="${pessoa!= null}">
            <div class="alert alert-success" role="alert">
                <c:out value="O livro ${pessoa.nome} foi cadastrado com sucesso!"/>
            </div>
        </c:if>
        <div class="row justify-content-md-center">
            <div class="btn-group mr-2" role="group" aria-label="First group">
                <a class="btn btn-secondary active" href="./">Listar Livros</a> 
                <a class="btn btn-primary" href="preparaCadastrarAutor.htm">Cadastrar Autor</a> 
                <a class="btn btn-primary" href="preparaCadastrarEditora.htm">Cadastrar Editora</a>
                <a class="btn btn-primary" href="preparaCadastroLivro.htm">Cadastrar Livro</a>
            </div>
        </div>
                    
    </body>
</html>
