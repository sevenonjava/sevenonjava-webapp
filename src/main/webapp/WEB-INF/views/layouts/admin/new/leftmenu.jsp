<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="accordion well" id="accordion2">
    <div class="accordion-group">
        <div class="accordion-heading">
            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                内容管理
            </a>
        </div>
        <div id="collapseOne" class="accordion-body collapse in">
            <div class="accordion-inner">
                <div>
                    <a href="#" class="opentab" id="blog">博客管理</a>
                </div>
                <div>
                    <a href="#" class="opentab" id="category">类别管理</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/.well -->
<script type="text/javascript">
    $(document).ready(function () {
        $(".opentab").click(function () {
            openTab(this);
        });
    });

    function openTab(obj) {
        $('div.active').removeClass('active').removeClass('in');
        $('li.active').removeClass('active');

        var tabID = this.id;
        var tabPaneID = tabID + "-pane";
        var tabTitleID = tabID + "-title";
        $('#myTabContent').append('<div class="tab-pane in active" id="' + tabID + '"><p>' + tabID + '</p></div>');
        $('#mytabs').append('<li><a href="#' + tabTitleID + '" data-toggle="tab">' + tabTitleID + '<button type="button" class="close" onclick="javascript:closeTab(this);">&times;</button></a></li>');
        $('#mytabs a:last').tab('show');
    }

    function closeTab(obj) {

    }
</script>