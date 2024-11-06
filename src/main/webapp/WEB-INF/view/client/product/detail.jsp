<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>${product.name} - Cosmetic Shop</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                        rel="stylesheet">
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                        rel="stylesheet">
                    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                    <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
                    <link href="/client/css/bootstrap.min.css" rel="stylesheet">
                    <link href="/client/css/style.css" rel="stylesheet">
                    <link href="/client/css/product.css" rel="stylesheet">
                    <meta name="_csrf" content="${_csrf.token}" />
                    <meta name="_csrf_header" content="${_csrf.headerName}" />
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.css"
                        rel="stylesheet">
                    <link href="<c:url value='/client/lib/lightbox/css/lightbox.min.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/lib/owlcarousel/assets/owl.carousel.min.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/bootstrap.min.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/style.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/carousel-product.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/header.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/footer.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/common.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/product.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/hot-product.css' />" rel="stylesheet">
                    <link href="<c:url value='/client/css/sale-product.css' />" rel="stylesheet">
                </head>

                <body style="background-color: #f7f4f3; font-family: 'Open Sans', sans-serif; color: #333;">

                    <div id="spinner"
                        class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50 d-flex align-items-center justify-content-center">
                        <div class="spinner-grow text-primary" role="status"></div>
                    </div>

                    <jsp:include page="../layout/header.jsp" />

                    <div class="container-fluid py-10 mt-5" style="padding-top: 100px;">
                        <div class="container">
                            <div class="row g-4 mb-5">
                                <div>
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="/" style="color: #a5678e;">Home</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Product Details</li>
                                        </ol>
                                    </nav>
                                </div>
                                <div class="col-lg-6">
                                    <div class="border rounded p-4" style="background-color: #fff;">
                                        <img src="/images/product/${product.image}" class="img-fluid rounded"
                                            alt="Image" style="border-radius: 8px; width: 100%; height: auto;">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <h3 class="fw-bold mb-3" style="color: #a5678e;">${product.name}</h3>
                                    <p class="text-muted mb-3">Brand: ${product.factory}</p>
                                    <h4 class="fw-bold mb-3" style="color: #d47fa6;">
                                        <fmt:formatNumber type="number" value="${product.price}" /> đ
                                    </h4>
                                    <div class="d-flex mb-4">
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star text-warning"></i>
                                        <i class="fa fa-star-half-alt text-warning"></i>
                                    </div>
                                    <p class="mb-4" style="color: #777;">${product.shortDesc}</p>
                                    <div class="input-group quantity mb-4" style="width: 120px;">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-minus rounded-circle bg-light border">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                        <input type="text" class="form-control form-control-sm text-center border-0"
                                            value="1" data-cart-detail-index="0">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <button data-product-id="${product.id}"
                                        class="btnAddToCartDetail btn rounded-pill px-4 py-2 mb-4"
                                        style="background-color: #a5678e; color: #fff;">
                                        <i class="fa fa-shopping-bag me-2"></i> Add to cart
                                    </button>
                                </div>
                                <div class="col-lg-12 mt-5">
                                    <nav>
                                        <div class="nav nav-tabs mb-3">
                                            <button class="nav-link active border-white border-bottom-0" type="button"
                                                role="tab" id="nav-description-tab" data-bs-toggle="tab"
                                                data-bs-target="#nav-description" aria-controls="nav-description"
                                                aria-selected="true">Description</button>
                                        </div>
                                    </nav>
                                    <div class="tab-content mb-5">
                                        <div class="tab-pane fade show active" id="nav-description" role="tabpanel"
                                            aria-labelledby="nav-description-tab">
                                            <p>${product.detailDesc}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <jsp:include page="../layout/footer.jsp" />

                    <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                            class="fa fa-arrow-up"></i></a>

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/lib/easing/easing.min.js"></script>
                    <script src="/client/lib/waypoints/waypoints.min.js"></script>
                    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>
                    <script src="/client/js/main.js"></script>
                    <script
                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js"></script>

                </body>

                </html>