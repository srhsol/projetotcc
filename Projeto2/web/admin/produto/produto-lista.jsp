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
<form role="search" class="mt-10">
    <input type="text" name="filtro" placeholder="Search..." class="single-input-primary">
    <!-- <a href="AnimalWS"><i class="fa fa-search"></i></a> -->
</form>
<body>
    <div class="col-lg-8 home-about-right ">
        <h1>
            <p>Produtos
            </p>
        </h1>
        <div class="progress-table-wrap">
            <div class="progress-table">
                <div class="table-head">
                    <div class="serial">ID</div>
                    <div class="country">Foto</div>
                    <div class="country">Produto</div>
                    <div class="visit">Valor</div>
                    <div class="visit">Edita</div>
                    <div class="visit">Excluir</div>
                </div>

                <c:forEach items="${lista}" var="obj">
                    <div class="table-row">
                        <div class="serial">${obj.id}</div>
                        <div class="country"><img src="../../arquivos/${obj.endFoto}" height="42" width="42"></div>
                        <div class="country">${obj.nome}</div>
                        <div class="visit">${obj.valor}</div>
                        <div class="visit">
                            <a class="btn btn-primary btn-fab btn-icon btn-round" href="ProdutoWS?acao=edit&id=${obj.id}">
                                <i class="fa fa-edit"></i>
                            </a>
                        </div>
                        <div class="visit">
                            <a class="btn btn-primary btn-fab btn-icon btn-round" href="ProdutoWS?acao=del&id=${obj.id}">
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
        <a href="ProdutoWS?acao=add" class="primary-btn text-uppercase">Produtos</a>
        <a href="../EventoWS?acao=add" class="primary-btn text-uppercase">Eventos</a>

    </div>

    <!-- End home-about Area -->
    <br><br>

</body>



<%@include file="rodape.jsp" %>