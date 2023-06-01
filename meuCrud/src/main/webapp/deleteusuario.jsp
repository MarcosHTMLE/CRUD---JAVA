<%@page import="net.javaguides.registration.dao.conexao" %>
<jsp:useBean id="user" class="net.javaguides.registration.model.usuario"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		
		conexao controle = new conexao();

		controle.deletarUsuario(user);

		
	
		
	%>
	
	<meta http-equiv="Refresh" content="0; url='Crud.jsp'" />
</body>
</html>