<%-- 
    Document   : cadastroPessoa
    Created on : 10/03/2017, 18:30:41
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <h2>Cadastro de pessoa</h2>
        <hr>       
        <s:form action="cadastrarPessoa.htm" method="POST" modelAttribute="pessoa">            
            <table>
                <tr>
                    <td>Nome: </td>
                    <td><s:input path="nome"/></td>
                </tr>
                <tr>
                    <td>E-mail: </td>
                    <td><s:input path="email"/></td>
                </tr>
                <tr>
                    <td>Cidade: </td>
                    <td><s:input path="cidade"/></td>
                </tr>
            </table>
                <input type="submit" value="Enviar"/>
                <input type="reset" value="Limpar"/>            
        </s:form>
    </body>
</html>
