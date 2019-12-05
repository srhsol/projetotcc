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
                <h3 class="mb-30">Cadastrar</h3>
                
                <form action="ConteudoWS" method="post">
                    <div class="mt-10">
                        <textarea class="single-input-primary" name="txtConteudo" placeholder="Conteudo" ></textarea>
                    </div>

                    <br>
                    <button class="primary-btn text-uppercase">Salvar</button>
                    <input type="button" class="primary-btn text-uppercase" value="Voltar" onClick="history.go(-1)">
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