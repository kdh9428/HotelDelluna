<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html dir="ltr" lang="utf-8">
<head>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-156464840-1"></script>
<!-- NAVER 통계  -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script src="resources/js/googleAnalytics/analytics.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />
<meta name="viewport" content="initial-scale=1.0">

<!-- Stylesheets
    ============================================= -->
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/images/favicon/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/favicon/favicon-32x32.png">

<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
<link rel="stylesheet" href="resources/css/font-icons.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/responsive.css"
	type="text/css" />
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

<!-- External JavaScripts
    ============================================= -->
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/plugins.js"></script>

<!-- Document Title
    ============================================= -->
<title>회원정보 수정</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
        ============================================= -->
		<header id="header" class="full-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger">
						<i class="icon-reorder"></i>
					</div>

					<!-- Logo
                    ============================================= -->
					<div id="logo">
						<a href="index.do" class="standard-logo"
							data-dark-logo="resources/images/logo/logo-dark.png"><img
							src="resources/images/logo/footer-logo-large.png"
							alt="Chocolat Logo"></a> <a href="index.do" class="retina-logo"
							data-dark-logo="resources/images/logo/logo-dark-large.png"><img
							src="resources/images/logo/footer-logo-large.png"
							alt="Chocolat Logo"></a>
					</div>
					<!-- #logo end -->

					<!-- Primary Navigation
                    ============================================= -->
					<nav id="primary-menu">

						<ul class="">
							<li class="current"><a href="#" onclick="return false;"><div>호텔소개</div></a>
								<ul>
									<li><a href="hotel-About-Us.do"><div>호텔소개</div></a></li>
									<li><a href="Location.do"><div>호텔위치</div></a></li>
									<li><a href="list.do"><div>호텔리뷰</div></a></li>
								</ul></li>
							<li><a href="#" onclick="return false;"><div>객실</div></a>
								<ul>
									<li><a href="deluxe-double.do"><div>디럭스</div></a>
										<ul>
											<li><a href="deluxe-double.do"><div>디럭스 더블</div></a></li>
											<li><a href="deluxe-twin.do"><div>디럭스 트윈</div></a></li>
										</ul></li>
									<li><a href="family-suite.do"><div>스위트</div></a>
										<ul>
											<li><a href="family-suite.do"><div>패밀리 스위트</div></a></li>
											<li><a href="grand-suite.do"><div>그랜드 스위트</div></a></li>

										</ul></li>
								</ul></li>
							<li><a href="dining.do"><div>다이닝</div></a>
								<ul>
									<li><a href="dining.do"><div>파노라마 (올 데이 다이닝)</div></a></li>
								</ul></li>
							<li><a href="#" onclick="return false;"><div>부대시설</div></a>
								<ul>
									<li><a href="menu-item.do"><div>사계절 온수풀 해온</div></a></li>
									<li><a href="menu-item2.do"><div>해온 루프탑 테라스</div></a></li>
									<li><a href="menu-item3.do"><div>프라이빗 카바나</div></a></li>
								</ul></li>
							<li><a href="contact.do"><div>고객의 소리</div></a></li>
							<li><a href="Reservation.do"><div>예약하기</div></a></li>
							<li><a href="ReservationConfirm.do"><div>예약조회 및 취소</div></a></li>

							<!-- 로그인 하지 않았을 경우 보여준다.  -->
							<sec:authorize access="isAnonymous()">
								<li><a href="login.do"><div>로그인</div></a>
									<ul>
										<li><a href="login.do"><div>로그인</div></a></li>
										<li><a href="accountInfoFind.do"><div>아이디/비밀번호 찾기</div></a></li>
										<li><a href="singupForm.do"><div>회원가입</div></a></li>
									</ul></li>
							</sec:authorize>
							<!-- 로그인 했을 경우 보여준다.  -->
							 <sec:authorize access="isAuthenticated()">
								  <li><a href="#" onclick="return false;"><div>로그아웃</div></a>
										<ul>
											<li><a href="logout.do" onclick="document.getElementById('logout-form').submit();"> <div>로그아웃</div></a></li>
											<li><a href="userModifyPasswordCheck.do"><div>회원정보 수정</div></a></li>
										</ul>
								 </li>
								<form id="logout-form" action="logout.do" method="post"> 
									   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								</form>
							</sec:authorize>
						</ul>
					</nav>
					<!-- #primary-menu end -->
				</div>
			</div>

		</header>
		<!-- #header end -->

		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax"
			style="background-image: url('resources/images/hotel-about/main.jpg'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix" style="border-width: 3px;">
				<h1>회원정보 수정</h1>

				<ol class="breadcrumb">
					<li><a href="index.html">홈</a></li>
					<li><a href="hotel-About-Us.html">회원정보 수정</a></li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->
		<br>
		
	<form action="userModifyForm.do" id="passwordForm" method="post" onsubmit="return false">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<div class="container clearfix">
			<div class="jumbotron panel-heading" style="height: 400px">
				<h2>회원정보 확인</h2>
				<sec:authorize access="isAuthenticated()">
                    <sec:authentication property="principal.username" var="user_id" />
                </sec:authorize>
                    <div id="user_id"><strong style="color: skyblue">${user_id}</strong>님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인 합니다.</div><br>
              
              <div class="table-responsive">
               <table class="table">
            	   <colgroup>
						<col style="width: 8%;" />
						<col style="width: auto%;" />
					</colgroup>
	               <tbody>
	               	<tr>
	               		<th scope="row">아이디 : </th>
	               		<td><Strong style="font-size: 15px">${user_id}</Strong><br></td>
	               	</tr>
	               	<tr>
	               		<th scope="row" style="border-top:0">비밀번호 : </th>
	               		<td style="border-top:0"><input type="password" class="form-control required" name="password" id="password" style="height: 30px; width:150px; padding: 2px 5px; line-height: 22px;" ></td>
	               	</tr>
	               	<tr>
	               		<th style="border-top:0"></th>
	              	 	<td id="password-check-tag" style="border-top:0"></td>
	               	</tr>
	               	</tbody>
               	</table>
               </div>
				<div class="text-center" style="position: relative;text-align:center; margin-top:30px;">
					<button type="button" id="passwordCheck" class="btn btn-primary btn-default" style="margin:0 2px; padding:5px 10px; width:46pt; height:26pt;">확 인</button>
					<button type="button" class="btn btn-primary btn-default" style="margin:0 2px; padding:5px 10px; width:46pt; height:26pt;" onclick="history.back();">취 소</button>
				</div>
			</div>
		</div>
	</form>
		<!-- Footer
        ============================================= -->
		<footer id="footer" class="footer">

			<div class="container">

				<!-- Footer Widgets
                ============================================= -->
				<div class="footer-widgets-wrap clearfix">

					<div class="col_two_third">

						<div class="widget clearfix">

							<h3>
								(주)호텔 델루나 <span>02-1544-1111</span>
							</h3>
							<p>63535, 제주특별자치도 서귀포시 중문관광로 72번길, 호텔 델루나.</p>

							<div class="line" style="margin: 30px 0;"></div>

							<div class="col_half">
								<div class="widget subscribe-widget clearfix">
									<h5>Email : hoteldelluna@hoteldelluna.co.kr</h5>
								</div>
							</div>

							<div class="col_half col_last">
								<div class="widget clearfix">

									<div class="hidden-xs hidden-sm">
										<div class="clear" style="padding-top: 10px;"></div>
									</div>

									<div class="col-md-6 bottommargin-sm">

										<div class="widget_links clearfix">
											<ul>
												<li><a href="index.do"><div>메인</div></a></li>
												<li><a href="list.do"><div>호텔리뷰</div></a></li>
												<li><a href="hotel-About-Us.do"><div>호텔소개</div></a></li>
												<li><a href="Location.do"><div>호텔위치</div></a></li>
												<li><a href="contact.do"><div>고객의 소리</div></a></li>
											</ul>
										</div>
									</div>

									<div class="col-md-6 bottommargin-sm col_last">

										<div class="widget_links clearfix">
											<ul>
												<li><a href="deluxe-double.do"><div>객실 - 디럭스</div></a></li>
												<li><a href="family-suite.do"><div>객실 - 스위트</div></a></li>
												<li><a href="dining.do"><div>다이닝</div></a></li>
												<li><a href="Reseravtion.do"><div>예약하기</div></a></li>
												<li><a href="ReservationConfirm.do"><div>예약조회
															및 취소</div></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col_one_third col_last">

						<div class="widget clearfix">
							<div class="fancy-title title-border">
								<h4>Hours</h4>
							</div>
							<ul class="nobottommargin nobullets">
								<li><strong>호텔서비스</strong><br>00:00 ~ 24:00</li>
								<br>
								<li><strong>객실예약(주중)</strong><br>09:00 ~ 18:00</li>
								<br>
								<li>업무시간 외에는<br> 온라인 예약을 이용해주시기 바랍니다.
								</li>
							</ul>
						</div>

						<div class="widget clearfix">
							<div class="fancy-title title-border">
								<h4>Address</h4>
							</div>

							<ul class="nobottommargin nobullets">
								<li>63535, 제주특별자치도</li>
								<li>서귀포시 중문관광로 72번길, 호텔 델루나.</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
            ============================================= -->
			<div id="copyrights">

				<div class="container clearfix">

					<div class="col_half">
						<img src="resources/images/logo/footer-logo.png" alt=""
							class="footer-logo standard-logo"> <img
							src="resources/images/logo/footer-logo-large.png" alt=""
							class="footer-logo retina-logo"> Copyright &copy; 2019
						Hotel Delluna. All Rights Reserved.
					</div>

					<div class="col_half col_last tright">
						<div class="copyrights-menu copyright-links fright clearfix">
							<a href="#">호텔리뷰</a> <a href="hotel-About-Us.do">호텔소개</a> <a
								href="deluxe-double.do">객실</a> <a href="contact-2.do">예약조회 및 취소</a> <a
								href="contact.jsp">고객의 소리</a>
						</div>
						<div class="fright clearfix">
							<a href="#"
								class="social-icon si-small si-borderless nobottommargin si-facebook">
								<i class="icon-facebook"></i> <i class="icon-facebook"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-twitter">
								<i class="icon-twitter"></i> <i class="icon-twitter"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-gplus">
								<i class="icon-gplus"></i> <i class="icon-gplus"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-pinterest">
								<i class="icon-pinterest"></i> <i class="icon-pinterest"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-vimeo">
								<i class="icon-vimeo"></i> <i class="icon-vimeo"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-github">
								<i class="icon-github"></i> <i class="icon-github"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-yahoo">
								<i class="icon-yahoo"></i> <i class="icon-yahoo"></i>
							</a> <a href="#"
								class="social-icon si-small si-borderless nobottommargin si-linkedin">
								<i class="icon-linkedin"></i> <i class="icon-linkedin"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- #copyrights end -->
		</footer>
		<!-- #footer end -->
	</div>
	<!-- #wrapper end -->

	<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/functions.js"></script>
	
	<script type="text/javascript">
	
		window.addEventListener('load',()=>{
			console.log('확인중' + '${updateSuccess}')
			//회원 정보 업데이트 성공
			if('${updateSuccess}' == 'true')
				alert('개인정보를 수정 하였습니다.')
			if('${updateSuccess}' == 'false')
				alert('개인정보 수정 실패! 다시 시도해 주세요.')
		})
	
	 	document.querySelector('#passwordCheck').addEventListener('click',click)
	 			
	 		function click(){
			 var passwordCheckValue = document.querySelector('#password').value
			 var passwordCheckTag = document.querySelector('#password-check-tag')
			 
			 if(passwordCheckValue){
				 var xhr = new XMLHttpRequest();
				 xhr.open('POST','userPassword.do')
				 xhr.setRequestHeader('${_csrf.headerName}','${_csrf.token}')
				 xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded')
				 xhr.onload =()=>{
					 if(xhr.status === 200){
						 if(xhr.responseText == 'true'){
							 document.querySelector('#passwordForm').submit()
						 }else{
							passwordCheckTag.style.color = 'red'
						 	passwordCheckTag.innerText = '비밀번호가 다릅니다'
						 }
					 }else{
					 alert('ajax 에러')
				 	}
				 }
				xhr.send('password='+passwordCheckValue)
		}else{
			passwordCheckTag.style.color = 'red'
			passwordCheckTag.innerText = '패스워드를 입력하세요'
		}
 	}
 	
 	
	</script>
</body>
</html>