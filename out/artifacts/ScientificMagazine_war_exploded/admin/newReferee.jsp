<head>
    <link rel="stylesheet" type="text/css" href="/assets/plugins/bootstrap-toastr/toastr-rtl.min.css"/>
</head>
<!-- BEGIN STYLE CUSTOMIZER -->
<div class="theme-panel hidden-xs hidden-sm">
    <div class="toggler">
    </div>
    <div class="toggler-close">
    </div>
    <div class="theme-options">
        <div class="theme-option theme-colors clearfix">
						<span>
							 THEME COLOR
						</span>
            <ul>
                <li class="color-black current color-default" data-style="default">
                </li>
                <li class="color-blue" data-style="blue">
                </li>
                <li class="color-brown" data-style="brown">
                </li>
                <li class="color-purple" data-style="purple">
                </li>
                <li class="color-grey" data-style="grey">
                </li>
                <li class="color-white color-light" data-style="light">
                </li>
            </ul>
        </div>
        <div class="theme-option">
						<span>
							 Layout
						</span>
            <select class="layout-option form-control input-small">
                <option value="fluid" selected="selected">Fluid</option>
                <option value="boxed">Boxed</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Header
						</span>
            <select class="header-option form-control input-small">
                <option value="fixed" selected="selected">Fixed</option>
                <option value="default">Default</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Sidebar
						</span>
            <select class="sidebar-option form-control input-small">
                <option value="fixed">Fixed</option>
                <option value="default" selected="selected">Default</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Sidebar Position
						</span>
            <select class="sidebar-pos-option form-control input-small">
                <option value="left" selected="selected">Left</option>
                <option value="right">Right</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Footer
						</span>
            <select class="footer-option form-control input-small">
                <option value="fixed">Fixed</option>
                <option value="default" selected="selected">Default</option>
            </select>
        </div>
    </div>
</div>
<!-- END STYLE CUSTOMIZER -->
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
            <small>user inbox</small>
            Inbox
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
                            Another user.actions
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
                    Inbox
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="portlet box blue">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-reorder"></i>Referee Form
        </div>
        <div class="tools">
            <a href="javascript:;" class="collapse">
            </a>
            <a href="#portlet-config" data-toggle="modal" class="config">
            </a>
            <a href="javascript:;" class="reload">
            </a>
            <a href="javascript:;" class="remove">
            </a>
        </div>
    </div>
    <div class="portlet-body form">
        <!-- BEGIN FORM-->
        <form id="refereeForm" action="#" class="horizontal-form">
            <div class="form-body">
                <h3 class="form-section">Referee Info</h3>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">First Name
                            <span class="required">
											 *
											</span>
                            </label>

                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" name="firstName" id="firstName" class="form-control"
                                       placeholder="First Name">
															<span class="help-block">
																 This is inline help
															</span>
                            </div>
                        </div>
                    </div>
                    <!--/span-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">Last Name
                            <span class="required">
											 *
											</span>
                            </label>

                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" name="lastName" id="lastName" class="form-control"
                                       placeholder="Last Name">
															<span class="help-block">
																 This is inline help
															</span>
                            </div>
                        </div>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
                <div class="row">
                    <!--/span-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="control-label">National Number
                            <span class="required">
											 *
											</span>
                            </label>

                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" name="nationalNumber" id="nationalNumber" class="form-control"
                                       placeholder="National Number">
															<span class="help-block">
																 This is inline help
															</span>
                            </div>
                        </div>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
            </div>
            <div class="form-actions right">
                <button type="button" class="btn default">Cancel</button>
                <button id="refereeSubmit" type="submit" class="btn blue"><i class="fa fa-check"></i> Save</button>
            </div>
        </form>
        <!-- END FORM-->
    </div>
</div>
<script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-toastr/toastr.min.js"></script>
<script src="/assets/scripts/custom/ui-toastr.js"></script>
<script>
    jQuery(document).ready(function () {
        $("#refereeForm").submit(function (e) {
//            var postdata2 = $(this).serializeArray();
            debugger;
            var form = $('#refereeForm');
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
                $("#refereeSubmit").attr("disabled", "disabled");
                var btn = $("#refereeSubmit");
                btn.button('loading');
//                console.log("setup");
                var postdata = new FormData(this);
                $.getScript('/assets/javascript/refereeForm.js', function () {
                    RefereeForm.init(postdata);
                    $("#refereeForm")[0].reset();
                });
                e.preventDefault(e);
            }
        });
    });
</script>