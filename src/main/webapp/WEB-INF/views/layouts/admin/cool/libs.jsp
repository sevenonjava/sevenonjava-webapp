<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- The styles -->
<link id="bs-css-unused" href="${pageContext.request.contextPath}/static/plugin/charisma/css/bootstrap-cerulean.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/static/plugin/charisma/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/plugin/charisma/css/charisma-app.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/static/plugin/charisma/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/fullcalendar.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/fullcalendar.print.css' rel='stylesheet' media='print'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/chosen.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/uniform.default.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/colorbox.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/jquery.cleditor.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/jquery.noty.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/noty_theme_default.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/elfinder.min.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/elfinder.theme.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/opa-icons.css' rel='stylesheet'>
<link href='${pageContext.request.contextPath}/static/plugin/charisma/css/uploadify.css' rel='stylesheet'>

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/plugin/charisma/img/favicon.ico">

<!-- external javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery-1.7.2.min.js"></script>
<!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery-ui-1.8.21.custom.min.js"></script>
<!-- transition / effect library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-transition.js"></script>
<!-- alert enhancer library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-alert.js"></script>
<!-- modal / dialog library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-modal.js"></script>
<!-- custom dropdown library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-dropdown.js"></script>
<!-- scrolspy library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-scrollspy.js"></script>
<!-- library for creating tabs -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-tab.js"></script>
<!-- library for advanced tooltip -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-tooltip.js"></script>
<!-- popover effect library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-popover.js"></script>
<!-- button enhancer library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-button.js"></script>
<!-- accordion library (optional, not used in demo) -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-collapse.js"></script>
<!-- carousel slideshow library (optional, not used in demo) -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-carousel.js"></script>
<!-- autocomplete library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-typeahead.js"></script>
<!-- tour library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/bootstrap-tour.js"></script>
<!-- library for cookie management -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.cookie.js"></script>
<!-- calander plugin -->
<script src='${pageContext.request.contextPath}/static/plugin/charisma/js/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.dataTables.min.js'></script>

<!-- chart libraries start -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/excanvas.js"></script>
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.flot.stack.js"></script>
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.flot.resize.min.js"></script>
<!-- chart libraries end -->

<!-- select or dropdown enhancer -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.chosen.min.js"></script>
<!-- checkbox, radio, and file input styler -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.uniform.min.js"></script>
<!-- plugin for gallery image view -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.colorbox.min.js"></script>
<!-- rich text editor library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.cleditor.min.js"></script>
<!-- notification plugin -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.noty.js"></script>
<!-- file manager library -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.elfinder.min.js"></script>
<!-- star rating plugin -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="${pageContext.request.contextPath}/static/plugin/charisma/js/charisma.js"></script>
