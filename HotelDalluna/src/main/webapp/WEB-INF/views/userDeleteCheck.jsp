<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
<!-- <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script> -->
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/plugins.js"></script>
<!-- Document Title
    ============================================= -->
<title>회원가입</title>

<style type="text/css">
.strong-id{
	color: black;
	background-color:white;
}
.ul-style{
	padding-left: 15px;
	font-size: 11px;
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
										<li><a href="accountInfoFind"><div>아이디/비밀번호 찾기</div></a></li>
										<li><a href="singupForm"><div>회원가입</div></a></li>
									</ul></li>
							</sec:authorize>
							<!-- 로그인 했을 경우 보여준다.  -->
							 <sec:authorize access="isAuthenticated()">
								  <li><a href="#" onclick="return false;"><div>로그아웃</div></a>
										<ul>
											<li><a href="logout" onclick="document.getElementById('logout-form').submit();"> <div>로그아웃</div></a></li>
											<li><a href="userModifyPasswordCheck"><div>회원정보 수정</div></a></li>
										</ul>
								 </li>
								<form id="logout-form" action="logout" method="post"> 
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
					<li><a href="index">홈</a></li>
					<li><a href="hotel-About-Us">회원정보 수정</a></li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->
		
		<div class="container clearfix">
        	<sec:authentication property="principal.username" var="customer_id" />
		<form action="userDelete" id="form-submit" method="post" onsubmit="return false">
		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<p></p>
			<div class="jumbotron panel-heading">
				<h2>Hotel Delluna</h2>
				<p>회원탈퇴안내</p>
				<hr style="background-color: red;height: 1px" >
				<i class="fas fa-exclamation-circle" style="color: red"></i><h5 style="color: red">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해 주세요.</h5> 
				<hr>
				<i class="fas fa-exclamation-circle"></i>사용하고 계신 <strong class="strong-id">${customer_id} </strong>은/는 탈퇴할 경우 재사용 및 복구가 불가능합니다.
				<ul class="ul-style">
					<li>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가 하오니 신중하게 선택하시기 바랍니다.</li>
				</ul>
				<hr>
				<i class="fas fa-exclamation-circle"></i>탈퇴 후 회원정보 및 서비스 이용 기록은 모두 삭제 됩니다.
				<ul class="ul-style">
					<li>회원정보는 개인정보처리방침에 따라 탈퇴 후 30일동안 보관되며, 30일이 지나면 보존필요정보 외의 모든 개인정보가 자동 삭제됩니다.</li>
					<li>삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업해 주세요.</li>
				</ul>
				<hr>
				<i class="fas fa-exclamation-circle"></i>탈퇴 후에도 등록한 게시물은 그대로 남아 있습니다.
				<ul class="ul-style">
					<li>회원님이 올린 게시글 및 댓글은 탈퇴 시 자동 삭제 되지 않고 그대로 남아 있습니다.</li>
					<li>삭제를 원하는 게시글이 있다면 반드시 탈퇴 전에 삭제하시기 바랍니다.</li>
					<li>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 관리자가 임의로 삭제해 드릴 수 없습니다.</li>
				</ul>
				<hr>
				<i class="fas fa-exclamation-circle"></i> 게시판에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.<br>
				<i class="fas fa-exclamation-circle"></i> 탈퇴 후에는 <strong class="strong-id">${customer_id}</strong>로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.
			</div>

			<div class="jumbotron panel-heading text-center" style="padding-bottom: 50px">
				<h4>비밀번호확인</h4>
				<hr>
					
				<i class="fas fa-exclamation-circle"></i>본인 확인을 위해 비밀번호를 입력해 주세요.
					<div style=" float:none; margin:30px auto; height: 30px; width:150px;">
						<input type="password" class="form-control" name="password" id="password">
					</div>
						<div style="float: right;">
							<input type="checkbox" id="instructions-check" placeholder="비밀번호"><strong style="color: blue">안내 사항을 모두 확인하였으며 이에 동의합니다.</strong>
						</div>
			</div>

						<div class="row">
							<div class="col-md-2" style="float:none; margin:30px auto">
								<button type="button" id="submit-button" class="btn btn-primary btn-lg btn-block">회원 탈퇴</button>
							</div>
						</div>
			</form>
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
								href="deluxe-double">객실</a> <a href="contact-2">예약조회 및 취소</a> <a
								href="contact">고객의 소리</a>
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
		const submitButton = document.querySelector('#submit-button')
		submitButton.addEventListener('click',()=>{
		var checkBox = document.querySelector('#instructions-check').checked
		var passwordDelete = document.querySelector('#password')
			console.log('확인')
			if(!checkBox){
				alert('안내 사항에 동의를 해주세요')
			}else if(passwordDelete.value == ''){
							passwordDelete.focus()
							alert('비밀번호를 확인해 주세요.')
			}else{
				var xhr = new XMLHttpRequest();
				xhr.open('POST','userPassword')
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
				xhr.onload = () =>{
					if(xhr.status === 200){
						if(xhr.responseText == 'true'){
							document.querySelector('#form-submit').submit()
						}else{
							passwordDelete.focus()
							alert('비밀번호를 확인해 주세요.')
						}
					}else{
						alert('ajax 에러! 다시 시도해주세요.')
					}
				}
				xhr.send('password='+passwordDelete.value)
			}
		})
	</script>
</body>
</html>