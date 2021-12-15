<%-- 
    Document   : home
    Created on : 14-Dec-2021, 20:12:40
    Author     : Windows 10-DPC
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Booking"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
            />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link
            href="${pageContext.servletContext.contextPath}/view/css/homeStyle.css"
            rel="stylesheet"
            />
        <link
            href="${pageContext.servletContext.contextPath}/view/css/style.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/view/css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <%
            List<Booking> bookings = (ArrayList<Booking>) request.getAttribute("bookings");
        %>
    </head>
    <body>
        <header>
            <h1>Booking 7</h1>
            <div class="top">
                <a href="#" class="menu_icon"><i class="material-icons">dehaze</i></a>
            </div>
        </header>
        <nav class="menu">
            <a href="${pageContext.servletContext.contextPath}/ListField" class="item_menu">Sân</a>
            <a href="${pageContext.servletContext.contextPath}/ListDetailField" class="item_menu">Chi tiết</a>
            <a href="#" class="item_menu">LogOut</a>
        </nav>
        <section class="session">
            <h2 class="title">Chi Tiết</h2>
            <form action="detail" method="POST">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Tên sân</th>
                            <th scope="col">Ngày</th>
                            <th scope="col">Giờ</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Số sân</th>
                            <th scope="col">Địa chỉ sân</th>  
                            <th scope="col">Liên hê sân</th>
                        </tr>
                    </thead>

                    <tbody>
                        <%for (Booking b : bookings) {%>
                        <tr>
                            <td><%=b.getUser().getName()%></td>
                            <td><%=b.getField().getCateField().getCateFieldName()%></td>
                            <td><%=b.getBookingDate()%></td>
                            <td><%=b.getSlot().getTime()%></td>
                            <td><%=b.getSlot().getPrice()%></td>
                            <td><%=b.getField().getFieldName()%></td>
                            <td><%=b.getField().getCateField().getCateFieldAddress()%></td>
                            <td><%=b.getField().getCateField().getPhone()%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </form>

            <div class="div-btn">
                <input type="submit" class="btn btn-primary" value="Quay Lại Sân" onclick="window.location.href = 'ListDetailField'"/>  
            </div>
        </section>
        <footer></footer>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/view/js/javascript.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
