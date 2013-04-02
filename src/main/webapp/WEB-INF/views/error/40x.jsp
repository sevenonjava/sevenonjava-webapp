<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="static/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet"
          media="screen">
</head>
<body>
<div class="container">

    <div class="masthead">
        <h3 class="muted">Project name123</h3>

        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <ul class="nav">
                        <li class="active"><a href="#">首页</a></li>
                        <li><a href="#">技术</a></li>
                        <li><a href="#">吐槽</a></li>
                        <li><a href="#">下载</a></li>
                        <li><a href="#">关于</a></li>
                        <li><a href="#">联系我</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /.navbar -->
    </div>

    <!-- Example row of columns -->
    <div class="row-fluid">
        <h2>40X 咯！！！</h2>
    </div>

    <hr>

    <div class="footer">
        <p>&copy; Company 2013</p>
    </div>

</div>
<!-- /container -->

<script src="static/plugin/jquery/jquery.js"></script>
<script src="static/plugin/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">
    body {
        padding-top: 5px;
        padding-bottom: 20px;
    }

        /* Custom container */
    .container {
        margin: 0 auto;
        max-width: 1000px;
    }

    .container > hr {
        margin: 20px 0;
    }

        /* Customize the navbar links to be fill the entire space of the .navbar */
    .navbar .navbar-inner {
        padding: 0;
    }

    .navbar .nav {
        margin: 0;
        display: table;
        width: 100%;
    }

    .navbar .nav li {
        display: table-cell;
        width: 1%;
        float: none;
    }

    .navbar .nav li a {
        font-weight: bold;
        text-align: center;
        border-left: 1px solid rgba(255, 255, 255, .75);
        border-right: 1px solid rgba(0, 0, 0, .1);
        font-size: x-large;
    }

    .navbar .nav li:first-child a {
        border-left: 0;
        border-radius: 3px 0 0 3px;
    }

    .navbar .nav li:last-child a {
        border-right: 0;
        border-radius: 0 3px 3px 0;
    }
</style>

</body>
</html>