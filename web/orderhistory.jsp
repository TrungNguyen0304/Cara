

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">


    <!-- Mirrored from themesflat.co/html/ecomus/view-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:27:43 GMT -->
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

                                                        <body class="preload-wrapper">

                                                            <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                                                            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

                                                            <div id="wrapper">
                                                                <!-- header -->
                                                                <%@include file="inc/header.jsp" %>
                                                                <!-- /header -->

                                                                <!-- page-title -->
                                                                <div class="tf-page-title">
                                                                    <div class="container-full">
                                                                        <div class="heading text-center">Don hang da dat</div>
                                                                    </div>
                                                                </div>
                                                                <!-- /page-title -->

                                                                <!-- page-cart -->
                                                                <section class="flat-spacing-11">
                                                                    <div class="container">

                                                                        <div class="tf-page-cart-item">

                                                                            <table class="tf-table-page-cart">
                                                                                <thead>
                                                                                    <tr>
                                                                                      
                                                                                        <th>status</th>
                                                                                        <th>createdAt</th>

                                                                                    </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                    <c:forEach items="${orders}" var="order">
                                                                                      
                                                                                            <tr>
                                                                                               
                                                                                                <td>${order.status}</td>
                                                                                                <td>${order.createdAt}</td>
                                                                                            </tr>
                                                                                        
                                                                                    </c:forEach>
                                                                                </tbody>
                                                                            </table>


                                                                        </div>


                                                                    </div>
                                                                </section>
                                                                <!-- page-cart -->




                                                                <!-- footer -->
                                                                <%@include file="inc/footer.jsp" %>
                                                                <!-- /footer -->

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
                                                            <script type="text/javascript" src="./assets/js/rangle-slider.js"></script>
                                                            <script type="text/javascript" src="./assets/js/wow.min.js"></script>
                                                            <script type="text/javascript" src="./assets/js/multiple-modal.js"></script>
                                                            <script type="text/javascript" src="./assets/js/main.js"></script>
                                                        </body>


                                                        <!-- Mirrored from themesflat.co/html/ecomus/view-cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:27:43 GMT -->
                                                        </html>