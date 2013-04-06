<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><tiles:insertAttribute name="title"/></title>
    <tiles:insertAttribute name="libs"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootstrap admin pages.">
    <meta name="author" content="Seven Sun">
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
</head>

<body>
<div class="container">
    <tiles:insertAttribute name="header"/>
    <div class="container-fluid">
        <div class="row-fluid">
            <tiles:insertAttribute name="leftmenu"/>
            <tiles:insertAttribute name="content"/>
        </div>
    </div>

</div>
</body>
</html>

