<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<section role="main" class="content-body">
	<header class="page-header">
		<h2>${resourceVo.currentResource.title }</h2>
		<div class="right-wrapper pull-right">
			<ol class="breadcrumbs">
				<li><a href="index.html"> <i class="fa fa-home"></i>
				</a></li>
				<c:forEach items="${resourceVo.crumbs }" var="crumb">
					<li><span><c:choose>
								<c:when test="${not empty crumb.url}">
									<a href="#">${crumb.title }</a>
								</c:when>
								<c:otherwise>${crumb.title }</c:otherwise>
							</c:choose></span></li>
				</c:forEach>
			</ol>
			<a class="sidebar-right-toggle" data-open="sidebar-right"> <!-- <i
				class="fa fa-chevron-left"></i> -->
			</a>
		</div>
	</header>
	<!-- start: page -->
	<section class="panel">
		<header class="panel-heading">
			<div class="panel-actions">
				<!-- <a href="#" class="panel-action panel-action-toggle"
					data-panel-toggle></a> <a href="#"
					class="panel-action panel-action-dismiss" data-panel-dismiss></a> -->
			</div>
			<h2 class="panel-title">${resourceVo.currentResource.title }列表</h2>
		</header>
		<div class="panel-body">
			<c:if test="${diseditable==null }">
				<div class="row">
					<div class="col-sm-6">
						<div class="mb-md">
							<tiles:insertAttribute name="baseDeal" ignore="true" />
							<tiles:insertAttribute name="otherDeal" ignore="true" />
						</div>
					</div>
				</div>
			</c:if>
			<tiles:insertAttribute name="listGrid" />
		</div>
	</section>
	<div id="dialog" class="modal-block mfp-hide">
		<section class="panel">
			<header class="panel-heading">
				<h2 class="panel-title">Are you sure?</h2>
			</header>
			<div class="panel-body">
				<div class="modal-wrapper">
					<div class="modal-text">
						<p>Are you sure that you want to delete this row?</p>
					</div>
				</div>
			</div>
			<footer class="panel-footer">
				<div class="row">
					<div class="col-md-12 text-right">
						<button id="dialogConfirm" class="btn btn-primary">Confirm</button>
						<button id="dialogCancel" class="btn btn-default">Cancel</button>
					</div>
				</div>
			</footer>
		</section>
	</div>
</section>

<!-- Modal Form -->
<!-- <div id="modalForm" class="modal-block modal-block-primary"></div> -->

<!-- Specific Page Vendor -->
<script
	src="<c:url value='/assets/javascripts/tables/examples.datatables.editable.js'/>"></script>
<script
	src="<c:url value='/assets/javascripts/ui-elements/examples.modals.js'/>"></script>


