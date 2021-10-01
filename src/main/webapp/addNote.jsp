<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="allCssJS.jsp" %>
<title>Insert title here</title>
</head>
<body style="background: linear-gradient(#020024,#090979,#00d4ff);">
	
    	<%@include file="navbar.jsp" %>
    	
   <div class="container w-50">

    <!-- forms add-->
    <form action="saveNoteServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1" class="form-label"style="color:white;font-family: cursive;">Note Title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp"style="font-family: system-ui;" placeholder="Enter Title" required>
  </div>
  <div class="form=group">
    <label class="form-label" style="color:white; font-family: cursive;">Note Contents</label>
    <textarea name="contents" class="form-control" cols="30" rows="10" required></textarea>
  </div>
  <div class="form-check p-2 text-center">
    <button type="submit" class="btn btn-primary" style="font-family:PT Serif;">Submit</button>
  </div>
  
</form>
    	
    </div>

</body>
</html>