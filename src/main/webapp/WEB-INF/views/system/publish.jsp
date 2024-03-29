<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="row-fluid">
    <div class="span9">
        <form:form action="/publish" method="post">
            <input type="text" placeholder="Type something…" class="span9" name="title">&nbsp;&nbsp;
            <select name="categories" id="categories" class="span3">
                <option value="-1">----选择一个标签----</option>
            </select>

            <textarea id="editor_id" name="content" style="width: 700px;height: 500px">
                &lt;strong&gt;HTML内容&lt;/strong&gt;
            </textarea>

            <div class="form-actions" style="border: 0;background: #ffffff;text-align: center;padding: 0px">
                <button type="submit" class="btn btn-primary btn-large">Save changes</button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-large">Cancel</button>
            </div>
        </form:form>
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
                <li class="nav-header">Sidebar</li>
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

<script src="${pageContext.request.contextPath}/static/plugin/kindeditor/kindeditor-all-min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugin/kindeditor/lang/zh_CN.js"></script>

<script>
    var editor;
    KindEditor.ready(function (K) {
        editor = K.create('#editor_id');
    });
</script>