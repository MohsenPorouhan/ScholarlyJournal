<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" href="/assets/advancedDataTable/jquery.dataTables.css"/>
    <link rel="stylesheet" href="/assets/advancedDataTable/buttons.dataTables.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-rtl.css"/>
    <link rel="stylesheet" type="text/css" href="/assets/plugins/select2/select2-metronic-rtl.css"/>
    <style>
        td.details-control {
            background: url('/assets/img/details_open.png') no-repeat center center;
            cursor: pointer;
        }

        tr.details td.details-control {
            background: url('/assets/img/details_close.png') no-repeat center center;
        }

        .dataTable .details td, .dataTable .details th {
            padding: 8px;
            background: none;
            border: 0;
        }
    </style>

    <%--<link id="DT_bootstrap" rel="stylesheet" href="/assets/plugins/data-tables/DT_bootstrap_rtl.css"/>--%>

    <%--<link href="/assets/advanced-datatable/extensions/TableTools/css/dataTables.colVis.css" rel="stylesheet"/>--%>
    <%--<link href="/assets/advanced-datatable/extensions/TableTools/css/dataTables.tableTools.css" rel="stylesheet"/>--%>
</head>
<div class="modal fade bd-example-modal-lg" id="portlet-config2" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Assign Referee and idea of referee</h4>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="" method="post" id="refereeForm"
                      class="horizontal-form">
                    <input type="hidden" name="articleId" id="articleId"/>
                    <input type="hidden" name="peopleId" id="peopleId"/>

                    <div class="modal-body">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="control-label col-md-3">Category
                                        <span class="required">
											 *
											</span>
                                    </label>

                                    <div class="col-md-9">
                                        <div class="form-group">
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <select id="refereeId" name="refereeId"
                                                        class="form-control select2_category">
                                                    <%--<option value="Category 1">Category 1</option>--%>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <label class="control-label col-md-3">Textarea
                                    <span class="required">
											 *
											</span>
                                    </label>

                                    <div class="col-md-9">
                                        <div class="form-group">
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <textarea name="refereeIdea" class="form-control" rows="3"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                        <button type="submit" id="assignRefereeSubmit" class="btn blue">Save changes</button>
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

<div class="modal fade bd-example-modal-sm" id="portlet-config3" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Update status</h4>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="" method="post" id="statusForm"
                      class="horizontal-form">

                    <input type="hidden" name="articleId" id="articleId2"/>
                    <input type="hidden" name="peopleId" id="peopleId2"/>

                    <div class="modal-body">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="control-label col-md-6">Category
                                        <span class="required">
											 *
											</span>
                                    </label>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="input-icon right">
                                                <i class="fa"></i>
                                                <select name="status"
                                                        class="form-control select2_category">
                                                    <option></option>
                                                    <option value="1">pending</option>
                                                    <option value="2">confirmed</option>
                                                    <option value="3">need to modify</option>
                                                    <option value="4">reject</option>
                                                </select>
                                            </div>
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
                        <button type="submit" id="statusSubmit" class="btn blue">Save changes</button>
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
                        created date
                    </th>
                    <th id="th4">
                        modified date
                    </th>
                    <th id="th5">
                        subject
                    </th>
                    <th id="th6">
                        articleID
                    </th>
                    <th id="th7">
                        peopleID
                    </th>
                    <th id="th8">
                        firstname
                    </th>
                    <th id="th9">
                        lastname
                    </th>
                    <th id="th10">
                        Add Referee Idea
                    </th>
                    <th></th>
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

<script src="/assets/advancedDataTable/DataTables-1.10.19.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/Buttons-for-DataTables-1.5.2.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/buttons.print.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/buttons.ColVis.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/jsZip.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/pdfmake.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/pdfmake.font.js" type="text/javascript"></script>
<script src="/assets/advancedDataTable/buttons.html5.js" type="text/javascript"></script>
<script src="/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/assets/plugins/select2/select2.min.js"></script>
<script src="/assets/scripts/custom/form-samples.js"></script>
<script src="/assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>

<script>
jQuery(document).ready(function () {
    FormSamples.init();
    function format(d) {
        var r;
        $.ajax({
            url: "/user/evaluatorDetails",
            type: "POST",
            data: { articleId: d.articleID },
            async: false,
            dataType: "html",
            success: function (result) {
                r = result;

            }
        });
//        alert(r);
        return r;
    }
    var dt;
    function show_dataTable() {

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
                    targets: [-1],
                    visible: false
                }
            ],
//                "fnInitComplete": function (oSettings, json) {
//
//                },
            "fnDrawCallback": function (oSettings) {
                $(".addReferee").click(function () {
                    var tr = $(this).closest('tr');
                    var row = dt.row(tr);
                    $('#articleId')[0].value = row.data().articleID;
                    $('#peopleId')[0].value = row.data().peopleID;
                    $.ajax(
                            {
                                //data:postdata,
                                url: "/admin/refereeList",
                                //url : formURL,
//                                  data: postdata2,
//                                    data: postdata,
                                //data: "firstName=" + $("fn").val(),
                                cache: false,
                                contentType: false,
                                processData: false,
                                type: "get",

                                success: function (data, textStatus, jqXHR) {

                                    $("#refereeId").html(data);
                                },
                                error: function (jqXHR, textStatus, errorThrown) {
                                    alert("erorr");
                                    alert(jqXHR);
                                    alert(textStatus);
                                }
                            }).always(function () {

                            });
                });

                $(".updateStatus").click(function () {
                    var tr = $(this).closest('tr');
                    var row = dt.row(tr);
                    $('#articleId2')[0].value = row.data().articleID;
                    $('#peopleId2')[0].value = row.data().peopleID;
                });

                // Array to track the ids of the details displayed rows
                var detailRows = [];
                $('#sample_dt tbody').on('click', 'tr td.details-control', function () {
                    var tr = $(this).closest('tr');
                    var row = dt.row(tr);
                    var idx = $.inArray(tr.attr('id'), detailRows);

                    if (row.child.isShown()) {
                        tr.removeClass('details');
                        row.child.hide();

                        // Remove from the 'open' array
                        detailRows.splice(idx, 1);
                    }
                    else {
                        tr.addClass('details');
                        row.child(format(row.data())).show();

                        // Add to the 'open' array
                        if (idx === -1) {
                            detailRows.push(tr.attr('id'));
                        }
                    }
                });
                // On each draw, loop over the `detailRows` array and show any child rows
                dt.on('draw', function () {
                    $.each(detailRows, function (i, id) {
                        $('#' + id + ' td.details-control').trigger('click');
                    });
                });
            },
            "pagingType": "full_numbers",
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"]
            ],
            "columnDefs": [
                { "orderable": false, "targets": [0,9] }
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
                {
                    "mData": "path",
                    "render": function (data, type, row, meta) {
                        if (type === 'display') {
                            data = '<a href="' + data + '" target="_blank">' + row.subject + '</a>';
                        }
                        return data;
                    }
                },
//                    { "mData": "path" },
                { "mData": "status",
                    "render": function (data, type, row, meta) {
                        if (data === '1') {
                            data = '<a href="#portlet-config3" data-toggle="modal" class="updateStatus config">pending</a>';
                        } else if (data === '2') {
                            data = '<a href="#portlet-config3" data-toggle="modal" class="updateStatus config">confirmed</a>';
                        } else if (data === '3') {
                            data = '<a href="#portlet-config3" data-toggle="modal" class="updateStatus config">need to modify</a>';
                        }else if (data === '4') {
                            data = '<a href="#portlet-config3" data-toggle="modal" class="updateStatus config">reject</a>';
                        }
                        return data;
                    }},
                { "mData": "createdDate" },
                { "mData": "modifiedDate" },
                { "mData": "subject","visible": false },
                { "mData": "articleID", "visible": false },
                { "mData": "peopleID", "visible": false },
                { "mData": "firstname" },
                { "mData": "lastname" },
                {"mData": null,
                    "visible": true,
                    "render": function (data, type, row, meta) {
                        if (type === 'display') {
                            data = '<a href="#portlet-config2" data-toggle="modal" class="addReferee config">Add Refere Idea</a>';
                        }
                        return data;
                    }
                },
                {
                    "class": "details-control",
                    "orderable": false,
                    "data": null,
                    "defaultContent": ""
                }
//                { "data": "name6", "bSortable": false }
            ]
        });

    }

    show_dataTable();

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
                refereeId: {
                    required: true
                },
                refereeIdea: {
                    required: true,
                    rangelength: [10, 100]
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
            $("#assignRefereeSubmit").attr("disabled", "disabled");
            var btn = $("#assignRefereeSubmit");
            btn.button('loading');
//                console.log("setup");
            var postdata = new FormData(this);
            $.getScript('/assets/javascript/evaluatorForm.js', function () {
                EvaluatorForm.init(postdata);
                $("#refereeForm")[0].reset();
            });
            e.preventDefault(e);
        }
    });
    $("#statusForm").submit(function (e) {
        $("#statusSubmit").attr("disabled", "disabled");
        var btn = $("#statusSubmit");
        btn.button('loading');
        var postdata = new FormData(this);
        $.getScript('/assets/javascript/statusForm.js', function () {
            StatusForm.init(postdata);
            $("#refereeForm")[0].reset();
        });
//        $("#sample_dt").DataTable().destroy();
//        show_dataTable();
        e.preventDefault(e);
    });
});
</script>