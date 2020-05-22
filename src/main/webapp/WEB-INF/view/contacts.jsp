<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Lista de Contatos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
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
          <li><a class="nav-item-estaciopro" href="/contact/add">Adicionar Contato</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

    <br>
    <div class="container">
      <div class="col-md-6">
       <table class="table table-striped table-hover table-condensed table-bordered">
        <c:forEach var="contact" items="${c}">
         <ul style="list-style-type: none;">
          <li>Nome = ${contact.name}</li>
          <p></p>
          <li>Sobrenome = ${contact.lastName}</li>
          <p></p>
          <li>E-mail = ${contact.email}</li>
          <p></p>
          <li>Telefone = ${contact.telephone}</li>
         </ul>
         <a href="/contact/${contact.id}/update">
          <button type="submit" class="btn btn-primary">Change Contact</button>
        </a>
         <a href="/contact/${contact.id}/info">
          <button type="submit" class="btn btn-primary">Informações do contato</button>
        </a>
        <a onclick="return confirm('Desejas realmente deletar este contato?')" href="/contact/${contact.id}/delete">
            <button type="submit" class="btn btn-danger">Delete Contact</button>
        </a>
         <hr>
        </c:forEach>
       </table>
      </div>

    </div>
    <b><c:out value="${danger}"></c:out></b>
    <script src="webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>

