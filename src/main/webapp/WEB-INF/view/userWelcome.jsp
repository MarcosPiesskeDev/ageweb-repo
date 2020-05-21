<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset= UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8"/>
<link href="../../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
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
        <label class="navbar-brand" href="#" style="color: #57c7e8; width: 400px;">Olá ${users.nickName}! :D</label>
      </div>
      <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
        <ul class="nav-item-estaciopro" style="list-style: none;">
          <li>
            <a class="navbar-nav mr-auto nav-item-estaciopro" style="margin-left: 83%; margin-top: -62px;"  href="/contact/${id}">
              <button type="submit" class="btn btn-info">Registrar Contato</button>
            </a>
          </li>
          <li>
            <a class="navbar-nav mr-auto nav-item-estaciopro" style="margin-left: 95%; margin-top: -62px;"  href="/">
              <button type="submit" class="btn btn-info">Sair</button>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <br>
    <div class="container">
      <div class="col-md-6" style="margin:auto; margin-left: 23%;">
       <table class="table table-striped table-hover table-condensed table-bordered">
        <tr>
         <th><h3>Seus contatos: </h3></th>
        <tr>
        <br>
          <c:choose>
            <c:when test="${fn:length(users.contacts) gt 0}">
              <c:forEach var="con" items="${users.contacts}">
                <tr>
                  <td>
                  <ul style="list-style: none; margin-left: -1%;">
                    <h4><li>${con.name}</li></h4>
                  <br>
                  <a href="/contact/${con.id}/update">
                    <button type="submit" class="btn btn-primary">Alterar contato</button>
                  </a>
                   <a href="/contact/${con.id}/info">
                    <button type="submit" class="btn btn-primary">Informações do contato</button>
                  </a>
                  <a onclick="return confirm('Desejas realmente deletar este contato?')" href="/contact/${con.id}/delete">
                      <button type="submit" class="btn btn-danger">Excluir contato</button>
                  </a>
                </td>
              </tr>
              </c:forEach>
            </c:when>
            <c:otherwise>
              <tr>
                <td>
                  Você não possui nenhum contato registrado, <a href="/contact/${id}">clique aqui</a>  para registrar.
                </td>
              </tr>
            </c:otherwise>
          </c:choose>  
          
         </tr>
       </table>
      </div>

    </div>

    <script src="../../webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>

