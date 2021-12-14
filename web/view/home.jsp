<%-- 
    Document   : home
    Created on : 14-Dec-2021, 20:12:40
    Author     : Windows 10-DPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Booking7</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
            />
        <link
            href="${pageContext.servletContext.contextPath}/view/css/homeStyle.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light nav-location">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <div class="container-fluid">
                            <ul class="navbar-nav items-location">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Dang Nhap</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Dang Ky</a>
                                </li>
                            </ul>
                        </div>
                    </div>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light nav-2-location">
                <div class="container container-brand">
                    <a class="navbar-brand" href="#">
                        <img src="${pageContext.servletContext.contextPath}/view/img/home.png" >
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse items-nav-location" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">San</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Chi tiet</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <section>
            <div class="container-section-body">
                <div class="title-body">
                    <p>Danh sách sân</p>
                </div>
                <div class="items-body">
                    <div class="row row-cols-3">
                        
                        <c:forEach items="${cateFields}" var="cate">
                        <div class="col col-items">
                            <div class="items-images">
                                <a class="items-image">
                                    <img src="${pageContext.servletContext.contextPath}/view/img/${cate.cateImage}"/>
                                </a>
                            </div>
                            <div class="items-info">
                                <h4 class="items-name">
                                    <a href="">${cate.cateFieldName}</a>
                                </h4>
                                <div class="items-info-san">
                                    <span class="items-diachi-san-bold">Địa Chỉ:</span>
                                    <span class="items-diachi-san-normal">${cate.cateFieldAddress}</span>
                                </div>
                                <div class="items-info-san">
                                    <span class="items-diachi-san-bold">Sân trống:</span>
                                    <span class="items-diachi-san-normal">${cate.cateFieldNumberLeft}</span>
                                </div>
                                <div class="btn-booking">
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal${cate.cateFieldId}">Booking</button>
                                </div>
                            </div>
                        </div>
                        
                        <!--dialog booking-->
                        
                        <div class="modal fade" id="myModal${cate.cateFieldId}" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Form booking</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <input type="text" name="fieldName">
                                            <input type="text" name=""/>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                        
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <footer></footer>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

