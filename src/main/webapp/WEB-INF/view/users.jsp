<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>User List</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<c:url value="/css/main.css" var="cssprog" />
<link href="${cssprog}" rel="stylesheet" />

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
  <script>
    </script>
  <nav class="navbar navbar-default nav-item-estaciopro" style="background-color: rgb(55, 59, 59); color: #57c7e8;">
    <div class="container-fluid">
      <div class="navbar-header" style="color: #57c7e8;">
        <label class="navbar-brand" href="#" style="color: #57c7e8; width: 400px;">Usuários Registrados:</label>
      </div>
      <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
        <ul class="nav-item-estaciopro" style="list-style: none;">
          <li>
            <a class="navbar-nav mr-auto nav-item-estaciopro" style="margin-left: 83%; margin-top: -62px;"  href="/user/add">
              <button type="submit" class="btn btn-info">Registrar usuário</button>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

    <br>
    <div class="container">
      <div class="col-md-6" style="margin-left: 23%;">
       <table class="table table-hover table-bordered">
        <tr>
         <th>Nickname</th>
        </tr>
        <br>
        <c:forEach var="user" items="${u}">
         <tr>
          <td>${user.nickName}</td>
          <td>
            <a href="/user/${user.id}/update">
              <button type="submit" class="btn btn-primary">Alterar Usuário</button>
           </a>
           <a href="/user/${user.id}/info">
            <button type="submit" class="btn btn-primary">Informações adicionais</button>
          </a>
           <a onclick="return confirm('Deseja realmente deletar permanentemente este usuário?')" href='/user/${user.id}/delete'>
            <button type="submit" class="btn btn-danger">Deletar usuário</button>
          </a>
          </td>
          </tr>
         
        </c:forEach>
       </table>
      </div>
    </div>

    
    <b><c:out value="${warning}"></c:out></b>
    <script src="webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>

