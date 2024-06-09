<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="/struts-tags" prefix="s"%>

<%--<a href="<s:url user.actions="friendsLink"/>" >Friends</a><br>--%>
<%--<a href="<s:url user.actions="officeLink"/>" >The Office</a><br>--%>

<div class="page-sidebar navbar-collapse collapse">
<!-- BEGIN SIDEBAR MENU -->
<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
<li class="sidebar-toggler-wrapper">
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    <div class="sidebar-toggler hidden-phone">
    </div>
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
</li>
<li class="sidebar-search-wrapper">
    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
    <form class="sidebar-search" action="extra_search.html" method="POST">
        <div class="form-container">
            <div class="input-box">
                <a href="javascript:;" class="remove">
                </a>
                <input type="text" placeholder="Search..."/>
                <input type="button" class="submit" value=" "/>
            </div>
        </div>
    </form>
    <!-- END RESPONSIVE QUICK SEARCH FORM -->
</li>
<li class="start">
    <a href="#">
        <i class="fa fa-home"></i>
						<span class="title">
							Dashboard
						</span>
    </a>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-shopping-cart"></i>
						<span class="title">
							Article
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href id="articleLoad">
                <i class="fa fa-bullhorn"></i>
                New Article
            </a>
        </li>
        <li>
            <a href id="articleLoad2">
                <i class="fa fa-bullhorn"></i>
                New Article2
            </a>
        </li>
    </ul>
</li>
<c:if test="${role=='admin'}">
<li>
    <a href="javascript:;">
        <i class="fa fa-gift"></i>
						<span class="title">
							Evaluation
						</span>
						<span class="arrow">
						</span>
    </a>
    <ul class="sub-menu">
        <li class="tooltips" data-container="body" data-placement="left" data-html="true"
            data-original-title="put messages">
            <a href="" id="newReferee">
								<span class="title">
									New Referee
								</span>
            </a>
        </li>
        <li class="tooltips" data-container="body" data-placement="left" data-html="true"
            data-original-title="Assign Referee">
            <a href="" id="assignReferee">
								<span class="title">
									Assign Referee
								</span>
            </a>
        </li>
    </ul>
</li>
</c:if>
</ul>
<!-- END SIDEBAR MENU -->
</div>