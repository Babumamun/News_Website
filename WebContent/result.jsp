<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<script> alert("${msg}");
window.location="${pageContext.request.contextPath}/getbytittle";
</script>
</body>
</html>