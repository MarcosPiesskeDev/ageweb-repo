<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>Alterar um Usuário</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<c:url value="../../img/fav100px.png" var="favAIcon"/>
<link rel="icon" alt="icons8.com.br" href="${favAIcon}"/>
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
</head>

<style>
    .nav-item-estaciopro{
      color: white;
      padding-top: 15px;
      padding-bottom: 7px;
    }
    .nav-item-estaciopro:hover{
      color: white;
    }
  
</style>

<body>
    <nav class="navbar navbar-default nav-item-estaciopro" style="background-color: rgb(55, 59, 59); color: white;">
        <div class="container-fluid">
          <div class="navbar-header" style="color: white;">
            <label class="navbar-brand" href="#" style="color: white; width: 400px;">Registered Users:</label>
          </div>
          <div id="navbar" class="navbar-collapse collapse" style="color: white;">
            <ul class="nav-item-estaciopro" style="list-style: none;">
              <li><a class="nav-item-estaciopro" style="padding-left: 71%;" href="/user">Voltar</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    <form action='/user/update' method='post'>
        <input type='hidden' name='id' class='form-control' value="${users.id}" required/>
        <table class='table table-hover table-responsive table-bordered'>
            <tr>
                <td><b>Nome Usuário:</b></td>
                <td><input type='text' name='nickName' class='form-control' value="${users.nickName}"  required/></td>
            </tr>

            <tr>
                <td><b>Senha:</b></td>
                <td><input type='text' name='password' class='form-control' required /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit" class="btn btn-primary">Register</button>
                </td>
            </tr>

        </table>
        <b><c:out value="${warning}"></c:out></b>
    </form>
    <script src="../../webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>


