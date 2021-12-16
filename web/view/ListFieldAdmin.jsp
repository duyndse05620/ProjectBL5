

<%@page import="java.util.List"%>
<%@page import="model.CateField"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            List<CateField> cateFields = (ArrayList<CateField>) request.getAttribute("cateFields");
        %>
    </head>
    <body>
        <table border="1px">
            <tr>
                <td>Mã sân</td>
                <td>Tên sân</td>
                <td>Địa chỉ</td>
                <td>Số lượng sân</td>
            </tr>
            <%for (CateField cate : cateFields) {%>
            <tr>
                <td><%=cate.getCateFieldId() %></td>
                <td><%=cate.getCateFieldName()%></td>
                <td><%=cate.getCateFieldAddress()%></td>
                <td><%=cate.getCateFieldNumberLeft()%></td>
            </tr>
            <%}%>
        </table>
        <a href="${pageContext.servletContext.contextPath}/ListField" >Danh sách sân</a>
    </body>
</html>
