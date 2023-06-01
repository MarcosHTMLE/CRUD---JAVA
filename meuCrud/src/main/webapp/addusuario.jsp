<%@page import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
<%@page import="net.javaguides.registration.dao.conexao" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		conexao controle = new conexao();
		
		controle.adicionarUsuario(nome, email, senha);
		
	
		
	%>
	
	<meta http-equiv="Refresh" content="0; url='Crud.jsp'" />
</body>
</html>