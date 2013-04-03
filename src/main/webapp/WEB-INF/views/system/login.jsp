<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="row-fluid">
    <div class="span12">

        <form class="form-horizontal" action="<spring:url value='/system/loginSubmitSecurity' />" method="post">
            <fieldset>
                <div id="legend" class="">
                    <legend class="">表单名</legend>
                </div>
                <div class="control-group">

                    <!-- Text input-->
                    <label class="control-label">用户名</label>

                    <div class="controls">
                        <input placeholder="" name="username" class="input-xlarge" type="text">

                        <p class="help-block"></p>
                    </div>
                </div>

                <div class="control-group">

                    <!-- Text input-->
                    <label class="control-label">密 码</label>

                    <div class="controls">
                        <input placeholder="" name="password" class="input-xlarge" type="password">

                        <p class="help-block"></p>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label"></label>

                    <!-- Button -->
                    <div class="controls">
                        <button class="btn btn-success">登录</button>
                        <button class="btn btn-danger">注册</button>
                    </div>
                </div>

            </fieldset>
        </form>

    </div>
    <!--/span-->
</div>
