<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title><tiles:insertAttribute name="title" ignore="true"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css"/>
    <link href="${pageContext.servletContext.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/bootstrap/css/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet"/>
    <!-- BEGIN:File Upload Plugin CSS files-->
    <link href="/assets/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css" rel="stylesheet"/>
    <link href="/assets/plugins/jquery-file-upload/css/jquery.fileupload.css" rel="stylesheet"/>
    <link href="/assets/plugins/jquery-file-upload/css/jquery.fileupload-ui.css" rel="stylesheet"/>
    <!-- END:File Upload Plugin CSS files-->

    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="/assets/css/style-metronic-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/style-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/style-responsive-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/plugins-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/themes/default-rtl.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="/assets/css/pages/inbox-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/custom-rtl.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
    <%--<link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-rtl.css"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-metronic-rtl.css"/>--%>
    <%--<tiles:importAttribute name="csslink"/>--%>
    <%--<c:forEach var="item" items="${csslink}">--%>
    <%--<link href="${item}" rel="stylesheet" type="text/css"/>--%>
    <%--</c:forEach>--%>
    <%--<link rel="stylesheet" type="text/css" href="#" id="select2-1"/>--%>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-sidebar-closed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-fixed-top">
    <tiles:insertAttribute name="header"/>
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <tiles:insertAttribute name="menu"/>
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <div id="wait"
             style="display:none;z-index: 100000;width:69px;height:89px;border:1px solid black;position:absolute;top:30%;left:50%;padding:2px;">
            <img src='/assets/img/ajax-loading.gif' width="64" height="64"/><br>Loading..
        </div>
        <div class="page-content" id="bodyContain">
            <tiles:insertAttribute name="body"/>
        </div>
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <tiles:insertAttribute name="footer"/>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/assets/plugins/respond.min.js"></script>
<script src="/assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.4.1.min.js"  type="text/javascript"></script>
<%--<script src="/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>--%>
<script src="/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN: Page level plugins -->
<script src="/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
<!-- BEGIN:File Upload Plugin JS files-->
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="/assets/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="/assets/plugins/jquery-file-upload/js/vendor/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="/assets/plugins/jquery-file-upload/js/vendor/load-image.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="/assets/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js"></script>
<!-- blueimp Gallery script -->
<script src="/assets/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="/assets/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
<%--<script type="text/javascript" src="/assets/plugins/select2/select2.min.js"></script>--%>
<!-- The main application script -->
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="/assets/plugins/jquery-file-upload/js/cors/jquery.xdr-transport.js"></script>
<![endif]-->
<!-- END:File Upload Plugin JS files-->
<!-- END: Page level plugins -->

<script src="/assets/scripts/core/app.js"></script>
<script src="/assets/scripts/custom/inbox.js"></script>
<%--<script src="/assets/scripts/custom/form-samples.js"></script>--%>
<script>
    jQuery(document).ready(function () {
        // initiate layout and plugins
        App.init();
        Inbox.init();
        $(document).on({
            ajaxStart: function () {
                $("#wait").css("display", "block");
            },
            ajaxStop: function () {
                $("#wait").css("display", "none");
            }
        });
        $("#articleLoad").click(function (e) {
            $.getScript('/assets/javascript/articleLoad.js', function () {
                ArticleLoad.init();
            });
            e.preventDefault(e);
        });

        $("#articleLoad2").click(function (e) {
            $.getScript('/assets/javascript/articleLoad2.js', function () {
                ArticleLoad2.init();
            });
            e.preventDefault(e);
        });

        $("#newReferee").click(function (e) {
            $.getScript('/assets/javascript/newRefereeLoad.js', function () {
                NewRefereeLoad.init();
            });
            e.preventDefault(e);
        });

        $("#assignReferee").click(function (e) {
            $.getScript('/assets/javascript/assignRefereeLoad.js', function () {
                AssignRefereeLoad.init();
            });
            e.preventDefault(e);
        });
        $("#myProfile").click(function (e) {
            $.getScript('/assets/javascript/myProfile.js', function () {
                MyProfile.init();
            });
            e.preventDefault(e);
        });
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>