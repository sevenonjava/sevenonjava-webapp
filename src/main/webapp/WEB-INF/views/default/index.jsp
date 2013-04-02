<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <img src="${pageContext.request.contextPath}/static/img/pic1.png" alt="">
        </div>
    </div>
    <!--/span-->
</div>

<hr>

