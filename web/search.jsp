<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Ecomus - Ultimate HTML</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
              integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMm0Vs6Ed0tGnH7q+PTkGyn3J5H4d7W/sT8yV" crossorigin="anonymous">
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

    <body>

        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

        <%@include file="inc/header.jsp" %>

        <!-- page-title -->

        <!-- /page-title -->   <!-- page-title -->
        <div class="tf-page-title">
            <div class="container-full">
                <div class="row">
                    <div class="col-12">
                        <div class="heading text-center">#${keyword}</div>
                        <p class="text-center text-2 text_black-2 mt_5">Shop through our latest selection of
                            Fashion</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page-title -->

        <section class="flat-spacing-1">
            <div class="container">
                <div class="grid-layout wrapper-shop" data-grid="grid-4">
                    <!-- card product 1 -->
                    <c:forEach items="${productList}" var="product">

                        <div class="card-product">
                            <div class="card-product-wrapper">
                                <a href="ProductServlet?productId=${product.id}"
                                   class="collection-image img-style rounded-0">
                                    <img class="lazyload" data-src="${product.thumbnail}"
                                         src="${product.thumbnail}" alt="image-product">
                                </a>
                             
                            </div>
                            <div class="card-product-info">
                                <a href="product-detail.html" class="title link">${product.name}</a>
                                <span class="price">${product.price}</span>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <section id="pagination" class="section-p1">
                    <c:if test="${numberPage > 1}">
                        <ul class="wg-pagination justify-content-center">
                            <c:if test="${page > 1}">
                                <li>
                                    <a href="ShopServlet?page=${page - 1}"
                                       class="pagination-item animate-hover-btn">
                                        <i class="fa-solid fa-arrow-left"></i>
                                    </a>
                                </li>
                            </c:if>
                            <c:forEach var="i" begin="1" end="${numberPage}">
                                <li class="${page == i ? 'active' : ''}">
                                    <a href="ShopServlet?page=${i}"
                                       class="pagination-item animate-hover-btn">${i}</a>
                                </li>
                            </c:forEach>
                            <c:if test="${page < numberPage}">
                                <li>
                                    <a href="ShopServlet?page=${page + 1}"
                                       class="pagination-item animate-hover-btn">
                                        <i class="fa-solid fa-arrow-right"></i>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                    </c:if>
                </section>
            </div>
        </section>

        <section id="pagination" class="section-p1">
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#"><i class="fa-solid fa-arrow-right"></i></a>
        </section>



        <%@include file="inc/footer.jsp" %>
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

</html>
