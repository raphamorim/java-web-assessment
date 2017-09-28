<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/recursos/css/main.css" />" rel="stylesheet">
        <title>Aplicação Olá Spring</title>
    </head>

    <body>
        <div class="principal">
            <h1> Menu Principal </h1>
        </div>
        <hr>
    <c:if test="${pessoa!= null}">
    
        <c:out value="${pessoa.nome} foi cadastrado com sucesso!"/>
               
               </c:if>
        
        <ul>
            <li><a href="preparaCadastrarPessoa.htm"> Cadastrar Pessoa</a></li>
            <li><a href="listarPessoa.htm"> Listar Pessoas</a></li>
            <li><a href="preparaCadastrarAutor.htm">Cadastrar Autor</a></li>
            <li><a href="preparaCadastrarEditora.htm">Cadastrar Editora</a></li>
            <li><a href="preparaCadastroLivro.htm">Cadastrar Livro</a></li>
            
        </ul>
        
    </body>
</html>
