<%-- 
    Document   : cadastroPessoa
    Created on : 10/03/2017, 18:30:41
    Author     : DesenvolvedorJava
--%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro Autor - Assessment</title>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid" style="padding-top: 1rem">
            <div class="row justify-content-md-center">
                <h2>Cadastro de Autor</h2>
            </div>
        </div>
        <hr>       
        <div class="row justify-content-md-center">
            <s:form action="cadastrarAutor.htm" method="POST" modelAttribute="autor">            
                <div class="form-group">
                    <label for="email">Nome do Autor:</label>
                    <td><s:input path="nome" placeholder="Digite o Nome" class="form-control" required="true"/></td>
                </div>
                <input type="submit" class="btn btn-primary" value="Enviar"/>
                <input type="reset" class="btn btn-secondary" value="Limpar"/>     
            </s:form>
        </div>
    </body>
</html>
