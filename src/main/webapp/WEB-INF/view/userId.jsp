<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset= UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
<title>Usuário Encontrado</title>
<meta charset="utf-8"/>
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
  <nav class="navbar navbar-default nav-item-estaciopro" style="background-color: rgb(55, 59, 59); color: #57c7e8;">
    <div class="container-fluid">
      <div class="navbar-header" style="color: #57c7e8;">
        <label class="navbar-brand" href="#" style="color: #57c7e8; width: 400px;">Usuário ${users.nickName}</label>
      </div>
      <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
        <ul class="nav-item-estaciopro" style="list-style: none;">
          <li>
            <a class="nav-item-estaciopro" style="margin-left: 67%;" href="/user">
              <button type="submit" class="btn btn-info">Voltar</button>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <br>
    <div class="container">
      <div class="col-md-6" style="margin-left: 23%;">
       <table class="table table-striped table-hover table-condensed table-bordered">
        <tr>
          <th>Nome usuário: </th>
          <th>Senha: </th>      
          <th>Contatos Registrados: </th>
        </tr>
        <br>
          <td>${users.nickName}</td>
          <td>${users.password}</td> 
          <c:choose>
            <c:when test="${fn:length(users.contacts) gt 0}">
              <td>${fn:length(users.contacts)}</td>
            </c:when>
            <c:otherwise>
              <td>Este usuário não possui nenhum contato registrado</td>
            </c:otherwise>
          </c:choose>  
       </table>
      </div>

    </div>

    <script src="../../webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>

