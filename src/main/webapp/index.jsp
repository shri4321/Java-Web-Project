<!doctype html>
<html lang="en">
  <head>
    <title>Note Takers</title>
    <%@include file="allCssJS.jsp" %>
  </head>
  <body style="background-image:linear-gradient(gray,white,gray)">
    
  <div class="">
    	<%@include file="navbar.jsp" %>
    
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/Java.jpg" class="d-block w-100" alt="java">
          <div class="carousel-caption d-none d-md-block">
            <h5>First slide label</h5>
            <p>Some representative placeholder content for the first slide.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/java3.jpg" class="d-block w-100" alt="java">
          <div class="carousel-caption d-none d-md-block">
            <h5>Second slide label</h5>
            <p>Some representative placeholder content for the second slide.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/java4.jpg" class="d-block w-100" alt="java">
          <div class="carousel-caption d-none d-md-block">
            <h5>Third slide label</h5>
            <p>Some representative placeholder content for the third slide.</p>
          </div>
        </div>
      </div>
    </div>
     <!-- Footer-->
     <footer>
     <style>
     	<style>
     	footer{
     		height:600px;
     		background-color:white;
     	}
.fa {
 
}

.fa:hover {
    opacity: 0.7;
}
.fa-facebook{
color:#3B5998;
}
.fa-linkedin{
color:#007bb5;
}
.fa-instagram{
color:#dd4b39;
}

     </style>
     	<div >
     		<a href="#" class="fa fa-facebook"></a>
     		<a href="#" class="fa fa-linkedin"></a>
     		<a href="#" class="fa fa-instagram"></a>
     	</div>
     </footer>
  </div>
  </body>
</html>