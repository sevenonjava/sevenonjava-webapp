<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="well">
    <table class="table">
        <thead>
        <tr>
            <td style="width: 15%">标题</td>
            <td style="width: 35%">内容</td>
            <td style="width: 20%">发表时间</td>
            <td style="width: 20%">123</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>123啊啊啊</td>
            <td>12323213</td>
            <td>2013-12-12 14:14</td>
            <td>
                <a class="btn btn-small edit-blog" data-toggle="modal" href="${pageContext.request.contextPath}/static/test.txt" data-target="#myModal">编辑</a>
                <a class="btn btn-small del-blog" data-toggle="modal" href="${pageContext.request.contextPath}/article/13" data-target="#myModal">删除</a>
            </td>
        </tr>
        <tr>
            <td>123</td>
            <td>123的水费电费23213</td>
            <td>2013-12-12 14:14</td>
        </tr>
        <tr>
            <td>123</td>
            <td>12323213</td>
            <td>2013-12-12 14:14</td>
        </tr>
        </tbody>
    </table>
</div>


<script type="text/javascript">

</script>

<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Modal header</h3>
    </div>
    <div class="modal-body">
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
        <button class="btn btn-primary">Save changes</button>
    </div>
</div>