

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRUD</title>
	<link rel="stylesheet" type="text/css" href="index.css" media="screen" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	



	<ul class="nav nav-tabs">
	  <li class="nav-item">
		<a class="nav-link active" aria-current="page" href="Crud.jsp">CRUD</a>
	  </li>
	  <li class="nav-item">
		<a class="nav-link" href="Criar.jsp">Criar</a>
	  </li>
	</ul>
	<div class="col-md-8 tabela">
	
		<%@page import= "net.javaguides.registration.dao.*, net.javaguides.registration.model.*, java.util.*" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<%
		List<usuario> lista = conexao.getAllusuarios();
		request.setAttribute("pessoa", lista );
	%>
	
		<table class="table">
		  <thead>
			<tr>
			  <th scope="col">Id</th>
			  <th scope="col">nome</th>
			  <th scope="col">email</th>
			  <th scope="col">senha</th>
			</tr>
		  </thead>
		  <tbody class="table-group-divider">
		  
		  	<c:forEach items="${pessoa}" var="usuario">
			<tr>
			  <th scope="row">${usuario.getId()}</th>
			  <td>${usuario.getNome()}</td>
			  <td>${usuario.getEmail()}</td>
			  <td>${usuario.getSenha()}</td>
			  <td><a href="Editar.jsp?id=${usuario.getId()}"><button  type="button" class="btn btn-primary btn-sm">Editar</button></a> <a href="deleteusuario.jsp?id=${usuario.getId()}"><button type="button" class="btn btn-primary btn-sm">Remover</button></a> </td>
			</tr>
			</c:forEach>
		  </tbody>
		</table>
	</div>
  </body>
</html>