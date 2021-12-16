

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/view/css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link
            href="${pageContext.servletContext.contextPath}/view/css/style.css"
            rel="stylesheet"
            />
    </head>
    <body>
        <header>
            <h1>Website đặt sân bóng đá 7 người</h1>
            <div class="top">
                <a href="#" class="menu_icon"><i class="material-icons">dehaze</i></a>
            </div>
        </header>
        <nav class="menu">
            <p class="item_menu"></p>
            <a href="${pageContext.servletContext.contextPath}/ListField" class="item_menu">Sân</a>
            <a href="${pageContext.servletContext.contextPath}/ListDetailField" class="item_menu">Chi tiết</a>
            <a href="${pageContext.servletContext.contextPath}/Logout" class="item_menu">LogOut</a>
        </nav>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/view/js/javascript.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
