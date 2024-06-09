<%@taglib uri="/struts-tags" prefix="s" %>
<head>
    <link rel="stylesheet" type="text/css" href="/assets/plugins/bootstrap-toastr/toastr-rtl.min.css"/>
</head>
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
            <small>user profile sample</small>
            User Profile
        </h3>
        <ul class="page-breadcrumb breadcrumb">
            <li class="btn-group">
                <button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                        data-delay="1000" data-close-others="true">
							<span>
								Actions
							</span>
                    <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu pull-right" role="menu">
                    <li>
                        <a href="#">
                            Action
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            Another action
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            Something else here
                        </a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">
                            Separated link
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <i class="fa fa-home"></i>
                <a href="index.html">
                    Home
                </a>
                <i class="fa fa-angle-left"></i>
            </li>
            <li>
                <a href="#">
                    Extra
                </a>
                <i class="fa fa-angle-left"></i>
            </li>
            <li>
                <a href="#">
                    User Profile
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row profile">
    <div class="col-md-12">
        <!--BEGIN TABS-->
        <div class="tabbable tabbable-custom tabbable-full-width">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#tab_1_3" data-toggle="tab">
                        Account
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab_1_3">
                    <div class="row profile-account">
                        <div class="col-md-3">
                            <ul class="ver-inline-menu tabbable margin-bottom-10">
                                <li class="active">
                                    <a data-toggle="tab" href="#tab_1-1">
                                        <i class="fa fa-cog"></i> Personal info
                                    </a>
												<span class="after">
												</span>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab_3-3">
                                        <i class="fa fa-lock"></i> Change Password
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-9">
                            <div class="tab-content">
                                <div id="tab_1-1" class="tab-pane active">
                                    <form id="myProfileForm">
                                        <s:iterator value="list" var="people">
                                            <input type="hidden" value="<s:property value="#people[0]"/>"
                                                   name="peopleId"/>

                                            <div class="form-group">
                                                <label id="lb1" class="control-label">
                                                    First Name
                                            <span class="required">
											 *
											</span>
                                                </label>

                                                <div class="input-icon right">
                                                    <i class="fa"></i>
                                                    <input value="<s:property value="#people[1]"/>" name="firstName"
                                                           type="text" placeholder="First Name"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">Last Name
                                                <span class="required">
											 *
											</span>
                                                </label>

                                                <div class="input-icon right">
                                                    <i class="fa"></i>
                                                    <input value="<s:property value="#people[2]"/>" name="lastName"
                                                           type="text" placeholder="Last Name"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label">National Number
                                                   <span class="required">
											 *
											</span>
                                                </label>

                                                <div class="input-icon right">
                                                    <i class="fa"></i>
                                                    <input value="<s:property value="#people[3]"/>"
                                                           name="nationalNumber" type="text"
                                                           placeholder="National Number"
                                                           class="form-control"/>
                                                </div>
                                            </div>
                                        </s:iterator>
                                        <div class="margiv-top-10">
                                            <button id="btnMyProfile" type="submit" class="btn green">Save Changes
                                            </button>
                                            <a href="#" class="btn default">
                                                Cancel
                                            </a>
                                        </div>
                                    </form>
                                </div>
                                <div id="tab_3-3" class="tab-pane">
                                    <form id="passwordChange">
                                        <div class="form-group">
                                            <label class="control-label">Current Password
                                                 <span class="required">
											 *
											</span>
                                            </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input name="currentPassword" type="password" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">New Password
                                                <span class="required">
											 *
											</span>
                                            </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input id="newPass" name="newPassword" type="password"
                                                       class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Re-type New Password
                                                <span class="required">
											 *
											</span>
                                            </label>

                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <input name="retypeNewPassword" type="password" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="margin-top-10">
                                            <button id="btnChangePassword" type="submit" class="btn green">Change
                                                Password
                                            </button>
                                            <a href="#" class="btn default">
                                                Cancel
                                            </a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--end col-md-9-->
                    </div>
                </div>
                <!--end tab-pane-->
            </div>
        </div>
        <!--END TABS-->
    </div>
</div>
<!-- END PAGE CONTENT-->
<script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-toastr/toastr.min.js"></script>
<script src="/assets/scripts/custom/ui-toastr.js"></script>
<script>
jQuery(document).ready(function () {
    $("#myProfileForm").submit(function (e) {
//            var postdata2 = $(this).serializeArray();
        debugger;
        var form = $('#myProfileForm');
        form.validate({
            //console.log($('#registerform').serializeArray());
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                firstName: {
                    required: true,
                    rangelength: [3, 50]
                },
                lastName: {
                    required: true,
                    rangelength: [3, 50]
                },
                nationalNumber: {
                    required: true,
                    number: true,
                    rangelength: [10, 10]
                }
            },
            invalidHandler: function (event, validator) { //display error alert on form submit
//                    success2.hide();
//                    error2.show();
//                    App.scrollTo(error2, -200);
            },
            errorPlacement: function (error, element) { // render error placement for each input type
                var icon = $(element).parent('.input-icon').children('i');
                icon.removeClass('fa-check').addClass("fa-warning");
                icon.attr("data-original-title", error.text()).tooltip();
            },
            highlight: function (element) { // hightlight error inputs
                $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function (element) { // revert the change done by hightlight

            },

            success: function (label, element) {
                var icon = $(element).parent('.input-icon').children('i');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                icon.removeClass("fa-warning").addClass("fa-check");
            },

            submitHandler: function (form) {
//                    success2.show();
//                    error2.hide();
            }
        })
        if (form.valid() == false) {
//                        //console.log($('#registerform').serializeArray());
            return false;
        } else {
//                        $("#articleSubmit").addClass('disabled');
            $("#btnMyProfile").attr("disabled", "disabled");
            var btn = $("#btnMyProfile");
            btn.button('loading');
            console.log("setup");
            var postdata = new FormData(this);
            $.ajax(
                    {
                        //data:postdata,
                        url: "/user/myProfileEdit",
                        //url : formURL,
//                        data: postdata2,
                        data: postdata,
                        //data: "firstName=" + $("fn").val(),
                        cache: false,
                        contentType: false,
                        processData: false,
                        type: "post",

                        success: function (data, textStatus, jqXHR) {
                            toastr.options.timeOut = "8000";
                            toastr.options.positionClass = "toast-top-center";
                            toastr.success("Your personal information successfully edited.");
//                        alert("Good");
//                        alert(data);

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert("erorr");
                            alert(jqXHR);
                            alert(textStatus);
                        }
                    }).always(function () {
//                    $("#articleSubmit").removeAttr("disabled","disabled")
                        $("#btnMyProfile").button('reset');
//                    $(btn).removeClass('disabled');
                    });

            e.preventDefault(e);
        }
    });


    $("#passwordChange").submit(function (e) {
//            var postdata2 = $(this).serializeArray();
        debugger;
        var form = $('#passwordChange');
        form.validate({
            //console.log($('#registerform').serializeArray());
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                currentPassword: {
                    required: true
                },
                newPassword: {
                    required: true
                },
                retypeNewPassword: {
                    required: true,
                    equalTo: "#newPass"
                }
            },
            invalidHandler: function (event, validator) { //display error alert on form submit
//                    success2.hide();
//                    error2.show();
//                    App.scrollTo(error2, -200);
            },
            errorPlacement: function (error, element) { // render error placement for each input type
                var icon = $(element).parent('.input-icon').children('i');
                icon.removeClass('fa-check').addClass("fa-warning");
                icon.attr("data-original-title", error.text()).tooltip();
            },
            highlight: function (element) { // hightlight error inputs
                $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
            },

            unhighlight: function (element) { // revert the change done by hightlight

            },

            success: function (label, element) {
                var icon = $(element).parent('.input-icon').children('i');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                icon.removeClass("fa-warning").addClass("fa-check");
            },

            submitHandler: function (form) {
//                    success2.show();
//                    error2.hide();
            }
        })
        if (form.valid() == false) {
//                        //console.log($('#registerform').serializeArray());
            return false;
        } else {
//                        $("#articleSubmit").addClass('disabled');
            $("#btnChangePassword").attr("disabled", "disabled");
            var btn = $("#btnChangePassword");
            btn.button('loading');
            console.log("setup");
            var postdata = new FormData(this);
            $.ajax(
                    {
                        //data:postdata,
                        url: "/user/passwordChange",
                        //url : formURL,
//                        data: postdata2,
                        data: postdata,
                        //data: "firstName=" + $("fn").val(),
                        cache: false,
                        contentType: false,
                        processData: false,
                        type: "post",

                        success: function (data, textStatus, jqXHR) {
                            if (data.trim() == "true") {
                                toastr.options.timeOut = "8000";
                                toastr.options.positionClass = "toast-top-center";
                                toastr.success("Your password successfully edited.");
                            }else{
                                toastr.options.timeOut = "8000";
                                toastr.options.positionClass = "toast-top-center";
                                toastr.success("The current password is wrong.");
                            }
//                        alert("Good");
//                        alert(data);

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert("erorr");
                            alert(jqXHR);
                            alert(textStatus);
                        }
                    }).always(function () {
//                    $("#articleSubmit").removeAttr("disabled","disabled")
                        $("#btnChangePassword").button('reset');
//                    $(btn).removeClass('disabled');
                    });

            e.preventDefault(e);
        }
    });
});
</script>