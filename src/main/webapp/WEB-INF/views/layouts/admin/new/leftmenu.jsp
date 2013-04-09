<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="accordion well" id="left-acc">
    <c:forEach items="${menus.menus}" var="menus">
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#left-acc" href="#collapse${menus.id}">
                        ${menus.name}
                </a>
            </div>
            <div id="collapse${menus.id}" class="accordion-body collapse">
                <div class="accordion-inner">
                    <c:forEach items="${menus.childMenuList}" var="i">
                        <div>
                            <a href="#" class="leftmenu" id="collapse-inner-${i.id}"
                               data-tab-url="${pageContext.request.contextPath}${i.url}">${i.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".leftmenu").click(function () {
            openTab(this);
        });
    });

    function openTab(obj) {

        var tabID = $(obj).attr('id');
        var url = $(obj).attr('data-tab-url');
        var tabPaneID = tabID + "-pane";
        var tabTitleID = tabID + "-title";
        var tabContentID = tabID + "-content";
        var existedTabsIDs = $("#mytabs a");
        console.info(existedTabsIDs.length);
        //判断tab是否已经打开
        if (existedTabsIDs.length != 0) {
            for (var i = 0; i < existedTabsIDs.length; i++) {
                if ($(existedTabsIDs[i]).attr("id") === "" + tabTitleID) {
                    $('#mytabs a[id="' + tabTitleID + '"]').tab('show');
                    return;
                }
            }
        }

        $('div.active').removeClass('active').removeClass('in');
        $('li.active').removeClass('active');
        $('#myTabContent').append('<div class="tab-pane in active" id="' + tabPaneID + '"><div id="' + tabContentID + '"></div>');
        $('#mytabs').append('<li  style="min-width:100px "><a id="' + tabTitleID + '" href="#' + tabPaneID + '" data-toggle="tab" data-pane-name="' + tabPaneID + '">' + tabID +
                '<button type="button" class="close" onclick="closeTab(this);">&times;</button></a></li>');
        $('#mytabs a:last').tab('show');
        $("#" + tabContentID).load(url);
    }

    function closeTab(obj) {
        var tabTitleID = $(obj).parent("a").attr('id');
        var tabPaneID = $(obj).parent("a").attr('data-pane-name');
        $("#" + tabPaneID).remove();
        $("#" + tabTitleID).remove();
        $('#mytabs a:last').tab('show');
    }
</script>