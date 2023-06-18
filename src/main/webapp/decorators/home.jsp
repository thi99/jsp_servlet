<%@include file="/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title >Trang chủ</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">
<link rel='shortcut icon' href='https://banner2.cleanpng.com/20180202/lfq/kisspng-smiley-emoticon-kiss-icon-kiss-smiley-png-transparent-image-5a754171ca1255.6809243915176339058277.jpg' />
<!-- Favicon -->
<link href="${pageContext.request.contextPath}/decorators/components/web/libs/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="<c:url value = "/decorators/components/web/libs/lib/owlcarousel/assets/owl.carousel.min.css"/>"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="<c:url value = "/decorators/components/web/libs/css/style.css"/>"
	rel="stylesheet">
</head>
<body>
	<!-- header -->
	<%@include file="/decorators/components/web/headerHome.jsp"%>
	<!-- header -->
	
	<!-- body -->
	<div class="container">
		<dec:body />
	</div>
	<!-- body -->

	<!-- footer -->
	<%@include file="/decorators/components/web/footer.jsp"%>
	<!-- footer -->
</body>
</html>