<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">



<head>
    <meta charset="utf-8">
    <title>Ecomus - Ultimate HTML</title>

    <meta name="author" content="themesflat.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- font -->
    <link rel="stylesheet" href="./assets/fonts/fonts.css">
    <link rel="stylesheet" href="./assets/fonts/font-icons.css">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="./assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/styles.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="./assets/images/logo/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="./assets/images/logo/favicon.png">

</head>

<body class="preload-wrapper popup-loader">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <div id="wrapper">
                <!-- Header -->
                <%@include file="inc/header.jsp" %>
                    <!-- /Header -->
                    <!-- Slider -->
                    <div class="tf-slideshow slider-effect-fade position-relative slider-skincare slider-skateboard">
                        <div class="swiper tf-sw-slideshow" data-preview="1" data-tablet="1" data-mobile="1"
                            data-centered="false" data-space="0" data-loop="true" data-auto-play="true" data-delay="0"
                            data-speed="1000">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="wrap-slider">
                                        <img src="./assets/images/slider/skateboard-slider-01.jpg"
                                            alt="fashion-slideshow">
                                        <div class="box-content">
                                            <div class="container">
                                                <div class="card-box-2">
                                                    <div class="fade-item fade-item-1 title"><a
                                                            href="product-detail.html" class="link">Yow Surfskates
                                                            Christenson Hole Shot Surfskate</a></div>
                                                    <span class="fade-item fade-item-2 price">$279.99</span>
                                                    <div class="fade-item fade-item-3">
                                                        <a href="product-detail.html"
                                                            class="tf-btn btn-line collection-other-link fw-6"><span>Shop
                                                                now</span><i class="icon icon-arrow1-top-left"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="wrap-slider">
                                        <img src="./assets/images/slider/skateboard-slider-02.jpg"
                                            alt="fashion-slideshow">
                                        <div class="box-content">
                                            <div class="container">
                                                <div class="card-box-2">
                                                    <div class="fade-item fade-item-1 title"><a
                                                            href="product-detail.html" class="link">Element Skateboards
                                                            Section Complete Skateboard</a></div>
                                                    <span class="fade-item fade-item-2 price">$71.99</span>
                                                    <div class="fade-item fade-item-3">
                                                        <a href="product-detail.html"
                                                            class="tf-btn btn-line collection-other-link fw-6"><span>Shop
                                                                now</span><i class="icon icon-arrow1-top-left"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="wrap-slider">
                                        <img src="./assets/images/slider/skateboard-slider-03.jpg"
                                            alt="fashion-slideshow">
                                        <div class="box-content">
                                            <div class="container">
                                                <div class="card-box-2">
                                                    <div class="fade-item fade-item-1 title"><a
                                                            href="product-detail.html" class="link">Foundation
                                                            Skateboards Star & Moon White Complete
                                                            Skateboard</a></div>
                                                    <span class="fade-item fade-item-2 price">$89.99</span>
                                                    <div class="fade-item fade-item-3">
                                                        <a href="product-detail.html"
                                                            class="tf-btn btn-line collection-other-link fw-6"><span>Shop
                                                                now</span><i class="icon icon-arrow1-top-left"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wrap-pagination sw-absolute-3">
                            <div class="sw-dots style-2 sw-pagination-slider justify-content-center"></div>
                        </div>
                    </div>
                    <!-- /Slider -->
                    <!-- Marquee -->
                    <section class="flat-spacing-3 line">
                        <div class="tf-marquee type-big">
                            <div class="wrap-marquee speed-1">
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-8">FREE UK DELIVERY AND RETURNS ON ALL ORDERS</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-8">BUY NOW, PAY LATER WITH KLARNA</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-8">FREE UK DELIVERY AND RETURNS ON ALL ORDERS</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-6">BUY NOW, PAY LATER WITH KLARNA</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-6">FREE UK DELIVERY AND RETURNS ON ALL ORDERS</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-8">BUY NOW, PAY LATER WITH KLARNA</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-6">FREE UK DELIVERY AND RETURNS ON ALL ORDERS</p>
                                </div>
                                <div class="marquee-item">
                                    <div class="icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="41" height="44"
                                            viewBox="0 0 41 44" fill="none">
                                            <path
                                                d="M39.8055 21.092C35.4409 21.0775 30.8593 20.1853 27.411 17.3399C24.5125 14.9478 22.7908 11.5526 21.9565 7.93551C21.4356 5.67845 21.2475 3.36835 21.262 1.05825C21.262 0.575971 20.8762 0.36377 20.5 0.36377C20.1238 0.36377 19.738 0.575971 19.738 1.05825C19.7573 4.99845 19.2027 9.07368 17.3652 12.6136C15.6145 15.9847 12.7305 18.5359 9.15686 19.8333C6.60562 20.7592 3.89523 21.0872 1.19448 21.0968C0.712202 21.0968 0.5 21.4875 0.5 21.8636C0.5 22.2398 0.712202 22.6305 1.19448 22.6305C5.55908 22.6449 10.1407 23.5371 13.589 26.3826C16.4875 28.7747 18.2092 32.1699 19.0435 35.787C19.5644 38.044 19.7476 40.3541 19.738 42.6642C19.738 43.1465 20.1238 43.3587 20.5 43.3587C20.8762 43.3587 21.262 43.1465 21.262 42.6642C21.2427 38.724 21.7973 34.6488 23.6348 31.1089C25.3855 27.7378 28.2695 25.1865 31.8431 23.8892C34.3944 22.9632 37.1048 22.6353 39.8055 22.6256C40.2878 22.6256 40.5 22.235 40.5 21.8588C40.5 21.4826 40.2878 21.092 39.8055 21.092ZM26.5381 25.2299C23.3985 27.7522 21.4838 31.4561 20.5772 35.3288C20.5482 35.4445 20.5289 35.5651 20.5 35.6809C20.0901 33.8193 19.4727 32.0107 18.5854 30.318C16.6659 26.6527 13.4829 23.9423 9.6102 22.5195C8.87714 22.2495 8.12479 22.0324 7.36279 21.854C9.92368 21.2415 12.3544 20.1757 14.4571 18.4877C17.5967 15.9654 19.5113 12.2615 20.418 8.38885C20.447 8.2731 20.4662 8.15253 20.4952 8.03679C20.9051 9.89837 21.5224 11.7069 22.4098 13.3997C24.3293 17.065 27.5123 19.7754 31.385 21.1981C32.118 21.4682 32.8704 21.6852 33.6324 21.8636C31.0715 22.481 28.6408 23.542 26.5381 25.2299Z"
                                                fill="black"></path>
                                        </svg>
                                    </div>
                                    <p class="text fw-8">BUY NOW, PAY LATER WITH KLARNA</p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- /Marquee -->
                    <!-- Collection -->
                    <section class="flat-spacing-18 pb-0">
                        <div class="container">
                            <div class="grid-3-layout-md wow fadeInUp" data-wow-delay="0s">
                                <div class="item-1 collection-line-upper hover-img">
                                    <div class="collection-inner">
                                        <a href="shop-collection-sub.html" class="collection-image img-style">
                                            <img class="lazyload"
                                                data-src="./assets/images/collections/collection-stakeboard1.jpg"
                                                src="./assets/images/collections/collection-stakeboard1.jpg"
                                                alt="collection-img">
                                        </a>
                                        <div class="collection-content text-center">
                                            <p class="subheading text-white">UP TO 30% OFF</p>
                                            <h5 class="heading text-white">NEW SKATE DECKS</h5>
                                            <a href="shop-collection-sub.html"
                                                class="tf-btn btn-fill animate-hover-btn collection-title"><span>SHOP
                                                    NOW</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-2 collection-line-upper hover-img">
                                    <div class="collection-inner">
                                        <a href="shop-collection-sub.html" class="collection-image img-style">
                                            <img class="lazyload"
                                                data-src="./assets/images/collections/collection-stakeboard2.jpg"
                                                src="./assets/images/collections/collection-stakeboard2.jpg"
                                                alt="collection-img">
                                        </a>
                                        <div class="collection-content text-center">
                                            <p class="subheading text-white">UP TO 30% OFF</p>
                                            <h5 class="heading text-white">NEW SKATE DECKS</h5>
                                            <a href="shop-collection-sub.html"
                                                class="tf-btn btn-fill animate-hover-btn collection-title"><span>SHOP
                                                    NOW</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-3 collection-line-upper hover-img">
                                    <div class="collection-inner">
                                        <a href="shop-collection-sub.html" class="collection-image img-style">
                                            <img class="lazyload"
                                                data-src="./assets/images/collections/collection-stakeboard3.jpg"
                                                src="./assets/images/collections/collection-stakeboard3.jpg"
                                                alt="collection-img">
                                        </a>
                                        <div class="collection-content text-center">
                                            <p class="subheading">UP TO 30% OFF</p>
                                            <h5 class="heading">NEW SKATE DECKS</h5>
                                            <a href="shop-collection-sub.html"
                                                class="tf-btn btn-fill animate-hover-btn collection-title"><span>SHOP
                                                    NOW</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- /Collection -->

                    <!-- Categories -->
                    <section class="flat-spacing-17 pt_0">
                        <div class="container">
                            <div class="flat-title title-upper flex-row justify-content-between px-0">
                                <span class="title wow fadeInUp" data-wow-delay="0s">Hot Products</span>
                                <div class="box-sw-navigation">
                                    <div class="nav-sw round nav-next-collection nav-next-slider"><span
                                            class="icon icon-arrow-left"></span></div>
                                    <div class="nav-sw round nav-prev-collection nav-prev-slider"><span
                                            class="icon icon-arrow-right"></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="container-full slider-layout-right">
                            <div class="swiper tf-sw-collection sw-wrapper-right" data-preview="4.6" data-tablet="3.6"
                                data-mobile="1.6" data-space-lg="30" data-space-md="30" data-space="15"
                                data-loop="false" data-auto-play="false">
                                <div class="swiper-wrapper">
                                    <c:forEach items="${hotProductList}" var="product">
                                        <div class="swiper-slide" lazy="true">

                                            <div class="collection-item-v3 hover-img">
                                               <a href="ProductServlet?productId=${product.id}"
                                                    class="collection-image img-style rounded-0">
                                                    <img class="lazyload"
                                                        data-src="${product.thumbnail}"
                                                        src="${product.thumbnail}"
                                                        alt="collection-img">
                                                    <span class="box-icon">
                                                        <i class="icon-icon icon-arrow1-top-left"></i>
                                                    </span>
                                                </a>
                                                <div class="collection-content">
                                                    <a href="shop-collection-sub.html"
                                                        class="link title fw-8 fs-16 text-uppercase">${product.name}</a>
                                                    <div class="count">${product.price}</div>
                                                </div>
                                            </div>

                                        </div>
                                    </c:forEach>
                                </div>

                            </div>
                        </div>
                    </section>
                    <!-- /Categories -->

                    <!-- Banner collection -->
                    <section class="flat-spacing-12">
                        <div class="container">
                            <div class="tf-grid-layout md-col-2 tf-img-with-text style-3 bg_yellow-3 rounded-0">
                                <div class="tf-content-wrap w-100 wow fadeInUp" data-wow-delay="0s">
                                    <div class="inner">
                                        <div class="heading text-uppercase fw-8">CUSTOM <br> SKATEBOARD</div>
                                        <p class="description">Shop our luxury silk button-up blouses made with
                                            ultra-soft, washable
                                            silk.</p>
                                        <a href="shop-collection-list.html"
                                            class="tf-btn btn-line collection-other-link fw-6"><span>Shop
                                                Collection</span><i class="icon icon-arrow1-top-left"></i></a>
                                    </div>
                                </div>
                                <div class="tf-image-wrap wow fadeInUp" data-wow-delay="0s">
                                    <img class="lazyload"
                                        data-src="./assets/images/collections/banner-wtext-stakeboard.jpg"
                                        src="./assets/images/collections/banner-wtext-stakeboard.jpg"
                                        alt="collection-img">
                                </div>

                            </div>
                        </div>
                    </section>
                    <!-- /Banner collection -->
                    <!-- Accessories -->
                    <section class="flat-spacing-27 bg_grey-5">
                        <div class="container">
                            <div class="flat-title title-upper flex-row justify-content-between px-0">
                                <span class="title wow fadeInUp" data-wow-delay="0s">ACCESSORIES</span>
                                <div class="box-sw-navigation">
                                    <div class="nav-sw round nav-next-sell-1 nav-next-slider"><span
                                            class="icon icon-arrow-left"></span></div>
                                    <div class="nav-sw round nav-prev-sell-1 nav-prev-slider"><span
                                            class="icon icon-arrow-right"></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="container-full slider-layout-right">
                            <div class="swiper sw-wrapper-right tf-sw-product-sell-1 wrap-sw-over" data-preview="4.5"
                                data-tablet="3.5" data-mobile="1.5" data-space-lg="30" data-space-md="15"
                                data-pagination="1" data-pagination-md="3" data-pagination-lg="4">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide" lazy="true">
                                        <div class="card-product style-line-hover">
                                            <div class="card-product-wrapper">
                                                <a href="product-detail.html" class="product-img">
                                                    <img class="lazyload img-product"
                                                        data-src="./assets/images/products/playing-card-1.jpg"
                                                        src="./assets/images/products/playing-card-1.jpg"
                                                        alt="image-product">
                                                    <img class="lazyload img-hover"
                                                        data-src="./assets/images/products/playing-card-2.jpg"
                                                        src="./assets/images/products/playing-card-2.jpg"
                                                        alt="image-product">
                                                </a>
                                                <div class="list-product-btn absolute-2">
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
                                                    <a href="#compare" data-bs-toggle="offcanvas"
                                                        aria-controls="offcanvasLeft"
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
                                            </div>
                                            <div class="card-product-info">
                                                <a href="product-detail.html"
                                                    class="title link fs-14 fw-7 text-uppercase">Thrasher
                                                    Magazine Playing Cards</a>
                                                <span class="price">$9.99</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Footer -->
                    <%@include file="inc/footer.jsp" %>
                        <!-- /Footer -->
    <!-- modal login -->
    <div class="modal modalCentered fade form-sign-in modal-part-content" id="login">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="header">
                    <div class="demo-title">Log in</div>
                    <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
                </div>
                <div class="tf-login-form">
                    <form class="" action="https://themesflat.co/html/ecomus/my-account.html" accept-charset="utf-8">
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="email"  name="">
                            <label class="tf-field-label" for="">Email *</label>
                        </div>
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="password"  name="">
                            <label class="tf-field-label" for="">Password *</label>
                        </div>
                        <div>
                            <a href="#forgotPassword" data-bs-toggle="modal" class="btn-link link">Forgot your password?</a>
                        </div>
                        <div class="bottom"> 
                            <div class="w-100">
                                <button type="submit" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Log in</span></button>
                            </div>
                            <div class="w-100">
                                <a href="#register" data-bs-toggle="modal" class="btn-link fw-6 w-100 link">
                                    New customer? Create your account
                                    <i class="icon icon-arrow1-top-left"></i>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal modalCentered fade form-sign-in modal-part-content" id="forgotPassword">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="header">
                    <div class="demo-title">Reset your password</div>
                    <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
                </div>
                <div class="tf-login-form">
                    <form class="">
                        <div>
                            <p>Sign up for early Sale access plus tailored new arrivals, trends and promotions. To opt out, click unsubscribe in our emails</p>
                        </div>
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="email"  name="">
                            <label class="tf-field-label" for="">Email *</label>
                        </div>
                        <div>
                            <a href="#login" data-bs-toggle="modal" class="btn-link link">Cancel</a>
                        </div>
                        <div class="bottom"> 
                            <div class="w-100">
                                <button type="submit" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Reset password</span></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal modalCentered fade form-sign-in modal-part-content" id="register">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="header">
                    <div class="demo-title">Register</div>
                    <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
                </div>
                <div class="tf-login-form">
                    <form class="">
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="text"  name="">
                            <label class="tf-field-label" for="">First name</label>
                        </div>
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="text"  name="">
                            <label class="tf-field-label" for="">Last name</label>
                        </div>
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="email"  name="">
                            <label class="tf-field-label" for="">Email *</label>
                        </div>
                        <div class="tf-field style-1">
                            <input class="tf-field-input tf-input" placeholder=" " type="password"  name="">
                            <label class="tf-field-label" for="">Password *</label>
                        </div>
                        <div class="bottom"> 
                            <div class="w-100">
                                <a href="register.html" class="tf-btn btn-fill animate-hover-btn radius-3 w-100 justify-content-center"><span>Register</span></a>
                            </div>
                            <div class="w-100">
                                <a href="#login" data-bs-toggle="modal" class="btn-link fw-6 w-100 link">
                                    Already have an account? Log in here
                                    <i class="icon icon-arrow1-top-left"></i>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /modal login -->
            </div>
           
            <!-- Javascript -->
            <script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
            <script type="text/javascript" src="./assets/js/swiper-bundle.min.js"></script>
            <script type="text/javascript" src="./assets/js/carousel.js"></script>
            <script type="text/javascript" src="./assets/js/bootstrap-select.min.js"></script>
            <script type="text/javascript" src="./assets/js/lazysize.min.js"></script>
            <script type="text/javascript" src="./assets/js/count-down.js"></script>
            <script type="text/javascript" src="./assets/js/wow.min.js"></script>
            <script type="text/javascript" src="./assets/js/multiple-modal.js"></script>
            <script type="text/javascript" src="./assets/js/main.js"></script>
</body>


<!-- Mirrored from themesflat.co/html/ecomus/home-skateboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:28:48 GMT -->

</html>