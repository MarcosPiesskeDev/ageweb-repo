<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Registrar um Usuário</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<c:url value="/css/main.css" var="estacioProCss" />
<link href="${estacioProCss}" rel="stylesheet" />
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
            <label class="navbar-brand" href="#" style="color: #57c7e8; width: 400px;">Registrar novo usuário:</label>
          </div>
          <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
            <ul class="nav-item-estaciopro" style="list-style: none;">
              <li>
                <a class="nav-item-estaciopro" style="margin-left: 67%;"href="/">
                  <button type="submit" class="btn btn-info">Voltar</button>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    <div class="container">
      <form action='/user/add' method='post'>

          <table class='table table-hover table-responsive table-bordered'>

              <tr>
                  <td><b>Nome Usuário:</b></td>
                  <td><input type='text' name='nickName' class='form-control'  required/></td>
              </tr>

              <tr>
                  <td><b>Senha:</b></td>
                  <td><input type='text' name='password' class='form-control' required /></td>
              </tr>
          </table>
          <div style="text-align: center; margin: auto;">
            <button type="submit" class="btn btn-primary">Registrar</button>
          </div>
          <b><c:out value="${warning}"></c:out></b>
      </form>
    </div>
    <script src="../webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>


