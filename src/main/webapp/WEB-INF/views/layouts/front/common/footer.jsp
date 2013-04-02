<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="footer">
    <p>&copy; Company 2013</p>
</div>


<style type="text/css">
    body {
        padding-top: 5px;
        padding-bottom: 20px;
    }

        /* Custom container */
    .container {
        margin: 0 auto;
        max-width: 1000px;
    }

    .container > hr {
        margin: 20px 0;
    }

        /* Customize the navbar links to be fill the entire space of the .navbar */
    .navbar .navbar-inner {
        padding: 0;
    }

    .navbar .nav {
        margin: 0;
        display: table;
        width: 100%;
    }

    .navbar .nav li {
        display: table-cell;
        width: 1%;
        float: none;
    }

    .navbar .nav li a {
        font-weight: bold;
        text-align: center;
        border-left: 1px solid rgba(255, 255, 255, .75);
        border-right: 1px solid rgba(0, 0, 0, .1);
        font-size: x-large;
    }

    .navbar .nav li:first-child a {
        border-left: 0;
        border-radius: 3px 0 0 3px;
    }

    .navbar .nav li:last-child a {
        border-right: 0;
        border-radius: 0 3px 3px 0;
    }
</style>