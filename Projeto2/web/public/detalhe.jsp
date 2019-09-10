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
<!-- Single pro tab start-->
<div class="section-top-border">
    <div class="row gallery-item">
        <div class="col-md-4">
            <div id="myTabContent1" class="tab-content">
                <div class="col-md-4" style="height: 500px;">
                    <img style="height: 260px;" src="../arquivos/${obj.endFoto1}" alt="" />

                    <div style="width: 100%;" class="product-tab-list tab-pane fade active in" id="single-tab1">
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto1}" alt="" />
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto2}" alt="" />
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto3}" alt="" />
                    </div>
                </div>
            </div>
            <ul id="single-product-tab">
                <li class="active">
                    <a style="width: 100px; height: 100px;" href="#single-tab1">
                        <img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto1}" alt="" />
                        <img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto2}" alt="" />
                      <img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto3}" alt="" />
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
            <div class="single-product-details res-pro-tb">
                <h1>${obj.nome}</h1>
                <br>
                <h3>${obj.idade} | ${obj.genero}</h3>
                <br><br>
                <div class="single-pro-cn">
                    <h4>Sobre</h4>
                    <p>${obj.descricao}</p>
                </div>
                <div class="clear"></div>
                <br>
                <form action="CarrinhoWS" method="POST">
                    <div class="col-lg-4 callto-top-right">
                        <a href="#" class="primary-btn">Quero adotar!</a>
                    </div>
                    <c:if test = "${not empty msg}">
                        <p>${msg}</p> 
                    </c:if>
                </form>
            </div>
            <br>
        </div>

        <div class="clear">
        </div>
    </div>
</div>
</div>
<!-- Single pro tab End-->
<%@include file="rodape.jsp" %>