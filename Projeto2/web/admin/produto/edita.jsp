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
                <h3 class="mb-30">Atualizar produtos</h3>
                
                <form action="UploadWS" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="urldestino" value="ProdutoWS">
                    
                    <div class="mt-10">
                        <input type="text" name="txtId" placeholder="ID" value="${obj.id}" class="single-input-primary">
                    </div>
                    <!-- 
                    <div class="mt-10"
                         <input type="file" name="txtFoto" required class="form-control form-control-file" value="./../../arquivos/${obj.endFoto}">
                    </div>
                    -->
                    <div class="mt-10">
                        <input type="text" name="txtNome" placeholder="Produto" value="${obj.nome}" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <input type="number" step="0.01" name="txtValor" placeholder="Valor" value="${obj.valor}" class="single-input-primary">
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
                <a href="ProdutoWS?acao=list" class="primary-btn text-uppercase">Produtos</a>
                <a href="EventoWS?acao=list" class="primary-btn text-uppercase">Eventos</a>


            </div>
        </div>

    </div>
</div>	

<br>
</body>
</html>

<%@include file="rodape.jsp" %>