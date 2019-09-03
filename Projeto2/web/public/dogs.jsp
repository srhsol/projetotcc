<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
<!-- start banner Area -->
<section class="banner-area relative" id="home">	
    <div class="overlay overlay-bg"></div>
    <div class="container">				
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Cães				
                </h1>	
                <p class="text-white link-nav"><a href="index.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="dogs.html"> dogs</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->
<div class="section-top-border">
    <h3> Cães</h3>
    <div class="row gallery-item">
        <c:forEach items="${lista}" var="obj">
            <div class="col-md-4" style="height: 250px;">
                <a href="AnimalWS?acao=detalhe&id=${obj.id}">
                    <img src="../arquivos/${obj.endFoto1}" style="max-height: 150px;width: auto; margin: auto;" alt="">
                </a>
                <a href="AnimalWS?acao=detalhe&id=${obj.id}">
                <h4>${obj.nome}</h4>
                </a>
            <div class="product-action"> 
                <ul style="background-color: white;">
                    <li>
                        <a data-toggle="tooltip" title="Shopping" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                        <a data-toggle="tooltip" title="Quick view" href="#"><i class="fa fa-heart" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
            </div>
        </c:forEach>
    </div>
</div>              
<!-- Start cat-list Area -->

</section>
<!-- End cat-list Area -->


</body>
<%@include file="rodape.jsp" %>
</html>

