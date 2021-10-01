<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.factoryP"%>
<%@page import="com.noteT.noteStudent"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="allCssJS.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:linear-gradient(gray,black,gray)">
<%@include file="navbar.jsp" %>

<div class="container row p-3 m-5">
	<div class=col-12>
		<%
	Session s= factoryP.getFactory().openSession();
	Query q = s.createQuery("from noteStudent");
	List<noteStudent> list=q.list();
	
	for(noteStudent nS:list){
		%>
<div class="card m-2">
  <img class="card-img-top m-3" style="max-width:100px;" src="img/essay.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%= nS.getTitle() %></h5>
    <p class="card-text"><%= nS.getContent() %> </p>
     <p style="font-family:bold;"><%= nS.getAddedDate() %></p>
    <a href="DeleteServlet?note_id=<%= nS.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id= <%= nS.getId() %> " class="btn btn-primary">UpDate</a>

  </div>
</div>
		
	<%
	}
	
	s.close();
		%>
	
	</div>
</div>


</body>
</html>