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
                <h1>Lista de Livros</h1>
            </div>
            
            <div class="row justify-content-md-center">
                <a class="btn btn-primary active" href="index.htm">Voltar</a> 
            </div>
        </div>
        <hr>
                
        <div class="container-fluid" style="margin-top: 1rem; padding: 0 3rem;">
            <div class="row justify-content-md-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Titulo</th>
                            <th>Ano</th>
                            <th>Autor</th>
                            <th>Editora</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listaLivro}" var="livro" varStatus="loop" >
                            <tr>
                                <th scope="row">${loop.index + 1}</th>
                                <td>${livro.titulo}</td>
                                <td>${livro.ano}</td>
                                <td>${livro.autor.nome}</td>
                                <td>${livro.editora.nome}</td>
                                <td>
                                    <a href="verLivro.htm?id=${livro.id}" class="btn btn-info" >editar</a>
                                    <a href="excluirLivro.htm?id=${livro.id}" class="btn btn-danger">deletar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </body>
        </div>
    </div>
</html>
