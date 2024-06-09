<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
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
<div class="row inbox">
    <div class="col-md-2">
        <ul class="inbox-nav margin-bottom-10">
            <li class="compose-btn">
                <a href="javascript:;" data-title="Compose" class="btn green">
                    <i class="fa fa-edit"></i> Compose
                </a>
            </li>
            <li class="inbox active">
                <a href="javascript:;" class="btn" data-title="Inbox">
                    Inbox(3)
                </a>
                <b></b>
            </li>
            <li class="sent">
                <a class="btn" href="javascript:;" data-title="Sent">
                    Sent
                </a>
                <b></b>
            </li>
            <li class="draft">
                <a class="btn" href="javascript:;" data-title="Draft">
                    Draft
                </a>
                <b></b>
            </li>
            <li class="trash">
                <a class="btn" href="javascript:;" data-title="Trash">
                    Trash
                </a>
                <b></b>
            </li>
        </ul>
    </div>
    <div class="col-md-10">
        <div class="inbox-header">
            <h1 class="pull-left">Inbox</h1>

            <form class="form-inline pull-right" action="" type="post">
                <div class="input-group input-medium">
                    <input type="text" class="form-control" placeholder="Password" name="password">
								<span class="input-group-btn">
									<button type="submit" class="btn green"><i class="fa fa-search"></i></button>
								</span>
                </div>
            </form>
        </div>
        <div class="inbox-loading">
            Loading...
        </div>
        <div class="inbox-content">
        </div>
    </div>
</div>