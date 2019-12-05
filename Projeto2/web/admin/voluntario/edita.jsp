<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="cabecalho.jsp" %>
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
                <h3 class="mb-30">Atualizar voluntário</h3>

                <form action="VoluntarioWS" method="post" >

                    <div class="mt-10">
                        <input type="text" name="txtId" placeholder="ID" value="${obj.id}" class="single-input-primary">
                    </div>

                    <div class="mt-10">
                        <input type="text" name="txtNome" placeholder="Nome" value="${obj.nome}" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <input type="text" name="txtEmail" placeholder="Email" value="${obj.email}" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <input type="text" name="txtEndereco" placeholder="Endereço" value="${obj.endereco}" class="single-input-primary">
                    </div>

                    <br>
                    <button class="btn btn-primary btn-round text-center" type="submit">
                        <i class="tim-icons icon-cloud-upload-94"></i> Salvar
                    </button>	
                    <input type="button" class="primary-btn text-uppercase" value="Voltar" onClick="history.go(-1)">

                </form>
                <br>
                <h4>Listar todos</h4>
                <br>
                <a href="VoluntarioWS?acao=list" class="primary-btn text-uppercase">Voluntários</a>


            </div>
        </div>

    </div>
</div>	

<br>
</body>
</html>

<%@include file="rodape.jsp" %>