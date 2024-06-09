<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<head>
    <link rel="stylesheet" href="/assets/advancedDataTable/jquery.dataTables.css"/>
    <link rel="stylesheet" href="/assets/advancedDataTable/buttons.dataTables.css"/>
</head>
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div class="modal fade" id="portlet-config2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                Widget settings form goes here
            </div>
            <div class="modal-footer">
                <button type="button" class="btn blue">Save changes</button>
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="statusDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Status Details</h4>
            </div>
            <div id="status_body" class="modal-body">

            </div>
            <div class="modal-footer">
                <%--<button type="button" class="btn blue">Save changes</button>--%>
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div class="modal fade" id="articleDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                Are you sure to delete?
            </div>
            <div class="modal-footer">
                <form id="deleteForm">
                    <input type="hidden" id="articleId" name="articleID">
                    <input type="hidden" id="peopleId" name="peopleID">
                    <button type="submit" class="btn blue">Yes</button>
                    <button type="button" class="btn default" data-dismiss="modal">No</button>
                </form>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<%--Modal End--%>
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<!-- BEGIN SAMPLE PORTLET CONFIGURAportlet-configTION MODAL FORM-->
<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Article Info</h4>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="articleForm" method="post" id="articleForm" enctype="multipart/form-data"
                      class="horizontal-form">
                    <input type="hidden" id="articleIdEdit" name="articleID">
                    <input type="hidden" id="peopleIdEdit" name="peopleID">

                    <div class="modal-body">


                        <div class="form-body">


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label id="lb1" class="control-label">
                                            Subject
                                            <span class="required">
											 *
											</span>
                                        </label>

                                        <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input id="subjectInput" type="text" name="subject" class="form-control"
                                                   placeholder="Chee Kin">
															<span class="help-block">
																 This is inline help
															</span>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputFile1">File input
                                        <span class="required">
											 *
											</span>
                                        </label>

                                        <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input type="file" name="fileUpload" id="file">

                                            <p class="help-block">
                                                some help text here.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                        </div>
                        <%--<div class="form-actions right">--%>
                        <%--<button type="button" id="cancel" class="btn default">Cancel</button>--%>
                        <%--<button type="submit" class="btn blue"><i class="fa fa-check"></i> Save--%>
                        <%--</button>--%>
                        <%--</div>--%>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="articleSubmit" class="btn blue">Save changes</button>
                        <button type="button" class="btn default" data-dismiss="modal">Close</button>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<!-- /.modal -->
<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
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
<div class="row">
    <div class="col-md-12">
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Article
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config2" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>


            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="btn-group">
                        <a href="#portlet-config" data-toggle="modal" id="sample_editable_1_new" class="btn green">
                            Add New <i class="fa fa-plus"></i>
                        </a>
                    </div>
                    <div class="btn-group pull-right">
                        <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i
                                class="fa fa-angle-down"></i>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="#">
                                    Print
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Save as PDF
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Export to Excel
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="sample_dt2">
                        <thead>
                        <tr>
                            <th id="th1">
                                subject
                            </th>
                            <th id="th2">
                                status
                            </th>
                            <th id="th3">
                                Modified Date
                            </th>
                            <th id="th4">
                                Created Date
                            </th>
                            <th id="th5">
                                articleId
                            </th>
                            <th id="th6">
                                peopleId
                            </th>
                            <th id="th7">
                                Edit
                            </th>
                            <th id="th8">
                                delete
                            </th>
                            <th id="th9">
                                path
                            </th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="/assets/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/assets/scripts/custom/table-managed.js"></script>
<script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/DataTables-1.10.19.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/Buttons-for-DataTables-1.5.2.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/buttons.print.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/buttons.ColVis.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/jsZip.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/pdfmake.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/pdfmake.font.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/buttons.html5.js" type="text/javascript"></script>

<script>
jQuery(document).ready(function () {

    var dt;
    var edit;

    function show_dataTable() {
        debugger;
        dt = $('#sample_dt2').DataTable({
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
//            columnDefs: [
//                {
//                    targets: -1,
//                    visible: false
//                }
//            ],
//                "fnInitComplete": function (oSettings, json) {
//
//                },
            "fnDrawCallback": function (oSettings) {
                $(".articleDelete").click(function () {
                    var tr = $(this).closest('tr');
                    var row = dt.row(tr);
                    $('#articleId')[0].value = row.data().articleId;
                    $('#peopleId')[0].value = row.data().peopleId;
                });
                $(".articleEdit").click(function () {
                    var tr = $(this).closest('tr');
                    var row = dt.row(tr);
                    edit = true;
                    $('#articleIdEdit')[0].value = row.data().articleId;
                    $('#peopleIdEdit')[0].value = row.data().peopleId;
                    $('#subjectInput')[0].value = row.data().subject;

                });
                $(".statusDetails").click(function () {
                    var tr = $(this).closest('tr');
                    var row = dt.row(tr);
                    $.ajax({
                        url: "/user/evaluatorDetails",
                        type: "POST",
                        data: { articleId: row.data().articleId },
                        async: false,
                        dataType: "html",
                        success: function (result) {
                            $("#status_body").html(result);
                        }
                    });
                });
            },
            "pagingType": "full_numbers",
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"]
            ],
//                "columnDefs": [
//                    { "orderable": false, "targets": [0, 7, 8] }
//                ],
//                "processing": true,
            "serverSide": true,
            "bDestroy": true,
            "ajax": {
                "url": "/user/articleLoad2",
                "type": "GET",
                "contentType": 'application/json; charset=utf-8',
                "cache": false,
                "dataType": "json"
            },
            "aoColumns": [
                { "mData": "subject",
                    "render": function (data, type, row, meta) {
                        if (type === 'display') {
                            data = '<a href="' + row.path + '" target="_blank">' + data + '</a>';
                        }
                        return data;
                    }
                },
                { "mData": "status",
                    "render": function (data, type, row, meta) {
                        if (data === '1') {
                            data = '<a href="#statusDetails" data-toggle="modal" class="statusDetails config">pending</a>';
                        } else if (data === '2') {
                            data = '<a href="#statusDetails" data-toggle="modal" class="statusDetails config">confirmed</a>';
                        } else if (data === '3') {
                            data = '<a href="#statusDetails" data-toggle="modal" class="statusDetails config">need to modify</a>';
                        }else if (data === '4') {
                            data = '<a href="#statusDetails" data-toggle="modal" class="statusDetails config">reject</a>';
                        }
                        return data;
                    }
                },
                { "mData": "modifiedDate" },
                { "mData": "createdDate" },
                { "mData": "articleId" },
                { "mData": "peopleId" },
                {"mData": null,
                    "visible": true,
                    "render": function (data, type, row, meta) {
                        if (type === 'display') {
                            data = '<a href="#portlet-config" data-toggle="modal" class="articleEdit config">Edit</a>';
                        }
                        return data;
                    }
                },
                {"mData": null,
                    "visible": true,
                    "render": function (data, type, row, meta) {
                        if (type === 'display') {
                            data = '<a href="#articleDelete" data-toggle="modal" class="articleDelete config">Delete</a>';
                        }
                        return data;
                    }
                },
                { "mData": "path", "visible": false },
            ]
        });

    }

    show_dataTable();

    $("#articleForm").submit(function (e) {
//            var postdata2 = $(this).serializeArray();
        debugger;
        var form = $('#articleForm');
        form.validate({
            //console.log($('#registerform').serializeArray());
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
                subject: {
                    required: true
                },
                fileUpload: {
                    required: true
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
            $("#articleSubmit").attr("disabled", "disabled");
            var btn = $("#articleSubmit");
            btn.button('loading');
            console.log("setup");
//                var postdata = new FormData(this);
//                $.getScript('/assets/javascript/articleForm2.js', function () {
//                    ArticleForm2.init(postdata);
//                    $("#sample_dt2").DataTable().destroy();
//                    show_dataTable();
//                    $("#articleForm")[0].reset();
//                });
            var postdata = new FormData(this);
            var url;
            if (edit == true) {
                url = "/user/articleUpdate"
                edit = false;
            } else {
                url = "/user/articleForm";
            }
            $.ajax(
                    {
                        //data:postdata,
                        url: url,
                        //url : formURL,
//                        data: postdata2,
                        data: postdata,
                        //data: "firstName=" + $("fn").val(),
                        cache: false,
                        contentType: false,
                        processData: false,
                        type: "post",

                        success: function (data, textStatus, jqXHR) {
                            debugger;
                            $("#sample_dt2").DataTable().destroy();
                            show_dataTable();
//                        alert("success");
//                        alert("Good");
//                        alert(data);
//                            if ($.trim(data) === "yess")
//                                alert("That's one I wanted. Excellent")
                            //Begin of reset form validation
                            //$(".alert-danger").hide();
                            $("#portlet-config").modal("hide")
                            $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
                            $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
                            $('.form-group').removeClass('has-error');
                            $('.form-group').removeClass('has-success');
//                      End of reset form validation

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert("erorr");
                            alert(jqXHR);
                            alert(textStatus);
                        }
                    }).always(function () {
//                    $("#articleSubmit").removeAttr("disabled","disabled")
                        $("#articleSubmit").button('reset');
//                    $(btn).removeClass('disabled');
                    });

            e.preventDefault(e);
        }
    });
    $('#portlet-config').on('hidden.bs.modal', function () {
        // debugger;
        $("#articleForm")[0].reset();
        //Begin of reset form validation
        $(".input-icon .fa-warning").addClass('fa').removeClass('fa-warning');
        $(".input-icon .fa-check").addClass('fa').removeClass('fa-check');
//                  $(".alert-danger").hide();
        $('.form-group').removeClass('has-error');
        $('.form-group').removeClass('has-success');
        //End of reset form validation
    });
    $("#deleteForm").submit(function (e) {
        var postdata = new FormData(this);
//        $.getScript('/assets/javascript/articleDelete2.js', function () {
//            ArticleDelete2.init(postdata);
//            $("#sample_dt2").DataTable().destroy();
//            show_dataTable();
//        });

        $.ajax(
                {
                    //data:postdata,
                    url: "/user/articleDelete2",
                    //url : formURL,
//                        data: postdata2,
                    data: postdata,
                    //data: "firstName=" + $("fn").val(),
                    cache: false,
                    contentType: false,
                    processData: false,
                    type: "post",

                    success: function (data, textStatus, jqXHR) {
                        debugger;
                        $("#sample_dt2").DataTable().destroy();
                        show_dataTable();
                        //Begin of reset form validation
                        //$(".alert-danger").hide();
                        $("#articleDelete").modal("hide")
//End of reset form validation
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        alert("erorr");
                        alert(jqXHR);
                        alert(textStatus);
                    }
                }).always(function () {
//                    $("#articleSubmit").removeAttr("disabled","disabled")
//                    $("#articleSubmit").button('reset');
//                    $(btn).removeClass('disabled');
                });
        e.preventDefault(e);
    });
});
</script>
