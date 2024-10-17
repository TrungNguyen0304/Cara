<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <!-- Mirrored from themesflat.co/html/ecomus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:28:04 GMT -->
    <head>
        <meta charset="utf-8" />
        <title>Ecomus - Ultimate HTML</title>

        <meta name="author" content="themesflat.com" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, maximum-scale=1"
            />

        <!-- font -->
        <link rel="stylesheet" href="./assets/fonts/fonts.css" />
        <!-- Icons -->
        <link rel="stylesheet" href="./assets/fonts/font-icons.css" />
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css" />
        <link rel="stylesheet" href="./assets/css/animate.css" />
        <link rel="stylesheet" href="./assets/css/animate.css" />
        <link rel="stylesheet" type="text/css" href="./assets/css/styles.css" />

        <!-- Favicon and Touch Icons  -->
        <link rel="shortcut icon" href="images/logo/favicon.png" />
        <link rel="apple-touch-icon-precomposed" href="images/logo/favicon.png" />
    </head>

    <body class="preload-wrapper">
        <div id="wrapper">
            <!-- header -->
            <%@include file="inc/header.jsp" %>
            <!-- /header -->

            <!-- page-title -->
            <div class="tf-page-title style-2">
                <div class="container-full">
                    <div class="heading text-center">Log in</div>
                </div>
            </div>
            <!-- /page-title -->

            <section class="flat-spacing-10">
                <div class="container">
                    <div class="tf-grid-layout lg-col-2 tf-login-wrap">
                        <div class="tf-login-form">
                            <div id="recover">
                                <h5 class="mb_24">Reset your password</h5>
                                <p class="mb_30">
                                    We will send you an email to reset your password
                                </p>
                                <div>
                                    <form
                                        class=""
                                        id="login-form"
                                        action="#"
                                        method="post"
                                        accept-charset="utf-8"
                                        data-mailchimp="true"
                                        >
                                        <div class="tf-field style-1 mb_15">
                                            <input
                                                class="tf-field-input tf-input"
                                                placeholder=""
                                                type="email"
                                                id="property3"
                                                name="email"
                                                />
                                            <label
                                                class="tf-field-label fw-4 text_black-2"
                                                for="property3"
                                                >Email *</label
                                            >
                                        </div>
                                        <div class="mb_20">
                                            <a href="#login" class="tf-btn btn-line">Cancel</a>
                                        </div>
                                        <div class="">
                                            <button
                                                type="submit"
                                                class="tf-btn w-100 radius-3 btn-fill animate-hover-btn justify-content-center"
                                                >
                                                Reset password
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div id="login">
                                <h5 class="mb_36">Log in</h5>

                                <span class="error">${Error}</span>
                                <c:if test="${not empty sessionScope.error}">
                                    <span class="error">${sessionScope.error}</span>
                                    <c:remove var="error" scope="session"/>
                                </c:if>
                                <c:remove var="error" scope="session"/>
                                <div>
                                    <form 
                                        class=""
                                        id="login-form"
                                        action="LoginServlet"
                                        accept-charset="utf-8"
                                        method="post"
                                        >
                                        <div class="tf-field style-1 mb_15">
                                            <input
                                                class="tf-field-input tf-input"
                                                placeholder=""
                                                type="email"
                                                id="property3"
                                                name="email"
                                                />
                                            <label
                                                class="tf-field-label fw-4 text_black-2"
                                                for="property3"
                                                >Email *</label
                                            >
                                        </div>
                                        <div class="tf-field style-1 mb_30">
                                            <input
                                                class="tf-field-input tf-input"
                                                placeholder=""
                                                type="password"
                                                id="property4"
                                                name="password"
                                                />
                                            <label
                                                class="tf-field-label fw-4 text_black-2"
                                                for="property4"
                                                >Password *</label
                                            >
                                        </div>
                                        <div class="mb_20">
                                            <a href="#recover" class="tf-btn btn-line"
                                               >Forgot your password?</a
                                            >


                                        </div>

                                        <div class="">
                                            <button
                                                type="submit"
                                                class="tf-btn w-100 radius-3 btn-fill animate-hover-btn justify-content-center"
                                                >
                                                Log in
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-5 d-flex align-items-center">
                            <div class="d-flex gap-3 flex-column w-100 ">
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid
                                   &redirect_uri=http://localhost:8080/Cara/LoginServlet&response_type=code
                                   &client_id=294865909282-djmbb9euq0al6377tiia2t1duhbk9qbt.apps.googleusercontent.com&approval_prompt=force" class="btn btn-lg btn-danger">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                        <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                    </svg>
                                    <span class="ms-2 fs-6">Sign in with Google</span>
                                </a>
                                <a href="#!" class="btn btn-lg btn-primary">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                    </svg>
                                    <span class="ms-2 fs-6">Sign in with Facebook</span>
                                </a>
                                <a href="#!" class="btn btn-lg btn-dark">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-apple" viewBox="0 0 16 16">
                                        <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z" />
                                        <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z" />
                                    </svg>
                                    <span class="ms-2 fs-6">Sign in with Apple</span>
                                </a>
                            </div>
                        </div>
                        <div class="tf-login-content">
                            <h5 class="mb_36">I'm new here</h5>
                            <p class="mb_20">
                                Sign up for early Sale access plus tailored new arrivals, trends
                                and promotions. To opt out, click unsubscribe in our emails.
                            </p>
                            <a href="RegisterServlet" class="tf-btn btn-line"
                               >Register<i class="icon icon-arrow1-top-left"></i
                                ></a>
                        </div>
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
        <script type="text/javascript" src="./assets/js/swiper-bundle.min.js"></script>
        <script type="text/javascript" src="./assets/js/carousel.js"></script>
        <script type="text/javascript" src="./assets/js/bootstrap-select.min.js"></script>
        <script type="text/javascript" src="./assets/js/lazysize.min.js"></script>
        <script type="text/javascript" src="./assets/js/count-down.js"></script>
        <script type="text/javascript" src="./assets/js/wow.min.js"></script>
        <script type="text/javascript" src="./assets/js/multiple-modal.js"></script>
        <script type="text/javascript" src="./assets/js/main.js"></script>
    </body>

    <!-- Mirrored from themesflat.co/html/ecomus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 02 Sep 2024 12:28:04 GMT -->
</html>