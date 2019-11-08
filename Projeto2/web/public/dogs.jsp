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
<form role="search" class="mt-10">
    <input type="text" name="filtro" placeholder="Search..." class="single-input-primary">
    <!-- <a href="AnimalWS"><i class="fa fa-search"></i></a> -->
</form>
<div class="single-element-widget mt-30">
    Tipo
    <div class="default-select" id="default-select">
        <select name="tipo">
            <option value="Tipo">Tipo</option>
            <option value="Gato">Gato</option>
            <option value="Cachorro">Cachorro</option>
        </select>
    </div>
</div>
<div class="single-element-widget mt-30">
    Idade
    <div class="default-select" id="default-select">
        <select name="idade">
            <option value="Idade">Idade</option>
            <option value="Filhote">Filhote</option>
            <option value="Jovem">Jovem</option>
            <option value="Adulto">Adulto</option>
        </select>
    </div>
</div>
<div class="single-element-widget mt-30">
    Gênero
    <div class="default-select" id="default-select">
        <select name="genero">
            <option value="Genero">Gênero</option>
            <option value="Fêmea">Fêmea</option>
            <option value="Macho">Macho</option>
        </select>
    </div>
</div>
<a href="AnimalWS" class="primary-btn text-uppercase">Filtrar</a>

<div class="section-top-border">
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
                            <a data-toggle="tooltip" title="Shopping" href="#"><i class="fa fa-eye" aria-hidden="true"></i></a>
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

