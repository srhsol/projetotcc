<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<html lang="PT-BR" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="codepixer">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set 
        
        <meta charset="UTF-8"> -->
        <!-- Site Title -->
        <title>Rabitos</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="../../css/linearicons.css">
        <link rel="stylesheet" href="../../css/font-awesome.min.css">
        <link rel="stylesheet" href="../../css/bootstrap.css">
        <link rel="stylesheet" href="../../css/magnific-popup.css">
        <link rel="stylesheet" href="../../css/nice-select.css">							
        <link rel="stylesheet" href="../../css/animate.min.css">
        <link rel="stylesheet" href="../../css/owl.carousel.css">
        <link rel="stylesheet" href="../../css/main.css">
    </head>
    <!-- start banner Area 
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
                    <br><br>
    
    
                </div>											
            </div>
        </div>
    </section> -->
    <!-- End banner Area -->
    <!-- Start callto-top Area -->
    <!-- CENTRALIZA O FORMULÁRIO -->
    <div class="container"> 

        <div class="row justify-content-center pt-20 pt-20 pb-20">
            <div class="col-lg-9 callto-top-left" style="margin:90px;"> 
                <div class="col-lg-8 col-md-8" style="margin:90px;"> 
                    <h3 class="mb-30">Login</h3>
                    <form action="LoginWS" method="post">
                        <div class="mt-10">
                            <input type="text" name="txtEmail" placeholder="Email" class="single-input-primary">
                        </div>
                        <div class="mt-10">
                            <input type="password" name="txtSenha" placeholder="Senha" class="single-input-primary">
                        </div>
                        <br>
                        <button class="primary-btn text-uppercase">Entrar</button>

                    </form>
                    <c:if test="${not empty msg}">
                        <div class="section-top-border">
                            <div class="row">
                                <div class="col-lg-12">
                                    <blockquote class="generic-blockquote">
                                        <strong>${msg}</strong>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                    </c:if>


                </div>
            </div>

        </div>
    </div>	

    <br>
</body>
</html>
