

<%@page import="model.Slot"%>
<%@page import="model.CateField"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Field"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link
            href="${pageContext.servletContext.contextPath}/view/css/homeStyle.css"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <%
            List<Field> fields = (ArrayList<Field>) request.getAttribute("fields");
            List<CateField> cateFields = (ArrayList<CateField>) request.getAttribute("cateFields");
            List<Slot> slots = (ArrayList<Slot>) request.getAttribute("slots");
        %>
    </head>
    <body>
        <c:import url="header.jsp" />
        <section>
            <div class="container-section-body">
                <div class="title-body">
                    <p>Danh sách sân</p>
                </div>
                <div class="items-body">
                    <div class="row row-cols-3">
                        <%for (CateField cate : cateFields) {

                        %>
                        <div class="col col-items">
                            <div class="">
                                <a class="items-image">
                                    <img src="${pageContext.servletContext.contextPath}/view/img/<%=cate.getCateImage()%>"/>
                                </a>
                            </div>
                            <div class="items-info">
                                <h4 class="items-name">
                                    <a href=""><%=cate.getCateFieldName()%></a>
                                </h4>
                                <div class="items-info-san">
                                    <span class="items-diachi-san-bold">Địa Chỉ:</span>
                                    <span class="items-diachi-san-normal"><%=cate.getCateFieldAddress()%></span>
                                </div>
                                <div class="items-info-san">
                                    <span class="items-diachi-san-bold">Sân trống:</span>
                                    <span class="items-diachi-san-normal"><%=cate.getCateFieldNumberLeft()%></span>
                                </div>
                                <div class="btn-booking">
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal<%=cate.getCateFieldId()%>">Booking</button>
                                </div>
                            </div>
                        </div>

                        <!--dialog booking-->
                        <div class="modal fade" id="myModal<%=cate.getCateFieldId()%>" role="dialog">
                            <form action="AddBookingField" method="POST" id="booking_form">
                                <input type="hidden" value="<%=cate.getCateFieldId()%>" name="cateId"/>
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Form booking</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">

                                            Số sân : <select name="fieldName">
                                                <%for (Field f : fields) {
                                                %>
                                                <%if (f.getCateFieldId() == cate.getCateFieldId()) {%>
                                                <option value="<%=f.getCateFieldId()%>"><%=f.getFieldName()%></option>
                                                <%}%>
                                                <%}%>
                                            </select><br>

                                            <br>
                                            Chọn giờ : <select name="slot">
                                                <%for (Slot s : slots) {%>
                                                <option value="<%=s.getSlotId()%>"><%=s.getTime()%> - <%=s.getPrice()%></option>
                                                <%}%>
                                            </select><br>
                                            <br>
                                            Chọn ngày :<input type="date" name="date"/><br>
                                            <br>

                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-default" value="submit">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <%}%>                  
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
