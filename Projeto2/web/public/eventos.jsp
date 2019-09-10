<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
<meta charset="utf-8"/>
<!-- start banner Area -->
<section class="banner-area relative" id="home">	
    <div class="overlay overlay-bg"></div>
    <div class="container">				
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Eventos				
                </h1>	
                <p class="text-white link-nav"><a href="index.jsp">Início </a>  
                    <span class="lnr lnr-arrow-right"></span>  <a href="#"> eventos</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->	


<!-- Start home-about Area -->

<div class="col-lg-8 home-about-right ">
    <h1>
        <p>Eventos
        </p>
    </h1>

    <div class="progress-table-wrap">
        <div class="progress-table">
            <div class="table-head">
                <div class="nome">Foto</div>
                <div class="nome">Nome</div>
                <div class="percentage">Local</div>
                <div class="data">Data</div>
            </div>
            <c:forEach items="${lista}" var="obj">
                <div class="table-row">
                    <div class="col-md-3">
                        <a href="../arquivos/${obj.endFoto}" class="img-pop-up"><div class="single-gallery-image" style="background: url(../arquivos/${obj.endFoto});"></div></a>
                    </div>
                    <div class="percentage">${obj.nome}</div>
                    <div class="percentage">${obj.local}</div>
                    <div class="data">${obj.data}</div>

                </div>
            </c:forEach>
        </div>
    </div>    
    <br>

</div>

<!-- End home-about Area -->
<br><br>
<!-- Start calltoaction Area -->



</body>
</html>
<%@include file="rodape.jsp" %>