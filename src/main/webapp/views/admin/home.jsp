<%@include file="/common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
</head>
<body>
	<c:forEach var="i" items="${model }">
		<h1>${i.title }</h1>
	</c:forEach>
	<c:if test="${model == null}">
		<h1>thi</h1>
	</c:if>
</body>
</html>