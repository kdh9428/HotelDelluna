<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div>

	<c:forEach items="${zip1}" var="dto">

	zip: ${dto.zip}<br>
	z_city: ${dto.z_city }<br>
	zgu: ${dto.z_gu }
	zdong:${dto.z_dong }
	detailed_address: ${dto.detailed_address }
	</c:forEach>
</div>
</body>
</html>
