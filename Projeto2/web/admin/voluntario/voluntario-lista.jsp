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
                    Sobre n�s				
                </h1>	
                <p class="text-white link-nav"><a href="index.jsp">In�cio </a>  
                    <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> Sobre n�s</a></p>
            </div>	
        </div>
    </div>
</section>
<!-- End banner Area -->	


<!-- Start home-about Area -->
<form role="search" class="mt-10">
    <input type="text" name="filtro" placeholder="Search..." class="single-input-primary">
    <!-- <a href="AnimalWS"><i class="fa fa-search"></i></a> -->
</form>
<body>
    <div class="col-lg-8 home-about-right ">
        <h1>
            <p>Voluntarios
            </p>
        </h1>
        <div class="progress-table-wrap">
            <div class="progress-table">
                <div class="table-head">
                    <div class="serial">ID</div>
                    <div class="country">Nome</div>
                    <div class="country">Email</div>
                    <div class="country">Endere�o</div>
                    <div class="visit">Edita</div>
                    <div class="visit">Excluir</div>
                </div>

                <c:forEach items="${lista}" var="obj">
                    <div class="table-row">
                        <div class="serial">${obj.id}</div>
                        <div class="country">${obj.nome}</div>
                        <div class="country">${obj.email}</div>
                        <div class="country">${obj.endereco}</div>
                        <div class="visit">
                            <a class="btn btn-primary btn-fab btn-icon btn-round" href="VoluntarioWS?acao=edit&id=${obj.id}">
                                <i class="fa fa-edit"></i>
                            </a>
                        </div>
                        <div class="visit">
                            <a class="btn btn-primary btn-fab btn-icon btn-round" href="VoluntarioWS?acao=del&id=${obj.id}">
                                <i class="fa fa-close"></i>
                            </a>
                        </div> 
                    </div>
                </c:forEach>
            </div>
        </div>

        <br>
        <h4>Adicionar outros</h4>
        <br>
        <a href="VoluntarioWS?acao=add" class="primary-btn text-uppercase">Voluntarios</a>

    </div>

    <!-- End home-about Area -->
    <br><br>

</body>



<%@include file="rodape.jsp" %>