<%@include file="/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/decorators/components/admin/libs/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/decorators/components/admin/libs/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i|Comfortaa:300,400,500,700"
	rel="stylesheet">
<!-- BEGIN VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/css/vendors.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/vendors/css/charts/chartist.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/vendors/css/charts/chartist-plugin-tooltip.css"/>">
<!-- END VENDOR CSS-->
<!-- BEGIN MODERN CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/css/app.css"/>">
<!-- END MODERN CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/css/core/menu/menu-types/vertical-compact-menu.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/vendors/css/cryptocoins/cryptocoins.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/css/pages/timeline.css"/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/app-assets/css/pages/dashboard-ico.css"/>">
<!-- END Page Level CSS-->
<!-- BEGIN Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<c:url value = "/decorators/components/admin/libs/assets/css/style.css"/>">
<!-- END Custom CSS-->
</head>
<body
	class="vertical-layout vertical-compact-menu 2-columns   menu-expanded fixed-navbar"
	data-open="click" data-menu="vertical-compact-menu"
	data-col="2-columns">

	<!-- <header> -->
	<%@include file="/decorators/components/admin/header.jsp"%>
	<!-- </header> -->

	<!-- navbar -->
	<%@include file="/decorators/components/admin/navbar.jsp"%>
	<!-- navbar -->
	<!-- body -->
	<div class="app-content content">
		<dec:body />
	</div>
	<!-- body -->

	<!-- footer -->
	<%@include file="/decorators/components/admin/footer.jsp"%>
</body>
</html>