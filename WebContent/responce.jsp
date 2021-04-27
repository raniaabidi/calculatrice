<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="ISO-8859-1">
<title>calculatrice</title>
</head>
<body>
<%
int op1 = Integer.parseInt(request.getParameter("op1"));
int op2 = Integer.parseInt(request.getParameter("op2"));
String operation = request.getParameter("operation");
%>
<%!
float leresultat;
%>
<h2>réponce</h2>
<%
if (operation.equals("addition")){
	leresultat=op1+op2;
}
if (operation.equals("soustraction")){
	leresultat=op1-op2;
}
if (operation.equals("multiplication")){
	leresultat=op1*op2;
}
if (operation.equals("division")){
	if(op2 ==0){
		%>
		<jsp:forward page="erreur.html"></jsp:forward>
		<%
	}else 
	        {leresultat=op1/op2;}
     }
      %>
<%= leresultat  %>

</body>
</html>