<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="tabbable">
    <ul class="nav nav-tabs " id="mytabs">
        <li class="active"><a href="#pane1" data-toggle="tab">Tab 1</a></li>
        <li><a href="#pane2" data-toggle="tab">Tab 2</a></li>
        <li><a href="#pane3" data-toggle="tab">Tab 3</a></li>
        <li><a href="#pane4" data-toggle="tab">Tab 4</a></li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div id="pane1" class="tab-pane active">
            <h4>The Markup</h4>
            <pre>Code here ...</pre>
        </div>
        <div id="pane2" class="tab-pane">
            <h4>Pane 2 Content</h4>

            <p> and so on ...</p>
        </div>
        <div id="pane3" class="tab-pane">
            <h4>Pane 3 Content</h4>
        </div>
        <div id="pane4" class="tab-pane">
            <h4>Pane 4 Content</h4>
        </div>
    </div>
    <!-- /.tab-content -->
</div>
<!-- /.tabbable -->


<%--<div class="well">--%>
<%--<table class="table">--%>
<%--<thead>--%>
<%--<tr>--%>
<%--<td style="width: 15%">标题</td>--%>
<%--<td style="width: 35%">内容</td>--%>
<%--<td style="width: 20%">发表时间</td>--%>
<%--<td style="width: 20%">123</td>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--<tr>--%>
<%--<td>123啊啊啊</td>--%>
<%--<td>12323213</td>--%>
<%--<td>2013-12-12 14:14</td>--%>
<%--<td>--%>
<%--<a class="btn btn-small edit-blog" data-toggle="modal"--%>
<%--href="${pageContext.request.contextPath}/static/test.txt" data-target="#myModal">编辑</a>--%>
<%--<a class="btn btn-small del-blog" data-toggle="modal"--%>
<%--href="${pageContext.request.contextPath}/article/13" data-target="#myModal">删除</a>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>