<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" href="/assets/test9.css"/>
    <link rel="stylesheet" href="/assets/test10.css"/>

    <%--<link id="DT_bootstrap" rel="stylesheet" href="/assets/plugins/data-tables/DT_bootstrap_rtl.css"/>--%>

    <%--<link href="/assets/advanced-datatable/extensions/TableTools/css/dataTables.colVis.css" rel="stylesheet"/>--%>
    <%--<link href="/assets/advanced-datatable/extensions/TableTools/css/dataTables.tableTools.css" rel="stylesheet"/>--%>
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
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover" id="sample_dt">
                <thead>
                <tr>
                    <th id="th1">
                        path
                    </th>
                    <th id="th2">
                        status
                    </th>
                    <th id="th3">
                        subject
                    </th>
                    <th id="th4">
                        articleID
                    </th>
                    <th id="th5">
                        peopleID
                    </th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</div>
<%--<script type="text/javascript" src="/assets/advanced-datatable/media2/js/jquery.dataTables.min.js"></script>--%>
<%--<script type="text/javascript" src="/assets/plugins/data-tables/DT_bootstrap.js"></script>--%>
<%--<script type="text/javascript" src="/assets/advanced-datatable/extensions/TableTools/js/dataTables.colVis.js"></script>--%>
<%--<script type="text/javascript" src="/assets/advanced-datatable/extensions/TableTools/js/dataTables.tableTools.js"></script>--%>
<%--<script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>--%>

<script src="/assets/test.js" type="text/javascript"></script>
<script src="/assets/test2.js" type="text/javascript"></script>
<script src="/assets/test3.js" type="text/javascript"></script>
<script src="/assets/test4.js" type="text/javascript"></script>
<script src="/assets/test5.js" type="text/javascript"></script>
<script src="/assets/test6.js" type="text/javascript"></script>
<script src="/assets/test7.js" type="text/javascript"></script>
<script src="/assets/test8.js" type="text/javascript"></script>
<script>
    jQuery(document).ready(function () {
        function show_dataTable() {
            var dt;
            debugger;
            dt = $('#sample_dt').DataTable({
                dom: 'CT<"clearfix">lBfrtip',
                buttons: [
                    'copy', 'csv', 'excel',
//                    'pdf',
                    {
                        extend: 'pdfHtml5',
                        download: 'open',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'print',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    'colvis'
                ],
                columnDefs: [
                    {
                        targets: -1,
                        visible: false
                    }
                ],
//                "fnInitComplete": function (oSettings, json) {
//
//                },
//                "fnDrawCallback": function (oSettings) {
//                },
                "pagingType": "full_numbers",
                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                "columnDefs": [
                    { "orderable": false, "targets": 0 }
                ],
//                "processing": true,
                "serverSide": true,
                "ajax": {
                    "url": "/admin/assignRefereeDataTable",
                    "type": "GET",
                    "contentType": 'application/json; charset=utf-8',
                    "cache": false,
                    "dataType": "json"
                },
                "aoColumns": [
                    { "mData": "path" },
                    { "mData": "status" },
                    { "mData": "subject" },
                    { "mData": "articleID" },
                    { "mData": "peopleID" },
//                { "data": "name6", "bSortable": false }
                ]
            });

        }

        show_dataTable();

//        $("#refereeForm").submit(function (e) {
////            var postdata2 = $(this).serializeArray();
//            debugger;
//            var form = $('#refereeForm');
//            form.validate({
//                //console.log($('#registerform').serializeArray());
//                errorElement: 'span', //default input error message container
//                errorClass: 'help-block', // default input error message class
//                focusInvalid: false, // do not focus the last invalid input
//                ignore: "",
//                rules: {
//                    firstName: {
//                        required: true,
//                        rangelength: [3, 50]
//                    },
//                    lastName: {
//                        required: true,
//                        rangelength: [3, 50]
//                    },
//                    nationalNumber: {
//                        required: true,
//                        rangelength: [10, 10]
//                    }
//                },
//                invalidHandler: function (event, validator) { //display error alert on form submit
////                    success2.hide();
////                    error2.show();
////                    App.scrollTo(error2, -200);
//                },
//                errorPlacement: function (error, element) { // render error placement for each input type
//                    var icon = $(element).parent('.input-icon').children('i');
//                    icon.removeClass('fa-check').addClass("fa-warning");
//                    icon.attr("data-original-title", error.text()).tooltip();
//                },
//                highlight: function (element) { // hightlight error inputs
//                    $(element)
//                            .closest('.form-group').addClass('has-error'); // set error class to the control group
//                },
//
//                unhighlight: function (element) { // revert the change done by hightlight
//
//                },
//
//                success: function (label, element) {
//                    var icon = $(element).parent('.input-icon').children('i');
//                    $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
//                    icon.removeClass("fa-warning").addClass("fa-check");
//                },
//
//                submitHandler: function (form) {
////                    success2.show();
////                    error2.hide();
//                }
//            })
//            if (form.valid() == false) {
////                        //console.log($('#registerform').serializeArray());
//                return false;
//            } else {
////                        $("#articleSubmit").addClass('disabled');
//                $("#refereeSubmit").attr("disabled", "disabled");
//                var btn = $("#refereeSubmit");
//                btn.button('loading');
////                console.log("setup");
//                var postdata = new FormData(this);
//                $.getScript('/assets/javascript/refereeForm.js', function () {
//                    RefereeForm.init(postdata);
//                    $("#refereeForm")[0].reset();
//                });
//                e.preventDefault(e);
//            }
//        });
    });
</script>