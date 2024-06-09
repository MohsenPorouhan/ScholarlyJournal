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
    <title><%--<tiles:insertAttribute name="title" ignore="true"/>--%> login</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css"/>
    <link href="/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/bootstrap/css/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-rtl.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-metronic-rtl.css"/>
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="/assets/css/style-metronic-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/style-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/style-responsive-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/plugins-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/themes/default-rtl.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="/assets/css/pages/login-soft-rtl.css" rel="stylesheet" type="text/css"/>
    <link href="/assets/css/custom-rtl.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="/assets/plugins/bootstrap-toastr/toastr-rtl.min.css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
    <a href="index.html">

    </a>
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <form class="login-form" action="/doLogin" method="post">
        <h3 class="form-title">Login to your account</h3>

        <div class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
			<span>
				 Enter any username and password.
			</span>
        </div>
        <%--<c:set var="message" value="${param.message}"></c:set>--%>
        <c:set var="message" value="${sessionScope.message}"></c:set>
        <c:if test="${message=='error'}">
            <div id="alert_id" class="alert alert-danger display-hide">
                <button class="close" data-close="alert"></button>
			<span>
                        Your username or password is wrong.

			</span>
            </div>
        </c:if>
        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">Username</label>

            <div class="input-icon">
                <i class="fa fa-user"></i>
                <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Username"
                       name="j_username" id="username"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Password</label>

            <div class="input-icon">
                <i class="fa fa-lock"></i>
                <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password"
                       name="j_password" id="password"/>
            </div>
        </div>
        <div class="form-actions">
            <label class="checkbox">
                <input type="checkbox" name="remember" value="1"/> Remember me
            </label>
            <button id="login_btn" type="submit" class="btn blue pull-right" name="j_security_check">
                Login <i class="m-icon-swapright m-icon-white"></i>
            </button>
        </div>
        <div class="create-account">
            <p>
                Don't have an account yet ?&nbsp;
                <a href="javascript:;" id="register-btn">
                    Create an account
                </a>
            </p>
        </div>
    </form>
    <!-- END LOGIN FORM -->
    <!-- BEGIN REGISTRATION FORM -->
    <form class="register-form" action="/register" method="post" id="registerform">
        <h3>Sign Up</h3>

        <p>
            Enter your personal details below:
        </p>

        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">First Name</label>

            <div class="input-icon">
                <i class="fa fa-font"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="First Name" name="firstName"
                       id="fn"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Last Name</label>

            <div class="input-icon">
                <i class="fa fa-font"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Last Name" name="lastName"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">National Number</label>

            <div class="input-icon">
                <i class="fa fa-font"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="National Number"
                       name="nationalNumber"/>
            </div>
        </div>
        <p>
            Enter your account details below:
        </p>

        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Username</label>

            <div class="input-icon">
                <i class="fa fa-user"></i>
                <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="username"
                       name="username"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Password</label>

            <div class="input-icon">
                <i class="fa fa-lock"></i>
                <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password"
                       placeholder="Password" name="password"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>

            <div class="controls">
                <div class="input-icon">
                    <i class="fa fa-check"></i>
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off"
                           placeholder="Re-type Your Password" name="rpassword"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label>
                <input type="checkbox" name="tnc"/> I agree to the
                <a href="#">
                    Terms of Service
                </a>
                and
                <a href="#">
                    Privacy Policy
                </a>
            </label>

            <div id="register_tnc_error">
            </div>
        </div>
        <div class="form-actions">
            <button id="register-back-btn" type="button" class="btn">
                <i class="m-icon-swapleft"></i> Back
            </button>
            <button type="submit" id="register-submit-btn" class="btn blue pull-right">
                Sign Up <i class="m-icon-swapright m-icon-white"></i>
            </button>
        </div>
    </form>
    <!-- END REGISTRATION FORM -->
</div>
<!-- END LOGIN -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/assets/plugins/respond.min.js"></script>
<script src="/assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="/assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/assets/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/assets/scripts/core/app.js" type="text/javascript"></script>
<script src="/assets/scripts/custom/login-soft.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-toastr/toastr.min.js"></script>
<script src="/assets/scripts/custom/ui-toastr.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script>
    jQuery(document).ready(function () {
        App.init();
        Login.init();

        <c:if test="${message=='error'}">
        $("#alert_id").attr("style", "display:block");
        </c:if>
        <c:remove var="message" scope="session" />
        <%--alert('<s:property value="attr.message"/>');--%>
        <%--alert('<s:property value="%{#parameters.message}"/>');--%>
        <%--alert('<c:out value="${param.message}"></c:out>');--%>

        <%--alert('<s:property value="%{#parameters.msg}"/>');--%>
        <%--<s:set var="ist" value="#attr.isTrue2"/>--%>
        <c:set var="ist" value="${sessionScope.isTrue2}"></c:set>
        <c:remove var="isTrue2" scope="session"/>
        <c:if test="${ist=='yes'}">
        toastr.options.timeOut = "8000";
        toastr.options.positionClass = "toast-top-center";
        toastr.success("Your register successfully done.");
        </c:if>

//                var form = $('#registerform');
//                $("#registerform").submit(function (e) {
//                    debugger;
//                    if (form.valid() == false) {
//                        //console.log($('#registerform').serializeArray());
//                        return false;
//                    } else {
//                        //console.log($('#registerform').serializeArray());
//                        //var postdata = $(this).serializeArray();
//                        var btn = $("#register-submit-btn");
//                        btn.button('loading');
//                        $.ajax(
//                                {
//                                    //data:postdata,
//                                    url: "register.action",
//                                    //url : formURL,
//                                    data: new FormData(this),
//                                    //data: "firstName=" + $("fn").val(),
//                                    cache: false,
//                                    contentType: false,
//                                    processData: false,
//                                    type: "POST",
//
//                                    success: function (data, textStatus, jqXHR) {
//                                        debugger;
//                                        alert("success");
//                                        alert(data);
//                                    },
//                                    error: function (jqXHR, textStatus, errorThrown) {
//                                        alert("erorr");
//                                        alert(jqXHR);
//                                        alert(textStatus);
//                                    }
//                                }).always(function () {
//                                    btn.button('reset'); //STOP default action
//                                    alert("always");
//                                });
//                        alert("before");
//                        e.preventDefault(e); //STOP default action
//                        alert("after");
//                    }
//                });
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>