<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Ecomus - Ultimate HTML</title>

        <meta name="author" content="themesflat.com">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- font -->
        <link rel="stylesheet" href="./assets/fonts/fonts.css">
        <!-- Icons -->
        <link rel="stylesheet" href="./assets/fonts/font-icons.css">
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="./assets/css/drift-basic.min.css">
        <link rel="stylesheet" href="./assets/css/photoswipe.css">
        <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="./assets/css/animate.css">
        <link rel="stylesheet " type="text/css" href="./assets/css/styles.css" />

        <!-- Favicon and Touch Icons  -->
        <link rel="shortcut icon" href="./assets/images/logo/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="./assets/images/logo/favicon.png">
    </head>


    <body>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@include file="inc/header.jsp" %>

        <section id="prodetails" class="section-p1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="single-pro-img">
                            <img src="${product.thumbnail}" alt="" id="MainImg" width="100%">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <form action="CartServlet" method="post" class="single-pro-details">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="price" value="${product.price}"/>
                            <div class="tf-product-info-wrap sticky-top">
                                <div class="tf-zoom-main"></div>
                                <div class="tf-product-info-list other-image-zoom">
                                    <div class="tf-product-info-title mt-3 ">
                                        <h5>${product.name}</h5>
                                    </div>

                                    <div class="tf-product-info-price">
                                        <div class="price-on-sale">$${product.price}</div>

                                    </div>


                                    <div class="tf-product-info-variant-picker">

                                        <div class="variant-picker-item">

                                            <div class="variant-picker-values">
                                                <input type="radio" name="size1" id="values-s" checked>
                                                <label class="style-text" for="values-s" data-value="S">
                                                    <p>S</p>
                                                </label>
                                                <input type="radio" name="size1" id="values-m">
                                                <label class="style-text" for="values-m" data-value="M">
                                                    <p>M</p>
                                                </label>
                                                <input type="radio" name="size1" id="values-l">
                                                <label class="style-text" for="values-l" data-value="L">
                                                    <p>L</p>
                                                </label>
                                                <input type="radio" name="size1" id="values-xl">
                                                <label class="style-text" for="values-xl" data-value="XL">
                                                    <p>XL</p>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tf-product-info-quantity">
                                        <div class="quantity-title fw-6">Quantity</div>
                                        <div class="wg-quantity">
                                            <span class="btn-quantity minus-btn">-</span>
                                            <input type="text" name="quantity" value="1">
                                            <span class="btn-quantity plus-btn">+</span>
                                        </div>
                                    </div>
                                    <div class="tf-product-info-buy-button " style="display: flex">
                                        <button type="submit" class="tf-btn btn-fill justify-content-center fw-6 fs-16 flex-grow-1 animate-hover-btn ">
                                            <span>Add to cart</span>
                                        </button>

                                        <a href="javascript:void(0);"
                                           class="tf-product-btn-wishlist hover-tooltip box-icon bg_white wishlist btn-icon-action">
                                            <span class="icon icon-heart"></span>
                                            <span class="tooltip">Add to Wishlist</span>
                                            <span class="icon icon-delete"></span>
                                        </a>
                                        <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft"
                                           class="tf-product-btn-wishlist hover-tooltip box-icon bg_white compare btn-icon-action">
                                            <span class="icon icon-compare"></span>
                                            <span class="tooltip">Add to Compare</span>
                                            <span class="icon icon-check"></span>
                                        </a>

                                    </div>
                                    <div class="b1" ">
                                        <a href="#" class="btns-full" style="">Buy with <img
                                                src="./assets/images/payments/paypal.png" alt=""></a>
                                        <a href="#" class="payment-more-option">More payment options</a>
                                    </div>
                                    <div class="tf-pickup-availability">
                                        <div>
                                            <svg width="18" height="18" viewBox="0 0 18 18" class="mt_3">
                                            <path
                                                d="M7.6 13.2L14.65 6.15L13.25 4.75L7.6 10.4L4.75 7.55L3.35 8.95L7.6 13.2ZM0 18V0H18V18H0ZM2 16H16V2H2V16Z"
                                                fill="#428445"></path>
                                            </svg>
                                        </div>
                                        <div>
                                            <p>Pickup available at <span class="fw-6">Toronto - Spadina Avenue</span>
                                                Usually ready in 24 hours</p>
                                            <a href="#pickup_available" data-bs-toggle="modal" class="">
                                                Check availability at other stores
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tf-product-info-extra-link">
                                        <a href="#compare_color" data-bs-toggle="modal" class="tf-product-extra-icon">
                                            <div class="icon">
                                                <img src="images/item/compare.svg" alt="">
                                            </div>
                                            <div class="text fw-6">Compare color</div>
                                        </a>
                                        <a href="#ask_question" data-bs-toggle="modal" class="tf-product-extra-icon">
                                            <div class="icon">
                                                <i class="icon-question"></i>
                                            </div>
                                            <div class="text fw-6">Ask a question</div>
                                        </a>
                                        <a href="#delivery_return" data-bs-toggle="modal" class="tf-product-extra-icon">
                                            <div class="icon">
                                                <svg class="d-inline-block" xmlns="http://www.w3.org/2000/svg"
                                                     width="22" height="18" viewBox="0 0 22 18" fill="currentColor">
                                                <path
                                                    d="M21.7872 10.4724C21.7872 9.73685 21.5432 9.00864 21.1002 8.4217L18.7221 5.27043C18.2421 4.63481 17.4804 4.25532 16.684 4.25532H14.9787V2.54885C14.9787 1.14111 13.8334 0 12.4255 0H9.95745V1.69779H12.4255C12.8948 1.69779 13.2766 2.07962 13.2766 2.54885V14.5957H8.15145C7.80021 13.6052 6.85421 12.8936 5.74468 12.8936C4.63515 12.8936 3.68915 13.6052 3.33792 14.5957H2.55319C2.08396 14.5957 1.70213 14.2139 1.70213 13.7447V2.54885C1.70213 2.07962 2.08396 1.69779 2.55319 1.69779H9.95745V0H2.55319C1.14528 0 0 1.14111 0 2.54885V13.7447C0 15.1526 1.14528 16.2979 2.55319 16.2979H3.33792C3.68915 17.2884 4.63515 18 5.74468 18C6.85421 18 7.80021 17.2884 8.15145 16.2979H13.423C13.7742 17.2884 14.7202 18 15.8297 18C16.9393 18 17.8853 17.2884 18.2365 16.2979H21.7872V10.4724ZM16.684 5.95745C16.9494 5.95745 17.2034 6.08396 17.3634 6.29574L19.5166 9.14894H14.9787V5.95745H16.684ZM5.74468 16.2979C5.27545 16.2979 4.89362 15.916 4.89362 15.4468C4.89362 14.9776 5.27545 14.5957 5.74468 14.5957C6.21392 14.5957 6.59575 14.9776 6.59575 15.4468C6.59575 15.916 6.21392 16.2979 5.74468 16.2979ZM15.8298 16.2979C15.3606 16.2979 14.9787 15.916 14.9787 15.4468C14.9787 14.9776 15.3606 14.5957 15.8298 14.5957C16.299 14.5957 16.6809 14.9776 16.6809 15.4468C16.6809 15.916 16.299 16.2979 15.8298 16.2979ZM18.2366 14.5957C17.8853 13.6052 16.9393 12.8936 15.8298 12.8936C15.5398 12.8935 15.252 12.943 14.9787 13.04V10.8511H20.0851V14.5957H18.2366Z">
                                                </path>
                                                </svg>
                                            </div>
                                            <div class="text fw-6">Delivery & Return</div>
                                        </a>
                                        <a href="#share_social" data-bs-toggle="modal" class="tf-product-extra-icon">
                                            <div class="icon">
                                                <i class="icon-share"></i>
                                            </div>
                                            <div class="text fw-6">Share</div>
                                        </a>
                                    </div>
                                    <div class="tf-product-info-delivery-return">
                                        <div class="row">
                                            <div class="col-xl-6 col-12">
                                                <div class="tf-product-delivery">
                                                    <div class="icon">
                                                        <i class="icon-delivery-time"></i>
                                                    </div>
                                                    <p>Estimate delivery times: <span class="fw-7">12-26 days</span>
                                                        (International), <span class="fw-7">3-6 days</span> (United
                                                        States).</p>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-12">
                                                <div class="tf-product-delivery mb-0">
                                                    <div class="icon">
                                                        <i class="icon-return-order"></i>
                                                    </div>
                                                    <p>Return within <span class="fw-7">30 days</span> of purchase.
                                                        Duties & taxes are non-refundable.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tf-product-info-trust-seal">
                                        <div class="tf-product-trust-mess">
                                            <i class="icon-safe"></i>
                                            <p class="fw-6">Guarantee Safe <br> Checkout</p>
                                        </div>
                                        <div class="tf-payment">
                                            <img src="images/payments/visa.png" alt="">
                                            <img src="images/payments/img-1.png" alt="">
                                            <img src="images/payments/img-2.png" alt="">
                                            <img src="images/payments/img-3.png" alt="">
                                            <img src="images/payments/img-4.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- tabs -->
        <section class="flat-spacing-17 pt_0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="widget-tabs style-has-border">
                            <ul class="widget-menu-tab">
                                <li class="item-title active">
                                    <span class="inner">Description</span>
                                </li>

                            </ul>
                            <div class="widget-content-tab">
                                <div class="widget-content-inner active">
                                    <div class="">
                                        <p class="mb_30">
                                            ${product.description}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /tabs -->
        <!-- product -->
        <section class="flat-spacing-1 pt_0">
            <div class="container">
                <div class="flat-title">
                    <span class="title">New Product</span>
                </div>
                <div class="hover-sw-nav hover-sw-2">
                    <div class="swiper tf-sw-product-sell wrap-sw-over" data-preview="4" data-tablet="3" data-mobile="2"
                         data-space-lg="30" data-space-md="15" data-pagination="2" data-pagination-md="3"
                         data-pagination-lg="3">
                        <div class="swiper-wrapper">
                            <c:forEach items="${newsProductList}" var="product">
                                <div class="swiper-slide" lazy="true">

                                    <div class="card-product">
                                        <div class="card-product-wrapper">

                                            <img class="lazyload"

                                                 src="${product.thumbnail}"

                                                 <span class="box-icon">
                                                <i class="icon-icon icon-arrow1-top-left"></i>
                                            </span>
                                            </a>
                                            <div class="list-product-btn">
                                                <a href="#quick_add" data-bs-toggle="modal"
                                                   class="box-icon bg_white quick-add tf-btn-loading">
                                                    <span class="icon icon-bag"></span>
                                                    <span class="tooltip">Quick Add</span>
                                                </a>
                                                <a href="javascript:void(0);"
                                                   class="box-icon bg_white wishlist btn-icon-action">
                                                    <span class="icon icon-heart"></span>
                                                    <span class="tooltip">Add to Wishlist</span>
                                                    <span class="icon icon-delete"></span>
                                                </a>
                                                <a href="#compare" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft"
                                                   class="box-icon bg_white compare btn-icon-action">
                                                    <span class="icon icon-compare"></span>
                                                    <span class="tooltip">Add to Compare</span>
                                                    <span class="icon icon-check"></span>
                                                </a>
                                                <a href="#quick_view" data-bs-toggle="modal"
                                                   class="box-icon bg_white quickview tf-btn-loading">
                                                    <span class="icon icon-view"></span>
                                                    <span class="tooltip">Quick View</span>
                                                </a>
                                            </div>
                                            <div class="size-list">
                                                <span>S</span>
                                                <span>M</span>
                                                <span>L</span>
                                                <span>XL</span>
                                            </div>
                                        </div>
                                        <div class="card-product-info">
                                            <a href="product-detail.html" class="title link">${product.name}</a>
                                            <span class="price">$${product.price}</span>

                                        </div>

                                    </div>
                                </div>
                            </c:forEach>  
                        </div>
                    </div>
<!--                    <div class="nav-sw nav-next-slider nav-next-product box-icon w_46 round"><span
                            class="icon icon-arrow-left"></span></div>
                    <div class="nav-sw nav-prev-slider nav-prev-product box-icon w_46 round"><span
                            class="icon icon-arrow-right"></span></div>
                    <div class="sw-dots style-2 sw-pagination-product justify-content-center"></div>-->
                </div>
            </div>
        </section>
        <!-- /product -->

        <%@include file="inc/footer.jsp" %>
        <script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
        <script type="text/javascript" src="./assets/js/swiper-bundle.min.js"></script>
        <script type="text/javascript" src="./assets/js/carousel.js"></script>
        <script type="text/javascript" src="./assets/js/count-down.js"></script>
        <script type="text/javascript" src="./assets/js/bootstrap-select.min.js"></script>
        <script type="text/javascript" src="./assets/js/lazysize.min.js"></script>
        <script type="text/javascript" src="./assets/js/bootstrap-select.min.js"></script>
        <script type="text/javascript" src="./assets/js/drift.min.js"></script>
        <script type="text/javascript" src="./assets/js/wow.min.js"></script>
        <script type="text/javascript" src="./assets/js/multiple-modal.js"></script>
        <script type="text/javascript" src="./assets/js/main.js"></script>

        <script type="module" src="js/model-viewer.min.js"></script>
        <script type="module" src="js/zoom.js"></script>
    </body>

</html>