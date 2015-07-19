<!doctype html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<html class="fixed">
<head>
<!-- Basic -->
<meta charset="UTF-8">
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<%@ include file="/include.style.jsp"%>
</head>
<body>
	<!-- start: page -->
	<section class="body-sign">
		<div class="center-sign">
			<a href="/" class="logo pull-left"> <img
				src="assets/images/logo.png" height="54" alt="Porto Admin" />
			</a>

			<div class="panel panel-sign">
				<div class="panel-title-sign mt-xl text-right">
					<h2 class="title text-uppercase text-weight-bold m-none">
						<i class="fa fa-user mr-xs"></i> Sign In
					</h2>
				</div>
				<div class="panel-body">
					<form id="loginForm" action="<c:url value='/login'/>" method="post">
						<div class="form-group mb-lg">
							<label>Username</label>
							<div class="input-group input-group-icon">
								<input name="username" value="${username}" type="text"
									class="form-control input-lg" /> <span
									class="input-group-addon"> <span class="icon icon-lg">
										<i class="fa fa-user"></i>
								</span>
								</span>
							</div>
						</div>
						<div class="form-group mb-lg">
							<div class="clearfix">
								<label class="pull-left">Password</label> <a href="#"
									class="pull-right">Lost Password?</a>
							</div>
							<div class="input-group input-group-icon">
								<input name="password" type="password"
									class="form-control input-lg" /> <span
									class="input-group-addon"> <span class="icon icon-lg">
										<i class="fa fa-lock"></i>
								</span>
								</span>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-8">
								<div class="checkbox-custom checkbox-default">
									<input id="RememberMe" name="rememberMe" type="checkbox" /> <label
										for="RememberMe">Remember Me</label>
								</div>
							</div>
							<div class="col-sm-4 text-right">
								<button type="submit" class="btn btn-primary hidden-xs">Sign
									In</button>
							</div>
						</div>

						<span class="mt-lg mb-lg line-thru text-center text-uppercase">
							<span>or</span>
						</span>

						<!-- <div class="mb-xs text-center">
							<a class="btn btn-facebook mb-md ml-xs mr-xs">Connect with <i
								class="fa fa-facebook"></i></a> <a
								class="btn btn-twitter mb-md ml-xs mr-xs">Connect with <i
								class="fa fa-twitter"></i></a>
						</div>

						<p class="text-center">
							Don't have an account yet? <a href="pages-signup.html">Sign
								Up!</a>
								 -->
					</form>
				</div>
			</div>
			<p class="text-center text-muted mt-md mb-md">&copy; Copyright
				2014. All Rights Reserved.</p>
		</div>
	</section>
	<div id="errorDialog" class="modal-block mfp-hide">
		<section class="panel">
			<header class="panel-heading">
				<h2 class="panel-title">信息提示</h2>
			</header>
			<div class="panel-body">
				<div class="modal-wrapper">
					<div class="modal-text">
						<p>用户名或密码错误，请重试！</p>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
<%@ include file="/include.js.jsp"%>
<%
	String error = (String) request
			.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
	if (error != null) {
%>
<script type="text/javascript">
	$.magnificPopup.open({
		items : {
			src : "#errorDialog",
			type : 'inline',
			modal : true
		}
	});
</script>
<%
	}
%>
</html>