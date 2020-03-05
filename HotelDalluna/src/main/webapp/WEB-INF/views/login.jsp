<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-156464840-1"></script>
	<!-- NAVER 통계  -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script src="resources/js/googleAnalytics/analytics.js"></script>
	<!-- 네이버 로그인 -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	
<title>HotelDalluna</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<!-- <link rel="icon" type="image/png" href="resources/images/icons/favicon.ico" /> -->
<link rel="icon" type="image/png" sizes="32x32" href="resources/images/favicon/favicon-32x32.png">   
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" />

</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(resources/images/bg-01.jpg);">
					<a href="index.do"><span class="login100-form-title-1">Hotel Delluna</span></a>
				</div>
					<sec:authorize access="isAnonymous()">
						<form class="login100-form validate-form" action="loginSuccess" method="post">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<div class="wrap-input100 validate-input m-b-26" data-validate="ID를 입력해주세요">
								<span class="label-input100">아이디</span> <input class="input100" type="text" id="customer_id" name="customer_id" placeholder="Enter username">
								<span class="focus-input100"></span>
							</div>
							<div class="wrap-input100 validate-input m-b-18"
								data-validate="비밀번호를 입력해주세요">
								<span class="label-input100">비밀번호</span> <input class="input100" type="password" name="password" placeholder="Enter password">
								<span class="focus-input100"></span>
							</div>
							<div class="flex-sb-m w-full p-b-30">
								<div class="contact100-form-checkbox">
									<input class="input-checkbox100" id="cookie" type="checkbox"
										name="cookie" value="off"> <label class="label-checkbox100"
										for="cookie"> Remember me </label>
									 <input type="hidden" id="cookie" name="cookie" value="off">
								</div>
								<div>
									<a href="searchIdpass.jsp" class="txt1"> Forgot Password? </a>
								</div>
							</div>
							<div class="container-login100-form-btn">
								<button class="login100-form-btn" value="로그인" style="margin:0 5px">로그인</button>
								<button class="login100-form-btn" type="button" style="margin:0 5px" value="회원가입" onclick="location.href='singupForm.do'">회원가입</button>
							</div>
						</form>
						</sec:authorize>
					 <sec:authorize access="isAuthenticated()">
					 <div style="text-align:center;">
						<h3>${pageContext.request.userPrincipal.name}님 환영합니다!</h3>
							<button type="button" class ="btn btn-primary" onclick="document.getElementById('logout-form').submit();">로그아웃</button>
							<form id="logout-form" action="logout.do" method="post"> 
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							</form>
					</div>
						</sec:authorize>
			</div>
		</div>
	</div>
	<!--===============================================================================================-->
	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>
	
	<script type="text/javascript">
	
	window.addEventListener('load',()=>{
		if('${param.error}'=='true'){
			alert("아이디 또는 비밀번호를 확인해 주세요")
			document.querySelector("#customer_id").focus()
		}
		
		if('${deleteCheck}'=='false'){
			alert('회원 탈퇴를 완료하지 못했습니다. 다시 시도해 주세요')
		}else if('${deleteCheck}' =='true'){
			alert('회원 탈퇴가 완료되었습니다.')
		}
		
	})
	
	var cookieToggle = document.querySelector('#cookie')
	cookieToggle.addEventListener('click',()=>{
		if (cookieToggle.value == 'off')
			cookieToggle.value = 'on'
		else
			cookieToggle.value = 'off'
	})
	</script>
	
</body>
</html>