<%@include file="/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
	  <c:forEach var = "s" begin = "0" end = "5" items="${list}">
         <h1>${s.title }</h1>
      </c:forEach>
</body>
</html>