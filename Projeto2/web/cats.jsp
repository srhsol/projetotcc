<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
<!-- start banner Area -->
<section class="banner-area relative" id="home">	
    <div class="overlay overlay-bg"></div>
    <div class="container">				
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Cats				
                </h1>	
                <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="cats.html"> Cats</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->	

<!-- Start cat-list Area -->
<c:forEach items="${lista}" var="obj">
    <div class="table-row">
        <div class="serial">${obj.id}</div>
        <div class="country"><img src="../../arquivos/${obj.endFoto}" height="42" width="42"></div>
        <div class="nome">${obj.nome}</div>
        <div class="percentage">${obj.local}</div>
        <div class="data">${obj.data}</div>
        <div class="visit">
            <a class="btn btn-warning" href="EventoWS?acao=edit&id=${obj.id}">
                <i class="fa fa-edit"></i>
            </a>
        </div>
        <div class="visit">
            <a class="btn btn-warning" href="EventoWS?acao=del&id=${obj.id}">
                <i class="fa fa-close"></i>
            </a>
        </div> 
    </div>
</c:forEach>
<!-- End cat-list Area -->

</body>
</html>
<%@include file="rodape.jsp" %>