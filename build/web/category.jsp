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
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


    <body class="preload-wrapper">
        <div id="wrapper">

            <!-- header -->
            <%@include file="inc/header.jsp" %>
            <!-- /header -->

            <!-- page-title -->
            <div class="tf-page-title">
                <div class="container-full">
                    <div class="row">
                        <div class="col-12">
                            <div class="heading text-center">${category.name}</div>
                            <p class="text-center text-2 text_black-2 mt_5">Shop through our latest selection of
                                Fashion</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page-title -->

            <section class="flat-spacing-1">
                <div class="container">
                    <div class="tf-shop-control grid-3 align-items-center">
                        <div class="tf-control-filter">
                            <a href="#filterShop" data-bs-toggle="offcanvas" aria-controls="offcanvasLeft"
                               class="tf-btn-filter"><span class="icon icon-filter"></span><span
                                    class="text">Filter</span></a>
                        </div>
                        <ul class="tf-control-layout d-flex justify-content-center">

                            <li class="tf-view-layout-switch sw-layout-3" data-value-grid="grid-3">
                                <div class="item"><span class="icon icon-grid-3"></span></div>
                            </li>
                            <li class="tf-view-layout-switch sw-layout-4 active" data-value-grid="grid-4">
                                <div class="item"><span class="icon icon-grid-4"></span></div>
                            </li>
                            <li class="tf-view-layout-switch sw-layout-5" data-value-grid="grid-5">
                                <div class="item"><span class="icon icon-grid-5"></span></div>
                            </li>
                            <li class="tf-view-layout-switch sw-layout-6" data-value-grid="grid-6">
                                <div class="item"><span class="icon icon-grid-6"></span></div>
                            </li>
                        </ul>
                    </div>
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
                                    <a href="product-detail.html" class="title link">${product.name}</a>
                                    <span class="price">${product.price}</span>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                    <!-- phan trang -->
                    <section id="pagination" class="section-p1">
                        <c:if test="${numberPage > 1}">
                            <ul class="wg-pagination justify-content-center">
                                <c:if test="${page > 1}">
                                    <li>
                                        <a href="CategoryServlet?page=${page - 1}&categoryId=${category.id}"
                                           class="pagination-item animate-hover-btn">
                                            <i class="fa-solid fa-arrow-left"></i>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach var="i" begin="1" end="${numberPage}">
                                    <li class="${page == i ? 'active' : ''}">
                                        <a href="CategoryServlet?page=${i}&categoryId=${category.id}"
                                           class="pagination-item animate-hover-btn">${i}</a>
                                    </li>
                                </c:forEach>
                                <c:if test="${page < numberPage}">
                                    <li>
                                        <a href="CategoryServlet?page=${page + 1}&categoryId=${category.id}"
                                           class="pagination-item animate-hover-btn">
                                            <i class="fa-solid fa-arrow-right"></i>
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </c:if>
                    </section>

                    <!-- phan trang -->
                </div>
            </section>



            <!-- Filter -->
            <div class="offcanvas offcanvas-start canvas-filter" id="filterShop">
                <div class="canvas-wrapper">
                    <header class="canvas-header">
                        <div class="filter-icon">
                            <span class="icon icon-filter"></span>
                            <span>Filter</span>
                        </div>
                        <span class="icon-close icon-close-popup" data-bs-dismiss="offcanvas" aria-label="Close"></span>
                    </header>
                    <div class="canvas-body">
                       

                        <form action="CategoryServlet" method="get">
                            <input type="hidden" name="categoryId" value="${category.id}"/>
                            <div class="widget-facet">
                                <div class="facet-title" data-bs-target="#availability"
                                     data-bs-toggle="collapse" aria-expanded="true" aria-controls="availability">
                                    <span>Sort By Order</span>
                                    
                                </div>
                                <select name="property" class="form-select me-2" aria-label="Sort By">
                                    <option value="name" ${filterProperty eq 'name' ? 'selected' : ''}>Sort By Name</option>
                                    <option value="price" ${filterProperty eq 'price' ? 'selected' : ''}>Sort By Price</option>
                                    <option value="created_at" ${filterProperty eq 'created_at' ? 'selected' : ''}>Sort By Time</option>
                                </select>
                            </div>
                            <div class="widget-facet">
                                <div class="facet-title" data-bs-target="#price" data-bs-toggle="collapse"
                                     aria-expanded="true" aria-controls="price">
                                    <span>Price</span>
                    
                                </div>
                                <select name="order" class="form-select" aria-label="Order By">
                                    <option value="ASC" ${filterOrder eq 'ASC' ? 'selected' : ''}>A->Z</option>
                                    <option value="DESC" ${filterOrder eq 'DESC' ? 'selected' : ''}>Z->A</option>
                                </select>
                            </div>
<!--                            <div class="widget-facet">
                                <div class="facet-title" data-bs-target="#size" data-bs-toggle="collapse"
                                     aria-expanded="true" aria-controls="size">
                                    <span>Size</span>
                                    <span class="icon icon-arrow-up"></span>
                                </div>
                                <div id="size" class="collapse show">
                                    <ul class="tf-filter-group current-scrollbar">
                                        <li class="list-item d-flex gap-12 align-items-center">
                                            <input type="radio" name="size" class="tf-check" id="s">
                                            <label for="s" class="label"><span>S</span>&nbsp;<span>(7)</span></label>
                                        </li>
                                        <li class="list-item d-flex gap-12 align-items-center">
                                            <input type="radio" name="size" class="tf-check" id="m">
                                            <label for="m" class="label"><span>M</span>&nbsp;<span>(8)</span></label>
                                        </li>
                                        <li class="list-item d-flex gap-12 align-items-center">
                                            <input type="radio" name="size" class="tf-check" id="l">
                                            <label for="l" class="label"><span>L</span>&nbsp;<span>(8)</span></label>
                                        </li>
                                        <li class="list-item d-flex gap-12 align-items-center">
                                            <input type="radio" name="size" class="tf-check" id="xl">
                                            <label for="xl" class="label"><span>XL</span>&nbsp;<span>(6)</span></label>
                                        </li>
                                    </ul>
                                </div>
                            </div>-->
                                 <button type="submit" class="filter-submit btn btn-primary">Filter</button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- End Filter -->


            <!-- footer -->
            <%@include file="inc/footer.jsp" %>
            <!-- /footer -->
        </div>






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
