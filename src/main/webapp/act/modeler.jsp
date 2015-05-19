<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/taglib/common.jsp" %>
<!doctype html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <title>流程建模</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport"
          content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, width=device-width">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <link rel="Stylesheet" media="screen" href="${ctx_activiti}/editor-app/libs/ng-grid-2.0.7.min.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx_activiti}/editor-app/libs/bootstrap_3.1.1/css/bootstrap.min.css"/>

    <link rel="Stylesheet" media="screen" href="${ctx_activiti}/editor-app/editor/css/editor.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx_activiti}/editor-app/css/style.css" type="text/css"/>

	<link rel="stylesheet" href="${ctx_activiti}/editor-app/css/style-common.css">
    <link rel="stylesheet" href="${ctx_activiti}/editor-app/css/style-editor.css">

</head>
<body>
	
	<!--[if lt IE 9]>
	<div class="unsupported-browser">
	    <p class="alert error">You are using an unsupported browser. Please upgrade your browser in order to use the
	        editor.</p>
	</div>
	<![endif]-->
	
	<div class="alert-wrapper" ng-cloak>
	    <div class="alert fadein {{alerts.current.type}}" ng-show="alerts.current" ng-click="dismissAlert()">
	        <i class="glyphicon"
	           ng-class="{'glyphicon-ok': alerts.current.type == 'info', 'glyphicon-remove': alerts.current.type == 'error'}"></i>
	        <span>{{alerts.current.message}}</span>
	
	        <div class="pull-right" ng-show="alerts.queue.length > 0">
	            <span class="badge">{{alerts.queue.length + 1}}</span>
	        </div>
	    </div>
	</div>
	
	<div id="main" style="padding: 0;" class="wrapper full clearfix" ng-style="{height: window.height + 'px'}" ng-app="activitiModeler" ng-include="'${ctx_activiti}/editor-app/editor.html'">
	</div>

	<!--[if lt IE 9]>
	<script src="${ctx_activiti}/editor-app/libs/es5-shim-15.3.4.5/es5-shim.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/json3_3.2.6/lib/json3.min.js"></script>
	<![endif]-->
	
	<script src="${ctx_activiti}/editor-app/libs/jquery_1.11.0/jquery.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/jquery-ui-1.10.3.custom.min.js"></script>
	
	<script src="${ctx_activiti}/editor-app/libs/angular_1.2.13/angular.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular_1.2.13/angular-animate.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/bootstrap_3.1.1/js/bootstrap.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-resource_1.2.13/angular-resource.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-cookies_1.2.13/angular-cookies.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-sanitize_1.2.13/angular-sanitize.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-route_1.2.13/angular-route.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-translate_2.4.2/angular-translate.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-translate-storage-cookie/angular-translate-storage-cookie.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-translate-loader-static-files/angular-translate-loader-static-files.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-strap_2.0.5/angular-strap.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-strap_2.0.5/angular-strap.tpl.min.js"></script>
	<script src="${ctx_activiti}/editor-app/libs/momentjs_2.5.1/momentjs.min.js"></script>
	
	<script src="${ctx_activiti}/editor-app/libs/ui-utils.min-0.0.4.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/libs/ng-grid-2.0.7-min.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/libs/angular-dragdrop.min-1.0.3.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/libs/mousetrap-1.4.5.min.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/libs/jquery.autogrow-textarea.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/libs/prototype-1.5.1.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/libs/path_parser.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/libs/angular-scroll_0.5.7/angular-scroll.min.js" type="text/javascript"></script>
	
	<!-- Configuration -->
	<script src="${ctx_activiti}/editor-app/app-cfg.js?v=1"></script>
	<script src="${ctx_activiti}/editor-app/editor-config.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/url-config.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/editor/i18n/translation_en_us.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/editor/i18n/translation_signavio_en_us.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/editor/oryx.debug.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/app.js"></script>
	
	<script src="${ctx_activiti}/editor-app/eventbus.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/editor-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/stencil-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/toolbar-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/header-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/select-shape-controller.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/editor-utils.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/toolbar-default-actions.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/configuration/properties-default-controllers.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-execution-listeners-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-event-listeners-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-assignment-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-fields-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-form-properties-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-in-parameters-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-multiinstance-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-out-parameters-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-task-listeners-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-sequenceflow-order-controller.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-condition-expression-controller.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/configuration/toolbar.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/toolbar-custom-actions.js" type="text/javascript"></script>
	
	<script src="${ctx_activiti}/editor-app/configuration/properties.js" type="text/javascript"></script>
	<script src="${ctx_activiti}/editor-app/configuration/properties-custom-controllers.js" type="text/javascript"></script>

</body>
</html>
