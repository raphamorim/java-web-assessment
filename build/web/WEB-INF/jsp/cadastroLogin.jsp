<%-- 
    Document   : login
    Created on : 13/03/2017, 18:02:17
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastro de Usuário</h1>
        </hr>
        <s:form action="cadastrarLogin.htm" method="POST" modelAttribute="login">
        <table>
            <tr>
                <td>Login:</td>
            </tr>
            <tr>
            <td><s:input path="login" /></td>
        </tr>
        <td>Senha:</td>
        </tr>
        <tr>
            <td><s:password path="senha" /></td>
        </tr>
    </table>
        <input type="submit" value="Enviar" />
        </s:form>
    </body>
</html>
