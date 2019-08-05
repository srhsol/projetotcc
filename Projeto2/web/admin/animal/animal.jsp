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
<!-- CENTRALIZA O FORMUL�RIO -->
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
                        <textarea class="single-input-primary" name="txtDescricao" placeholder="Descri��o" ></textarea>
                    </div>
                    <div class="single-element-widget mt-30">
                        <label class="mt-10">G�nero</label>
                        <div class="default-select" id="default-select">
                            <select name="txtGenero">
                                <c:forEach items="${genero}" var="obj">
                                <option value="${obj.id}">${obj.genero}</option>
                            </c:forEach>
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