<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset= UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Contact Found</title>
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
        <label class="navbar-brand" href="#" style="color: #57c7e8; width: 400px;">Contato ${contact.name}:</label>
      </div>
      <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
        <ul class="nav-item-estaciopro" style="list-style: none;">
          <li>
            <a class="nav-item-estaciopro" style="margin-left: 67%;" href="/${contact.user.id}/welcome">
              <button type="submit" class="btn btn-info">Voltar</button>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
    <br>
    <div class="container">
      <div class="col-md-6" style="margin:auto; margin-left: 25%;">
       <table class="table table-striped table-hover table-condensed table-bordered">
        <tr>
          <th>Informações:</th>
        </tr>
        <tr>
          <td>
            <ul style="list-style-type: none; padding-right: 45px;">
              <p></p>
              <li>Nome: <b>${contact.name}</b></li>
              <hr>
              <li>Sobrenome: <b>${contact.lastName}</b></li>
              <hr>
              <li>E-mail: <b>${contact.email}</b></li>
              <hr>
              <li>Telefone: <b>${contact.telephone}</b></li>
            </ul>
          </td>
        </tr>
       </table>
      </div>
    </div>
    <script src="../../webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>

