<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="well sidebar-nav">
    <ul class="nav nav-list">
        <li class="nav-header">功能菜单</li>
        <li><a href="${pageContext.request.contextPath}/system/blog/index">博客管理</a></li>
        <li><a href="${pageContext.request.contextPath}/system/category/index">类别管理</a></li>
        <li><a href="#" id="addtab">add tab</a></li>
    </ul>
</div>
<!--/.well -->
<script type="text/javascript">
    $(document).ready(function(){
         $("#addtab").click(function(){

         });
    });
</script>