<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><tiles:insertAttribute name="title"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <style type="text/css">
        body {
            padding-top: 60px;
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>

    <tiles:insertAttribute name="libs"/>
</head>

<body>

<div id="header">
    <tiles:insertAttribute name="header"/>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div id="leftmenu" class="span3">
            <tiles:insertAttribute name="leftmenu"/>
        </div>

        <div id="content" class="span9" style="background-color: #f5f5f5;min-height: 1000px">
            <tiles:insertAttribute name="rightmenu"/>
            <tiles:insertAttribute name="content"/>
        </div>
    </div>
    <!--/row-->

    <hr>

    <footer>
        <p>&copy; Company 2013</p>
    </footer>

</div>
<!--/.fluid-container-->

</body>
</html>
