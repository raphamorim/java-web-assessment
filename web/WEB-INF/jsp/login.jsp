<%-- 
    Document   : login
    Created on : 13/03/2017, 18:02:17
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Assessment Login</title>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid" style="margin-top: 1rem;">
            <div class="row justify-content-md-center">
                <h1>Login</h1>
            </div>
        </div>
        </hr>
        <c:if test="${msg != null}">
            <div class="container-fluid">
                <div class="row justify-content-md-center">
                    <div class="alert alert-success" role="alert">
                        ${msg}
                    </div>
                </div>
            </div>
        </c:if>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <s:form action="logar.htm" method="POST" modelAttribute="login">
                    <div class="form-group">
                        <label for="titulo">Login: </label>
                        <td><s:input path="login" placeholder="Digite o Login" class="form-control" required="true"/></td>
                    </div>

                    <div class="form-group">
                        <label for="titulo">Senha </label>
                        <td><s:input path="senha" placeholder="Digite a Senha" class="form-control" required="true"/></td>
                    </div>

                    <input type="submit" class="btn btn-primary" value="Enviar"/> 
                    <a href="entrarCadastroLogin.htm" class="btn btn-secondary">Quero me Cadastrar!</a>
                </s:form>
            </div>
        </div>
    </body>
</html>
