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
                <h3 class="mb-30">Cadastrar eventos</h3>

                <form action="UploadWS" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="urldestino" value="EventoWS">

                    <div class="mt-10">
                        <div class="form-group-file">
                            <label for="file">Foto do evento</label>
                            <input type="file" name="txtFoto" required class="form-control form-control-file">
                        </div>
                    </div>
                    <div class="mt-10">
                        <input type="text" name="txtNome" placeholder="Nome" class="single-input-primary">
                    </div>

                    <div class="mt-10">
                        <textarea class="single-input-primary" name="txtDescricao" placeholder="Descrição" ></textarea>
                    </div>

                    <div class="mt-10">
                        <input type="text" name="txtLocal" placeholder="Local" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <div class="form-group">
                            <label>Data do evento </label>
                            <input type="date" name="txtData" required class="form-control" >
                        </div>
                    </div>
                    <br>
                    <button class="primary-btn text-uppercase">Salvar</button>
                    <a href="EventoWS?acao=list" class="primary-btn text-uppercase">Listar</a>
                    <input type="button" class="primary-btn text-uppercase" value="Voltar" onClick="history.go(-1)">
                </form>

            </div>
        </div>

    </div>
</div>	

<br>
</body>
</html>

<%@include file="rodape.jsp" %>