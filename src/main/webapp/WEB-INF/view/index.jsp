<%@ page import = "Servlet.*, java.util.*" language = "java" contentType = "text/html; charset=UTF-8"
   pageEncoding = "UTF-8"  %>

<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>
  <title>Agenda de Contatos</title>
  <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <c:url value="/img/fav100px.png" var="favAIcon"/>
  <link rel="icon" alt="icons8.com.br" href="${favAIcon}"/>
  <c:url value="/css/main.css" var="jstlCss" />
  <link href="${jstlCss}" rel="stylesheet" />

</head>

<style>
  .nav-item-estaciopro {
    color: white;
    padding-top: 15px;
    padding-bottom: 7px;
  }

  .nav-item-estaciopro:hover {
    color: white;
  }
</style>

<body>

  <nav class="navbar navbar-default nav-item-estaciopro" style="background-color: rgb(55, 59, 59); color: #57c7e8;">
    <div class="container-fluid">
      <div class="navbar-header" style="color: #57c7e8;">
        <label class="navbar-brand" href="#" style="color: #57c7e8; width: 450px;">Bem vindo à minha agenda de contatos :D</label>
      </div>
      <div id="navbar" class="navbar-collapse collapse" style="color: #57c7e8;">
        <ul class="nav-item-estaciopro" style="list-style: none;">
          <li>
            <a class="navbar-nav mr-auto nav-item-estaciopro" style="margin-left: 91%; color: #57c7e8; margin-top: -3.5%;" href="/user/add">
              <button type="submit" class="btn btn-info">Registrar</button>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <header>
    <div style="margin-left: 0.7%;">
      <h3>Faça login para acessar a sua agenda :)</h3>
    </div>
    </header>
  <br>
  <br>
  <div class="container">
    <div class="starter-template" style="margin: auto; border: 2px #787a92 solid; border-radius: 8px; padding: 40px; width: 45%;">
      <form action='/login' method='post'>
      
            <b>Usuário:</b>
            <input type='text' name='nickName' class='form-control' required />
            <p></p>

            <b>Senha:</b>
            <input type='text' name='password' class='form-control' required />
            <a class="nav-item-estaciopro" style="color: #2667b1;" href="/user/changePass">Esqueci minha senha</a>
            <p></p>
            <div style="text-align: center; width: 100%;">
              <button type="submit" class="btn btn-primary" style="margin: auto">Entrar</button>
            </div>
        <b>
          <c:out value="${warning}"></c:out>
        </b>
      </form>
    </div>
  </div>
  </div>

  <script src="webjars/jquery/1.11.0/jquery.min.js"></script>
  <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>