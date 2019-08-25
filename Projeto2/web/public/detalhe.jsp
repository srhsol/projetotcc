<%@include file="cabecalho.jsp" %>
<div class="breadcome-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcome-list single-page-breadcome">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <div class="breadcome-heading">
                                <form role="search" class="">
                                    <input type="text" placeholder="Search..." class="form-control">
                                    <a href=""><i class="fa fa-search"></i></a>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                            <ul class="breadcome-menu">
                                <li><a href="#">Livro</a> <span class="bread-slash">/</span>
                                </li>
                                <li><span class="bread-blod">Detalhes</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- Single pro tab start-->
<div class="single-product-tab-area mg-t-15 mg-b-30">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                <div id="myTabContent1" class="tab-content">
                    <div style="width: 100%;" class="product-tab-list tab-pane fade active in" id="single-tab1">
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto1}" alt="" />
                    </div>
                    <div style="width: 100%;" class="product-tab-list tab-pane fade" id="single-tab2">
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto2}" alt="" />
                    </div>
                    <div style="width: 100%;" class="product-tab-list tab-pane fade" id="single-tab3">
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto3}" alt="" />
                    </div>
                    <div style="width: 100%;" class="product-tab-list tab-pane fade" id="single-tab4">
                        <img style="height: 400px;" src="../arquivos/${obj.endFoto4}" alt="" />
                    </div>

                </div>
                <ul id="single-product-tab">
                    <li class="active">
                        <a style="width: 100px; height: 100px;" href="#single-tab1"><img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto1}" alt="" /></a>
                    </li>
                    <li>
                        <a style="width: 100px;  height: 100px;" href="#single-tab2"><img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto2}" alt="" /></a>
                    </li>
                    <li>
                        <a style="width: 100px;  height: 100px;" href="#single-tab3"><img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto3}" alt="" /></a>
                    </li>
                    <li>
                        <a style="width: 100px;  height: 100px;" href="#single-tab4"><img style="max-width: 100px; max-height: 100px;" src="../arquivos/${obj.endFoto4}" alt="" /></a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
                <div class="single-product-details res-pro-tb">
                    <h1>${obj.titulo}</h1>
                    <span class="single-pro-star"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span>
                    <div class="single-pro-price">
                        <span class="single-regular">${obj.valor}</span>
                    </div>

                    <div class="single-pro-cn">
                        <h3>Sobre</h3>
                        <p>${obj.sinopse}</p>
                    </div>
                    <div class="clear"></div>

                    <form action="CarrinhoWS" method="POST">
                        <input type="hidden" value="${obj.id}" name="txtId">
                        quantidade: <input required min="1" value="1" type="number" name="txtQtd">
                        <button type="submit" href="#">+ Carrinho</button>
                        <c:if test = "${not empty msg}">
                    <p>${msg}</p> 
                </c:if>
                    </form>
                </div>
                        <br>
            </div>
                        
            <div class="clear">
            </div>
        </div>
    </div>
</div>
</div>
</div>
<!-- Single pro tab End-->
<!-- Single pro tab review Start-->
<div class="single-pro-review-area mt-t-30 mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <ul id="myTab" class="tab-review-design">
                    <li class="active"><a href="#description">description</a></li>
                    <li><a href="#reviews"><span><i class="fa fa-star"></i><i class="fa fa-star"></i></span> reviews (1) <span><i class="fa fa-star"></i><i class="fa fa-star"></i></span></a></li>
                    <li><a href="#INFORMATION">INFORMATION</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="product-tab-list product-details-ect tab-pane fade active in" id="description">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-content-section">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                        mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                                        beatae vitae dicta sunt explicabo.</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo nisi ut aliquip ex
                                        ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ut labore et dolore magna aliqua. Ut enim ad , quis nostrud exercitation ullamco
                                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-tab-list tab-pane fade" id="reviews">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-content-section">
                                    <div class="review-content-section">
                                        <div class="card-block">
                                            <div class="text-muted f-w-400">
                                                <p>No reviews yet.</p>
                                            </div>
                                            <div class="m-t-10">
                                                <div class="txt-primary f-18 f-w-600">
                                                    <p>Your Rating</p>
                                                </div>
                                                <div class="stars stars-example-css detail-stars">
                                                    <div class="review-rating">
                                                        <fieldset class="rating">
                                                            <input type="radio" id="star5" name="rating" value="5">
                                                            <label class="full" for="star5"></label>
                                                            <input type="radio" id="star4half" name="rating" value="4 and a half">
                                                            <label class="half" for="star4half"></label>
                                                            <input type="radio" id="star4" name="rating" value="4">
                                                            <label class="full" for="star4"></label>
                                                            <input type="radio" id="star3half" name="rating" value="3 and a half">
                                                            <label class="half" for="star3half"></label>
                                                            <input type="radio" id="star3" name="rating" value="3">
                                                            <label class="full" for="star3"></label>
                                                            <input type="radio" id="star2half" name="rating" value="2 and a half">
                                                            <label class="half" for="star2half"></label>
                                                            <input type="radio" id="star2" name="rating" value="2">
                                                            <label class="full" for="star2"></label>
                                                            <input type="radio" id="star1half" name="rating" value="1 and a half">
                                                            <label class="half" for="star1half"></label>
                                                            <input type="radio" id="star1" name="rating" value="1">
                                                            <label class="full" for="star1"></label>
                                                            <input type="radio" id="starhalf" name="rating" value="half">
                                                            <label class="half" for="starhalf"></label>
                                                        </fieldset>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div>
                                            <div class="input-group mg-b-15 mg-t-15">
                                                <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" placeholder="User Name">
                                            </div>
                                            <div class="input-group mg-b-15">
                                                <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" placeholder="Last Name">
                                            </div>
                                            <div class="input-group mg-b-15">
                                                <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" placeholder="Email">
                                            </div>
                                            <div class="form-group review-pro-edt">
                                                <button type="submit" class="btn btn-primary waves-effect waves-light">Submit
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-tab-list tab-pane fade" id="INFORMATION">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-content-section">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                        mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto
                                        beatae vitae dicta sunt explicabo.</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco labo nisi ut aliquip ex
                                        ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ut labore et dolore magna aliqua. Ut enim ad , quis nostrud exercitation ullamco
                                        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="rodape.jsp" %>