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
                    Bem vindo, ${sessionScope['admin'].nome} <br>
                    </h1>
                
                <p class="text-white sub-head">

                </p>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>

            </div>											
        </div>
    </div>
</section>
<!-- End banner Area -->


<!-- Start callto-top Area -->
<br>
<div class="container">
    <div class="row justify-content-between callto-top-wrap pt-40 pb-40">
        <div class="col-lg-8 callto-top-left">
            <h1>Cadastrar animal</h1>
        </div>
        <div class="col-lg-4 callto-top-right">
            <a href="../animal/AnimalWS?acao=add" class="primary-btn">Cadastrar</a>
        </div>							
    </div>
</div>	
<br>
<div class="container">
    <div class="row justify-content-between callto-top-wrap pt-40 pb-40">
        <div class="col-lg-8 callto-top-left">
            <h1>Cadastrar produto</h1>
        </div>
        <div class="col-lg-4 callto-top-right">
            <a href="../produto/ProdutoWS?acao=add" class="primary-btn">Cadastrar</a>
        </div>							
    </div>
</div>	
<br>
<div class="container">
    <div class="row justify-content-between callto-top-wrap pt-40 pb-40">
        <div class="col-lg-8 callto-top-left">
            <h1>Cadastrar eventos</h1>
        </div>
        <div class="col-lg-4 callto-top-right">
            <a href="../evento/EventoWS?acao=add" class="primary-btn">Cadastrar</a>
        </div>							
    </div>
</div>
<br>
<div class="container">
    <div class="row justify-content-between callto-top-wrap pt-40 pb-40">
        <div class="col-lg-8 callto-top-left">
            <h1>Solicitar doações</h1>
        </div>
        <div class="col-lg-4 callto-top-right">
            <a href="../doacao/DoacaoWS?acao=add" class="primary-btn">Solicitar</a>
        </div>							
    </div>
</div>
<br>


<br>
<br>
<!-- End footer Area -->	

<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="js/vendor/bootstrap.min.js"></script>			
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
<script src="js/easing.min.js"></script>			
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.min.js"></script>	
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>	
<script src="js/owl.carousel.min.js"></script>						
<script src="js/jquery.nice-select.min.js"></script>							
<script src="js/mail-script.js"></script>	
<script src="js/main.js"></script>	
</body>
</html>