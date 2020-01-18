<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p><h1>테스트 중입니다.</h1></p>

<form action="test1.do" method="post" accept-charset="utf-8">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }">
<input type="text" id="test1" name="test1">
<button>버튼</button>

</form>
<h2>${test1 }</h2>

</body>
</html>