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
			<a class="sidebar-right-toggle" data-open="sidebar-right"><i
				class="fa fa-chevron-left"></i></a>
		</div>
	</header>
	<!-- start: page -->
	<div class="row">
		<div class="col-md-12">
			<tiles:insertAttribute name="chartGrid" ignore="true" />
		</div>
	</div>
</section>