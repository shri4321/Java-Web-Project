<%@page import="com.helper.*,org.hibernate.*,com.noteT.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="allCssJS.jsp" %>
<meta charset="ISO-8859-1">
<title>update the details</title>
</head>
<body>
<div class="container">
<%@include file="navbar.jsp" %>
<h1>This is edit page</h1>
	<%
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s = factoryP.getFactory().openSession();
		noteStudent s1=(noteStudent)s.get(noteStudent.class, noteId);
	%>
	<!-- forms add-->
    <form action="updateServlet" method="post">
    <input value="<%=s1.getId() %>" name="noteId" type="hidden" />
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Note title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" value="<%= s1.getTitle() %>" required>
  </div>
  <div class="form=group">
    <label class="form-label">Note Contents</label>
    <textarea name="contents" class="form-control" cols="30" rows="10" required><%= s1.getContent()%></textarea>
  </div>
  <div class="form-check p-2 text-center">
    <button type="submit" class="btn btn-success">Save</button>
  </div>
  
</form>
</div>

</body>
</html>