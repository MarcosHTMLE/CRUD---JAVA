

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CRIAR</title>
	<link rel="stylesheet" type="text/css" href="index.css" media="screen" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
		<div class="col-md-12 menu">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
				<a class="nav-link active" aria-current="page" href="Crud.jsp">CRUD</a>
			  </li>
			</ul>
		</div>
		<div class="col-md-6 inputs">
			<form action="addusuario.jsp" method = "post">
				<div class="form-floating mb-3">
				  <input class="form-control" id="floatingInput" placeholder="name@example.com" name="nome">
				  <label for="floatingInput">Nome</label>
				</div>
				<div class="form-floating mb-3">
				  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email">
				  <label for="floatingInp ut">Email</label>
				</div>
				<div class="form-floating">
				  <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="senha">
				  <label for="floatingPassword" >Senha</label>
				</div>
				<div class="botao">		
					<input class="btn btn-primary" type="submit" value="Criar">
				</div>
			</form>	
		</div>		
	</body>
</html>