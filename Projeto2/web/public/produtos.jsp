<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
<!-- start banner Area -->
<section class="banner-area relative" id="home">	
    <div class="overlay overlay-bg"></div>
    <div class="container">				
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Produtos				
                </h1>	
                <p class="text-white link-nav"><a href="index.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="dogs.html"> produtos</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->
<div class="section-top-border" style="padding: 20px;">
    <div class="row gallery-item">
        <c:forEach items="${lista}" var="obj">
            <div class="col-md-4" style="height: 250px;">
                <a href="ProdutoWS?acao=detalhe&id=${obj.id}">
                    <img src="../arquivos/${obj.endFoto}" style="max-height: 150px;width: auto; margin: auto;" alt="">
                </a>
                <a href="ProdutoWS?acao=detalhe&id=${obj.id}">
                <h4>${obj.nome}</h4>
                <h4>R$ ${obj.valor}</h4>
                </a>
            
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

