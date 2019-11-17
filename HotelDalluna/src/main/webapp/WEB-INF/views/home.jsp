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
<form action="home1.do" method="post">
	
	CUSTOMER_ID : <input type="text" name="customer_id" ><br>
	reservation_date_in: <input type="text" name="reservation_date_in" ><br>
	reservation_date_out : <input type="text" name="reservation_date_out" ><br>
	price : <input type="text" name="price" ><br>
	reservation_number :<input type="text" name="reservation_number" ><br>
	<input type="submit" value="gogo">
	
</form>


</div>
</body>
</html>
