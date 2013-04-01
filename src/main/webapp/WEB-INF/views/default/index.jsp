<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<body>
<div class="container">

    <div class="masthead">
        <h3 class="muted">Project name</h3>

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
        <div class="span9">
            <div class="article">
                <h2>OSC 4月1日愚人节变倾斜的原因</h2>

                <p>一大早发现OS好多人说页面变倾斜了，打开看看也没发现什么，就没怎么管。后来还是不断有人反映说倾斜了，但也有人说没变化。
                    其实原因是这样子的，@红薯同学在首页的body里加了一个如一大早发现OS好多人说页面变倾斜了，打开看看也没发现什么，就没怎么管。后来还是不断有人反映说倾斜了，但也有人说没变化。
                    其实原因是这样子的，@红薯同学在首页的body里加了一个如下属性： style="transform: rotate(-8deg);" </p>

                <p><a class="btn" href="#">查看详情&raquo;</a><span style="float: right;padding-right: 10px">陈靓波 发布于 2013年04月01日 11时, 19评/1988阅</span>
                </p>
            </div>
            <div class="">
                <h2>Heading</h2>

                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                    mauris
                    condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis
                    euismod. Donec sed odio dui. </p>

                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div>
            <div class="">
                <h2>Heading</h2>

                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                    mauris
                    condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis
                    euismod. Donec sed odio dui. </p>

                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div>
            <div class="">
                <h2>Heading</h2>

                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                    mauris
                    condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis
                    euismod. Donec sed odio dui. </p>

                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div>
            <div class="">
                <h2>Heading</h2>

                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                    mauris
                    condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis
                    euismod. Donec sed odio dui. </p>

                <p><a class="btn" href="#">View details &raquo;</a></p>
            </div>

            <div class="pagination" style="text-align: center">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>

        </div>

        <div class="span3">
            <div class="well sidebar-nav">
                <ul class="nav nav-list">
                    <li class="nav-header">Sidebar</li>
                    <li class="active"><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li class="nav-header">Sidebar</li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li class="nav-header">Sidebar</li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                    <li><a href="#">Link</a></li>
                </ul>
            </div>
            <!--/.well -->
            <div class="thumbnail">
                <img src="static/img/pic1.png" alt="">
            </div>
        </div>
        <!--/span-->
    </div>

    <hr>

    <div class="footer">
        <p>&copy; Company 2013</p>
    </div>

</div>
<!-- /container -->

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
