<%@ page import="Servlet.*,java.util.*" language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>Registrar um Contato</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
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
            <label class="navbar-brand" href="#" style="color: #57c7e8; width: 400px;">Registrar um novo Contato:</label>
          </div>
          <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
            <ul class="nav-item-estaciopro" style="list-style: none;">
              <li>
                <a class="navbar-nav mr-auto nav-item-estaciopro" style="margin-left: 95%; margin-top: -62px;" href="/${users.id}/welcome">
                  <button class="btn btn-info">Voltar</button>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <div class="container">
        <form action='/contact' method='post'>
          <input type='hidden' name='user.id' class='form-control' value="${users.id}" required />
            <table class='table table-hover table-responsive table-bordered'>
                <tr>
                    <td><b>Nome:</b></td>
                    <td><input type='text' name='name' class='form-control'  required/></td>
                </tr>

                <tr>
                    <td><b>Sobrenome:</b></td>
                    <td><input type='text' name='lastName' class='form-control' required /></td>
                </tr>
                <tr>
                    <td><b>E-mail:</b></td>
                    <td><input type='text' name='email' class='form-control' required /></td>
                </tr>
                <tr>
                    <td><b>Telefone:</b></td>
                    <td><input type='text' name='telephone' class='form-control' required /></td>
                </tr>
            </table>
            <div style="text-align: center; margin: auto;">
              <button type="submit" class="btn btn-primary">Registrar Contato</button>
            </div>
            <b><c:out value="${warning}"></c:out></b>
        </form>
      </div>
    <script src="../webjars/jquery/1.11.0/jquery.min.js"></script>
    <script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

