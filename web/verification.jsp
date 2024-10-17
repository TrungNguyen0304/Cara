<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <!-- Mirrored from themesflat.co/html/ecomus/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:32:41 GMT -->
    <head>
        <meta charset="utf-8" />
        <title>Ecomus - Ultimate HTML</title>

        <meta name="author" content="themesflat.com" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, maximum-scale=1"
            />

        <!-- font -->
        <link rel="stylesheet" href="fonts/fonts.css" />
        <!-- Icons -->
        <link rel="stylesheet" href="fonts/font-icons.css" />
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css" />
        <link rel="stylesheet" href="./assets/css/animate.css" />
        <link rel="stylesheet" href="./assets/css/animate.css" />
        <link rel="stylesheet" type="text/css" href="./assets/css/styles.css" />

        <!-- Favicon and Touch Icons  -->
        <link rel="shortcut icon" href="./assets/images/logo/favicon.png" />
        <link
            rel="apple-touch-icon-precomposed"
            href="./assets/images/logo/favicon.png"
            />
        <!-- Bootstrap CSS & JS (if not already included in your project) -->
        <link
            href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    </head>

    <body class="preload-wrapper">
        <div id="wrapper">
            <!-- header -->
            <%@include file="inc/header.jsp" %>
            <!-- /header -->

            <!-- page-title -->
            <div class="tf-page-title style-2">
                <div class="container-full">
                    <div class="heading text-center">Register</div>
                </div>
            </div>
            <!-- /page-title -->

            <section class="py-5">
                <div class="container">
                    <div class="form-register-wrap mx-auto" style="max-width: 500px">
                        <div class="flat-title mb-4">
                            <h5 class="mb-3">Enter the authentication code</h5>
             
                        </div>



                        <form action="VerificationServlet" method="get">
                            <label for="verificationCode">Enter Verification Code:</label>
                            <input type="text" id="verificationCode" name="token" required />
                            <input type="hidden" name="email" value="${sessionScope.email}" />
                            <button class="btn btn-dark w-100" type="submit">Verify</button>
                            
                              
                        </form>

                    </div>
                </div>
            </section>

            <!-- Footer -->
            <%@include file="inc/footer.jsp" %>
            <!-- /Footer -->
        </div>

        <!-- Javascript -->
        <script type="text/javascript" src="./assets/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
        <script
            type="text/javascript"
            src="./assets/js/swiper-bundle.min.js"
        ></script>
        <script type="text/javascript" src="./assets/js/carousel.js"></script>
        <script
            type="text/javascript"
            src="./assets/js/bootstrap-select.min.js"
        ></script>
        <script type="text/javascript" src="./assets/js/lazysize.min.js"></script>
        <script
            type="text/javascript"
            src="./assets/js/bootstrap-select.min.js"
        ></script>
        <script type="text/javascript" src="./assets/js/count-down.js"></script>
        <script type="text/javascript" src="./assets/js/wow.min.js"></script>
        <script type="text/javascript" src="./assets/js/multiple-modal.js"></script>
        <script type="text/javascript" src="./assets/js/main.js"></script>
    </body>
</html>