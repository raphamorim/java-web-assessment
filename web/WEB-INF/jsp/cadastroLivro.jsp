<%-- 
    Document   : cadastroLivro
    Created on : 28/03/2017, 08:56:11
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Livro</title>
    </head>
    <body>
        <h1>Cadastro Livro</h1>
        <hr/>
        <s:form action="cadastrarLivro.htm"
                method="POST" modelAttribute="livro" >
            <table>
                
                <tr>
                    <td>Titulo:</td>
                    <td><s:input path="titulo"/></td>                
                </tr>
                
                <tr>
                    <td>Ano:</td>
                    <td><s:input path="ano"/></td>                
                </tr>

                <tr>
                    <td>Autor:</td>
                    <td> <s:select path="autor.id" 
                              itemValue="id" itemLabel="nome" 
                            items="${listaAutor}" /> </td>                
                </tr>
                
                <tr>
                    <td>Editora</td>
                    <td><s:select path="editora.id" 
                              itemValue="id" itemLabel="nome" 
                            items="${listaEditora}" /> </td>                
                </tr>

            </table>
                <input type="submit" value="Enviar" />
        </s:form>
    </body>
</html>
