<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCssJS.jsp" %>
</head>
<body>
	<div class="container">
    	<%@include file="navbar.jsp" %>
    	
    	 <h1>Please Fill Your Dtails</h1>

    <!-- forms add-->
    <form action="saveNoteServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label">Note title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" required>
  </div>
  <div class="form=group">
    <label class="form-label">Note Contents</label>
    <textarea name="contents" class="form-control" cols="30" rows="10" required></textarea>
  </div>
  <div class="form-check p-2 text-center">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  
</form>
    	
    </div>

</body>
</html>