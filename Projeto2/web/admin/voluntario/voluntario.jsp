<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
<meta charset="utf-8"/>
<!-- start banner Area -->
<section class="banner-area relative" id="home">
    <div class="container">
        <div class="overlay overlay-bg"></div>
        <div class="row fullscreen d-flex align-items-center justify-content-start">
            <div class="banner-content col-lg-8 col-md-12">
                <br><br><br><br><br><br><br>

                <h1 class="text-uppercase">
                    <br>
                </h1>
                <p class="text-white sub-head">

                </p>    
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br><br>


            </div>											
        </div>
    </div>
</section>
<!-- End banner Area -->
<!-- Start callto-top Area -->
<!-- CENTRALIZA O FORMULÁRIO -->
<div class="container"> 

    <div class="row justify-content-between pt-20 pt-20 pb-20">

        <div class="col-lg-8 callto-top-left">
            <div class="col-lg-8 col-md-8">
                <h3 class="mb-30">Cadastre-se!</h3>

                <form action="VoluntarioWS" method="post" >

                    <div class="mt-10">
                        <input type="text" name="txtNome" placeholder="Nome" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <input type="text" name="txtEmail" placeholder="Email" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <input type="text" name="txtEndereco" placeholder="Endereço" class="single-input-primary">
                    </div>

                    <br>
                    <button class="primary-btn text-uppercase">Cadastrar</button>
                    <a href="../voluntario/VoluntarioWS?acao=list" class="primary-btn text-uppercase">Listar</a>
                </form>

                <div class="card-footer">
                    <c:if test = "${not empty msg}">
                        <div class="alert alert-primary alert-dismissible fade show" role="alert">
                            ${msg}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <i class="tim-icons icon-simple-remove"></i>
                            </button>
                        </div>
                    </c:if>
                </div>


            </div>
        </div>

    </div>
</div>	

<br>
</body>
</html>

<%@include file="rodape.jsp" %>