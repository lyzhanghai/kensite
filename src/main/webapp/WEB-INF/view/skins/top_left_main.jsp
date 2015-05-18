<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/taglib/common.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="/WEB-INF/view/taglib/header.jsp" %>
</head>

<body class="page-body ${theme}">
	<div class="settings-pane">
		<a href="#" data-toggle="settings-pane" data-animate="true">
			&times;
		</a>
		<div class="settings-pane-inner">
			<div class="row">
				<div class="col-md-4">
					<div class="user-info">
						<div class="user-image">
							<a href="javascript:void(0);">
								<img src="${ctx_assets}/img/user.jpg" style="width: 100px;" class="img-responsive img-circle" />
							</a>
						</div>
						<div class="user-details">
							<h3>
								<a href="javascript:void(0);">${currentUser.name}</a>
								<!-- Available statuses: is-online, is-idle, is-busy and is-offline -->
								<span class="user-status is-online"></span>
							</h3>
							<p class="user-title">JAVA开发工程师${theme}</p>
							<div class="user-links">
								<a href="javascript:void(0);" class="btn btn-success">编辑</a>
								<a href="${ctx}/login/logout.do" class="btn btn-danger">登出</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 link-blocks-env">
					<div class="links-block left-sep">
						<h4>
							<span>皮肤</span>
						</h4>
						
						<ul class="list-unstyled">
							<li>
								<a href="javascript:setTheme('');">
									<i class="fa-angle-right"></i>
									默认
								</a>
							</li>
							<li>
								<a href="javascript:setTheme('aero');">
									<i class="fa-angle-right"></i>
									太空
								</a>
							</li>
							<li>
								<a href="javascript:setTheme('navy');">
									<i class="fa-angle-right"></i>
									宝石蓝
								</a>
							</li>
							<li>
								<a href="javascript:setTheme('green');">
									<i class="fa-angle-right"></i>
									祖母绿
								</a>
							</li>
						</ul>
					</div>
					<div class="links-block left-sep">
						<h4>
							<span>皮肤</span>
						</h4>
						<ul class="list-unstyled">
							<li>
								<a href="javascript:setTheme('turquoise');">
									<i class="fa-angle-right"></i>
									青绿色
								</a>
							</li>
							<li>
								<a href="javascript:setTheme('purple');">
									<i class="fa-angle-right"></i>
									幻紫
								</a>
							</li>
							<li>
								<a href="javascript:setTheme('watermelon');">
									<i class="fa-angle-right"></i>
									西瓜红
								</a>
							</li>
							<li>
								<a href="javascript:setTheme('lemonade');">
									<i class="fa-angle-right"></i>
									柠檬黄
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar horizontal-menu navbar-fixed-top"><!-- set fixed position by adding class "navbar-fixed-top" -->
		<div class="navbar-inner">
			<!-- Navbar Brand -->
			<div class="navbar-brand">
				<a href="dashboard-1.html" class="logo">
					<img src="${ctx_assets}/img/logo-white-bg@2x.png" width="80" alt="" class="hidden-xs" />
					<img src="${ctx_assets}/img/logo@2x.png" width="80" alt="" class="visible-xs" />
				</a>
				<a href="#" data-toggle="settings-pane" data-animate="true">
					<i class="linecons-cog"></i>
				</a>
			</div>
			<!-- Mobile Toggles Links -->
			<div class="nav navbar-mobile">
				<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
				<div class="mobile-menu-toggle">
					<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
					<a href="#" data-toggle="settings-pane" data-animate="true">
						<i class="linecons-cog"></i>
					</a>
					<a href="#" data-toggle="user-info-menu-horizontal">
						<i class="fa-bell-o"></i>
						<span class="badge badge-success">7</span>
					</a>
					<!-- data-toggle="mobile-menu-horizontal" will show horizontal menu links only -->
					<!-- data-toggle="mobile-menu" will show sidebar menu links only -->
					<!-- data-toggle="mobile-menu-both" will show sidebar and horizontal menu links -->
					<a href="#" data-toggle="mobile-menu-horizontal">
						<i class="fa-bars"></i>
					</a>
				</div>
			</div>
			<div class="navbar-mobile-clear"></div>
			<!-- main menu -->
			<!-- 
			<ul class="navbar-nav">
				<c:forEach var="tree_1" items="${menuList}" varStatus="status">
					<c:forEach var="tree_2" items="${tree_1.children}" varStatus="status">
						<li class="">
							<a href="javascript:jumpTo('${ctx}${tree_2.attributes.url}', '', $(this))">
								<i class="linecons-cog"></i>
								<span class="title">${tree_2.text}</span>
							</a>
							<c:if test="${not empty tree_2.children}">
								<ul>
								<c:forEach var="tree_3" items="${tree_2.children}" varStatus="status">
									<li class="">
										<a href="javascript:jumpTo('${ctx}${tree_3.attributes.url}', '', $(this))">
											<i class="linecons-cog"></i>
											<span class="title">${tree_3.text}</span>
										</a>
									</li>
								</c:forEach>
								</ul>
							</c:if>
						</li>
					</c:forEach>
				</c:forEach>
			</ul>
			-->
			<!-- notifications and other links -->
			<ul class="nav nav-userinfo navbar-right">
				<li class="search-form"><!-- You can add "always-visible" to show make the search input visible -->
					<form method="get" action="extra-search.html">
						<input type="text" name="s" class="form-control search-field" placeholder="Type to search..." />
						<button type="submit" class="btn btn-link">
							<i class="linecons-search"></i>
						</button>
					</form>
				</li>
				<li class="dropdown xs-left">
					<a href="#" data-toggle="dropdown" class="notification-icon">
						<i class="fa-envelope-o"></i>
						<span class="badge badge-green">15</span>
					</a>
					<ul class="dropdown-menu messages">
					<li>
						<ul class="dropdown-menu-list list-unstyled ps-scrollbar">
							<li class="active"><!-- "active" class means message is unread -->
								<a href="#">
									<span class="line">
										<strong>Luc Chartier</strong>
										<span class="light small">- yesterday</span>
									</span>
									<span class="line desc small">
										This ain’t our first item, it is the best of the rest.
									</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="external">
						<a href="blank-sidebar.html">
							<span>All Messages</span>
							<i class="fa-link-ext"></i>
						</a>
					</li>
					</ul>
				</li>
				<li class="dropdown xs-left">
					<a href="#" data-toggle="dropdown" class="notification-icon notification-icon-messages">
						<i class="fa-bell-o"></i>
						<span class="badge badge-purple">7</span>
					</a>
					<ul class="dropdown-menu notifications">
					<li class="top">
						<p class="small">
							<a href="#" class="pull-right">Mark all Read</a>
							You have <strong>3</strong> new notifications.
						</p>
					</li>
					<li>
						<ul class="dropdown-menu-list list-unstyled ps-scrollbar">
							<li class="active notification-success">
								<a href="#">
									<i class="fa-user"></i>
									<span class="line">
										<strong>New user registered</strong>
									</span>
									<span class="line small time">
										30 seconds ago
									</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="external">
						<a href="#">
							<span>View all notifications</span>
							<i class="fa-link-ext"></i>
						</a>
					</li>
					</ul>
				</li>
				<!-- 
				<li class="dropdown user-profile">
					<a href="#" data-toggle="dropdown">
						<img src="${ctx_assets}/img/user-1.png" alt="user-image" class="img-circle img-inline userpic-32" width="28" />
						<span>
							${currentUser.name}
							<i class="fa-angle-down"></i>
						</span>
					</a>
					<ul class="dropdown-menu user-profile-menu list-unstyled">
						<li>
							<a href="#edit-profile">
								<i class="fa-edit"></i>
								New Post
							</a>
						</li>
						<li>
							<a href="#settings">
								<i class="fa-wrench"></i>
								Settings
							</a>
						</li>
						<li>
							<a href="#profile">
								<i class="fa-user"></i>
								Profile
							</a>
						</li>
						<li>
							<a href="#help">
								<i class="fa-info"></i>
								Help
							</a>
						</li>
						<li class="last">
							<a href="extra-lockscreen.html">
								<i class="fa-lock"></i>
								Logout
							</a>
						</li>
					</ul>
				</li>
				 -->
			</ul>
		</div>
	</nav>
	<div class="page-container" style="margin-top: 0px;"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others fixed" style="width: 300px;">
			<div class="sidebar-menu-inner">	
				<ul id="main-menu" class="main-menu">
					<!-- add class "multiple-expanded" to allow multiple submenus to open -->
					<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
					<c:forEach var="tree_1" items="${menuList}" varStatus="status">
						<li class="">
							<a href="javascript:jumpTo('${ctx}${tree_1.attributes.url}', '', $(this))">
								<i class="linecons-cog"></i>
								<span class="title">${tree_1.text}</span>
							</a>
							<c:if test="${not empty tree_1.children}">
								<ul>
									<c:forEach var="tree_2" items="${tree_1.children}" varStatus="status">
										<li class="">
											<a href="javascript:jumpTo('${ctx}${tree_2.attributes.url}', '${tree_2.text}', $(this))">
												<i class="linecons-cog"></i>
												<span class="title">${tree_2.text}</span>
											</a>
											<c:if test="${not empty tree_2.children}">
												<ul>
												<c:forEach var="tree_3" items="${tree_2.children}" varStatus="status">
													<li class="">
														<a href="javascript:jumpTo('${ctx}${tree_3.attributes.url}', '${tree_3.text}', $(this))">
															<i class="linecons-cog"></i>
															<span class="title">${tree_3.text}</span>
														</a>
													</li>
												</c:forEach>
												</ul>
											</c:if>
										</li>
									</c:forEach>
								</ul>
							</c:if>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="main-content" style="padding: 85px 0px 0px;">
			<div class="page-title" style="margin: 0px 0px 0px;height:50px;">
				<div class="title-env">
					<!--<h5 class="title">主标题</h5>-->
					<strong><p id="menuTitle" class="description">首页</p></strong>
				</div>
				<div class="breadcrumb-env">
					<ol class="breadcrumb bc-1" style="margin: 0px;padding: 0px;">
						<li>
							<a href="javascript:jumpTo('${ctx}/login/mainContent/main.do', '首页', $(this))"><i class="fa-home"></i>首页</a>
						</li>
						<li id="parentMenu">
							一级菜单
						</li>
						<li id="currentMenu" class="active">
							<strong>二级菜单</strong>
						</li>
					</ol>
				</div>
			</div>
			<div class="row" style="margin: 0px;">
				<div class="col-md-12" style="padding: 0px;">
					<div class="panel panel-default" style="margin: 0px;padding: 0px;">
						<div id="mainConetntBody" class="panel-body" style="margin: 0px;padding: 0px;height:700px;">
							<iframe id="mainContext" src="${ctx}/login/mainContent/main.do" frameborder="0" scrolling="auto" style="width:100%;height:99%;"></iframe>
						</div>
						<!--
						<div class="embed-responsive embed-responsive-16by9">
							<iframe id="mainContext" src="${ctx}/login/mainContent/main.do" class="embed-responsive-item"></iframe>
						</div>
						-->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/view/taglib/footer.jsp" %>
	
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			//initTheme();
			$("#mainConetntBody").height($(window).height()-135);
		});
		
		function jumpTo(url, text, obj) {
			$("#menuTitle").html(text);
			//设置导航条
			//$("#currentMenu").html("<strong>"+text+"</strong>");
			document.getElementById("mainContext").src=url;
		}
	</script>
	
</body>
</html>