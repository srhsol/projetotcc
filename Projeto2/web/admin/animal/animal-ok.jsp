<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
<!-- start banner Area -->
<section class="banner-area relative" id="home">	
    <div class="overlay overlay-bg"></div>
    <div class="container">				
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Sobre nós				
                </h1>	
                <p class="text-white link-nav"><a href="index.jsp">Início </a>  
                    <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> Sobre nós</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->	


<!-- Start home-about Area -->

<div class="col-lg-8 home-about-right ">
    <h1>
        <p>Animal
        </p>
    </h1>

    <div class="card-footer">
        <c:if test = "${not empty msg}">
            ${msg}
        </c:if>
    </div>
    <br>
    <h4>Listar todos</h4>
    <br>
    <a href="AnimalWS?acao=list" class="primary-btn text-uppercase">Animais</a>

</div>

<!-- End home-about Area -->
<br><br>



</body>
</html>
<%@include file="rodape.jsp" %>
