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
                <h3 class="mb-30">Cadastrar animais</h3>

                <form action="UploadWS" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="urldestino" value="AnimalWS">
                    <div class="mt-10">
                        <div class="form-group-file">
                            <label for="file">Foto 1</label>
                            <input type="file" name="txtFoto1" required class="form-control form-control-file">
                        </div>
                    </div>
                    <div class="mt-10">
                        <div class="form-group-file">
                            <label for="file">Foto 2</label>
                            <input type="file" name="txtFoto2" required class="form-control form-control-file">
                        </div>
                    </div>
                    <div class="mt-10">
                        <div class="form-group-file">
                            <label for="file">Foto 3</label>
                            <input type="file" name="txtFoto3" required class="form-control form-control-file">
                        </div>
                    </div>
                    <div class="mt-10">
                        <input type="text" name="txtNome" placeholder="Nome" class="single-input-primary">
                    </div>
                    <div class="mt-10">
                        <textarea class="single-input-primary" name="txtDescricao" placeholder="Descrição" ></textarea>
                    </div>
                    <div class="single-element-widget mt-30">
                        <div class="default-select" id="default-select">
                            Gênero
                            <select>
                                <option value="Fêmea">Fêmea</option>
                                <option value="Macho">Macho</option>
                            </select>
                        </div>
                    </div>
                    <div class="single-element-widget mt-30">
                        Idade
                        <div class="default-select" id="default-select">
                            <select>
                                <option value="Filhote">Filhote</option>
                                <option value="Jovem">Jovem</option>
                                <option value="Adulto">Adulto</option>
                            </select>
                        </div>
                    </div>
                    <div class="single-element-widget mt-30">
                        Tipo
                        <div class="default-select" id="default-select">
                            <select>
                                <option value="Gato">Gato</option>
                                <option value="Cachorro">Cachorro</option>
                            </select>
                        </div>
                    </div>

                    <br>
                    <button class="primary-btn text-uppercase">Salvar</button>
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