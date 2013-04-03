<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- Example row of columns -->
<div class="row-fluid">
    <div class="span9">
        <div style="min-height: 1000px;border: 1px #eee solid;padding: 5px">
            <c:forEach items="${page.list}" var="i">
                <div class="article">
                    <h2 style="margin: 0px"><a href="${pageContext.request.contextPath}/article/${i.id}">${i.title}</a></h2>

                    <div style="max-height: 210px;overflow:hidden;">${i.excerpt}</div>

                    <p style="margin-top: 5px;">
                        <a class="btn" href="#">查看详情&raquo;</a>
                        <span style="float: right;padding-right: 10px">陈靓波 发布于 ${i.createtime}, 19评/1988阅</span>
                    </p>
                </div>
                <hr/>
            </c:forEach>
        </div>
        <div class="pagination" style="text-align: center">
            <ul>
                <c:choose>
                    <c:when test="${page.currentPage == 1}">
                        <li class="disabled"><a href="#">Prev</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class=""><a href="${pageContext.request.contextPath}/${page.currentPage - 1}">Prev</a></li>
                    </c:otherwise>
                </c:choose>

                <c:if test="${page.currentPage >= 2}">
                    <c:if test="${page.currentPage >=3}">
                        <li><a href="${page.currentPage - 2}">${page.currentPage - 2}</a></li>
                    </c:if>
                    <li><a href="${page.currentPage - 1}">${page.currentPage - 1}</a></li>
                </c:if>

                <li class="active"><a href="${page.currentPage }">${page.currentPage }</a></li>
                <c:if test="${page.currentPage != page.totalPages}">
                    <li><a href="${page.currentPage + 1}">${page.currentPage + 1}</a></li>
                    <c:if test="${page.currentPage + 1 != page.totalPages}">
                        <li><a href="${page.currentPage + 2}">${page.currentPage + 2}</a></li>
                    </c:if>
                </c:if>

                <c:choose>
                    <c:when test="${page.currentPage == page.totalPages}">
                        <li class="disabled"><a href="#">Next</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="${pageContext.request.contextPath}/${page.currentPage + 1}">Next</a></li>
                    </c:otherwise>
                </c:choose>


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

