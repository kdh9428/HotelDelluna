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
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-156464840-1"></script>
<!-- NAVER 통계  -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script src="resources/js/googleAnalytics/analytics.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8" />
<meta name="viewport" content="initial-scale=1.0">
<!-- csrf 설정 -->
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />

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


<style>
.modal-backdrop {
	height: 100%;
}
</style>

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
						<a href="index" class="standard-logo"
							data-dark-logo="resources/images/logo/logo-dark.png"><img
							src="resources/images/logo/footer-logo-large.png"
							alt="Chocolat Logo"></a> <a href="index" class="retina-logo"
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
									<li><a href="hotel-About-Us"><div>호텔소개</div></a></li>
									<li><a href="Location"><div>호텔위치</div></a></li>
									<li><a href="list"><div>호텔리뷰</div></a></li>
								</ul></li>
							<li><a href="#" onclick="return false;"><div>객실</div></a>
								<ul>
									<li><a href="deluxe-double"><div>디럭스</div></a>
										<ul>
											<li><a href="deluxe-double"><div>디럭스 더블</div></a></li>
											<li><a href="deluxe-twin"><div>디럭스 트윈</div></a></li>
										</ul></li>
									<li><a href="family-suite"><div>스위트</div></a>
										<ul>
											<li><a href="family-suite"><div>패밀리 스위트</div></a></li>
											<li><a href="grand-suite"><div>그랜드 스위트</div></a></li>

										</ul></li>
								</ul></li>
							<li><a href="dining"><div>다이닝</div></a>
								<ul>
									<li><a href="dining"><div>파노라마 (올 데이 다이닝)</div></a></li>
								</ul></li>
							<li><a href="#" onclick="return false;"><div>부대시설</div></a>
								<ul>
									<li><a href="menu-item"><div>사계절 온수풀 해온</div></a></li>
									<li><a href="menu-item2"><div>해온 루프탑 테라스</div></a></li>
									<li><a href="menu-item3"><div>프라이빗 카바나</div></a></li>
								</ul></li>
							<li><a href="contact"><div>고객의 소리</div></a></li>
							<li><a href="Reservation"><div>예약하기</div></a></li>
							<li><a href="ReservationConfirm"><div>예약조회 및 취소</div></a></li>

							<!-- 로그인 하지 않았을 경우 보여준다.  -->
							<sec:authorize access="isAnonymous()">
								<li><a href="login"><div>로그인</div></a>
									<ul>
										<li><a href="login"><div>로그인</div></a></li>
										<li><a href="accountInfoFind"><div>아이디/비밀번호
													찾기</div></a></li>
										<li><a href="singupForm"><div>회원가입</div></a></li>
									</ul></li>
							</sec:authorize>
							<!-- 로그인 했을 경우 보여준다.  -->
							<sec:authorize access="isAuthenticated()">
								<li><a href="#" onclick="return false;"><div>로그아웃</div></a>
									<ul>
										<li><a href="logout"
											onclick="document.getElementById('logout-form').submit();">
												<div>로그아웃</div>
										</a></li>
										<li><a href="userModifyPasswordCheck"><div>회원정보
													수정</div></a></li>
									</ul></li>
								<form id="logout-form" action="logout" method="post">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
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
				<h1>아이디/비밀번호 찾기</h1>

				<ol class="breadcrumb">
					<li><a href="index">홈</a></li>
					<li><a href="hotel-About-Us">아아디/비밀번호 찾기</a></li>
				</ol>
			</div>
		</section>
		<!-- #page-title end -->

		<div class="container">
			<br>
			<div class="row">
				<div class="jumbotron col-md-5 col-md-offset-1">
						<h2>아이디 찾기</h2>
						가입 당시 입력한 이메일 주소를 통해 아이디를 찾을 수 있습니다.
						<hr>
						<div>
							이름 : <input type="text" id="customerName" name="customerName"
								class="form-control required" style="padding: 2px 5px"><br>
							이메일 : <input type="text" id="userEmail" name="userEmail"
								class="form-control required" style="padding: 2px 5px">
						</div>
						<div class="text-center"
							style="position: relative; text-align: center; margin-top: 30px;">
							<!-- Button trigger modal -->
							<button type="button" id="find-id" class="btn btn-primary btn-default"
								style="margin: 0 2px; padding: 5px 10px; width: 46pt; height: 26pt;">
								확인
							</button>
						</div>
				</div>

				<div class="jumbotron col-md-5 col-md-offset-1">
						<h2>비밀번호 재설정</h2>
						가입 당시 입력한 이메일 주소를 통해 비밀번호를 재설정해주세요.
						<hr>
						<div>
							아이디 : <input type="text" id="customer_id" name="customer_id"
								class="form-control required" style="padding: 2px 5px"><br>
							이메일 : <input type="text" id="userPasswordEmailCheck"
								name="userEmail" class="form-control required"
								style="padding: 2px 5px">
						</div>
						<div class="text-center"
							style="position: relative; text-align: center; margin-top: 30px;">
							<button type="button" id="find-password" value="password"
								class="btn btn-primary btn-default"
								style="margin: 0 2px; padding: 5px 10px; width: 46pt; height: 26pt;">확
								인</button>
						</div>
				</div>
			</div>
		</div>


		<!-- Modal폼 div -->
		<div class="modal modal-center fade" id="myModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">아이디 찾기</h4>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						<a href="index"><button type="button" class="btn btn-primary">메인 화면</button></a>
					</div>
				</div>
			</div>
		</div>


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
												<li><a href="index"><div>메인</div></a></li>
												<li><a href="list"><div>호텔리뷰</div></a></li>
												<li><a href="hotel-About-Us"><div>호텔소개</div></a></li>
												<li><a href="Location"><div>호텔위치</div></a></li>
												<li><a href="contact"><div>고객의 소리</div></a></li>
											</ul>
										</div>
									</div>

									<div class="col-md-6 bottommargin-sm col_last">

										<div class="widget_links clearfix">
											<ul>
												<li><a href="deluxe-double"><div>객실 - 디럭스</div></a></li>
												<li><a href="family-suite"><div>객실 - 스위트</div></a></li>
												<li><a href="dining"><div>다이닝</div></a></li>
												<li><a href="Reseravtion"><div>예약하기</div></a></li>
												<li><a href="ReservationConfirm"><div>예약조회
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
							<a href="#">호텔리뷰</a> <a href="hotel-About-Us">호텔소개</a> <a
								href="deluxe-double">객실</a> <a href="contact-2">예약조회 및
								취소</a> <a href="contact">고객의 소리</a>
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
	<script type="text/javascript" src="resources/js/accountInfoFind/accountInfoFind.js"></script>
</body>
</html>