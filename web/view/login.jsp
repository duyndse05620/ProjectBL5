

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/view/css/loginStyle.css">
    </head>
    <body>
        <div class="global-container">
    <div class="card login-form">
        <div class="card-body">
            <h3 class="card-title text-center">Log in to Booking 7</h3>
            <div class="card-text">
                <!--
            <div class="alert alert-danger alert-dismissible fade show" 
             role="alert">Incorrect username or password.</div> -->
                <form action="Login" method="POST">
                    <!-- to error: add class "has-danger" -->
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control form-control-sm"
                               id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <a href="#" style="float:right;font-size:12px;">Forgot password? 
               </a>
                        <input type="password" class="form-control form-control-sm"
                               id="exampleInputPassword1" name="password">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Signin</button>
 
                    <div class="sign-up">
                        Don't have an account? 
                     <a href="https://w3schoolweb.com/bootstraplogin-page/">Create One</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
    </body>
</html>
