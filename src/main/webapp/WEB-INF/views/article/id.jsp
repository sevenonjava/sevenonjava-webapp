<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Example row of columns -->
<div class="row-fluid">
    <div class="span9">
        <div class="article">
            <h2 style="text-align: center">${blog.title}</h2>

            <p style="padding-right: 10px;text-align: right">陈靓波 发布于 ${blog.createtime}</p>

            <p style="padding: 3px 7px;line-height: 1.7;font-size: 20">
                ${blog.content}
            </p>
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