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
                <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="dogs.html"> dogs</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->

<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
    <div class="single-new-trend mg-t-30" style="height: 300px;">
        <a href="AnimalWS?acao=detalhe&id=${obj.id}">
            <img src="../arquivos/${obj.endFoto1}" style="max-height: 250px;width: auto; margin: auto;" alt="">
        </a>
        <div class="overlay-content">
            <a href="AnimalWS?acao=detalhe&id=${obj.id}">
                <h2>${obj.nome}</h2>
            </a>
            <!--<a href="#" class="btn-small">Now</a>-->
            <div class="product-action">
                <ul style="background-color: white;">
                    <li>
                        <a data-toggle="tooltip" title="Shopping" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <a data-toggle="tooltip" title="Quick view" href="#"><i class="fa fa-heart" aria-hidden="true"></i></a>
                    </li>
                </ul>
            </div>
            <a href="AnimalWS?acao=detalhe&id=${obj.id}">
                <h4>${obj.nome}</h4>
            </a>
            <div class="pro-rating">
                <i class="fa fa-star color"></i>
                <i class="fa fa-star color"></i>
                <i class="fa fa-star color"></i>
                <i class="fa fa-star color"></i>
                <i class="fa fa-star"></i>
            </div>
        </div>
    </div>
</div>


<!-- Start cat-list Area -->
<c:forEach items="${lista}" var="obj">
    <section class="cat-list-area section-gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single-cat-list">
                        <img src="arquivos/${obj.endFoto1}" alt="" class="img-fluid">
                        <div class="overlay">
                            <div class="text">${obj.nome}</div>
                        </div>
                        <div class="product-action">
                            <ul style="background-color: white;">
                                <li>
                                    <a data-toggle="tooltip" title="Shopping" href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                </li>
                                <li>
                                    <a data-toggle="tooltip" title="Quick view" href="#"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </div>
                        <a href="AnimalWS?acao=detalhe&id=${obj.id}">
                            <h4>${obj.nome}</h4>
                        </a>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>	
</section>
<!-- End cat-list Area -->


</body>
</html>

<%@include file="rodape.jsp" %>