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

<c:forEach items="${reservation}" var="dto">
	RESERVATION_NUMBER: ${dto.reservation_number}<br>
	CUSTOMER_ID: ${dto.customer_id }<br>
	RESERVATION_DATE_IN: ${dto.reservation_date_in }<br>
	RESERVATION_DATE_OUT:${dto.reservation_date_out }<br>
	price: ${dto.price }<br>
	</c:forEach>
	
</div>
</body>
</html>
