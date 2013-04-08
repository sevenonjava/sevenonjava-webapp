<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<form class="form-horizontal" id="add-category-form" action="#">
    <div class="control-group">
        <label class="control-label" for="name">名称：</label>

        <div class="controls">
            <input type="text" id="name" placeholder="name" datatype="s2-18" errormsg="名称需在2-18字符之间">
        </div>

    </div>
    <div class="control-group">
        <label class="control-label" for="descr">描述：</label>

        <div class="controls">
            <textarea name="descr" id="descr" datatype="s2-50" errormsg="描述需在2-18字符之间"></textarea>
        </div>

    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" class="btn">提交</button>
            <button type="reset" class="btn">重置</button>
            <span id="msg" style="margin-left:30px;"></span>
        </div>
    </div>
</form>

<script type="text/javascript">
    $(document).ready(function () {
        $("#add-category-form").Validform({
            tiptype: function (msg, o, cssctl) {
                var objtip = $("#msg");
                cssctl(objtip, o.type);
                objtip.text(msg);
            },
            ajaxPost: true
        });
    })
</script>