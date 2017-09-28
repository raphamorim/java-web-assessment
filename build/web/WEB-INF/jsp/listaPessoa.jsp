<%-- 
    Document   : listaPessoas
    Created on : 23/03/2017, 09:27:55
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Lista de Pessoas</h1>
        </hr>
        <table>
            <thead>
                <th>ID</th>
                <th>Email</th>
                <th>Nome</th>
                <th></th>
            </thead>
            <tbody>
                <c:forEach items="${listaPessoas}" var="pessoa" >
                    <tr>
                        <td>${pessoa.id}</td>
                        <td>${pessoa.email}</td>
                        <td>${pessoa.nome}</td>
                        <th><a href="excluirPessoa.htm?id=${pessoa.id}">Excluir</a></th>
                    </tr>
                </c:forEach>
            </tbody>
            
        </table>
        
    </body>
</html>
