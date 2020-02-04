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
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css" />

<link rel="stylesheet" href="resources/css/responsive.css"
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
<title>회원가입</title>

<style>
/* input 태그 number 타입 위아래 화살표 삭제 */
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
	
}
	.mtd{
		margin:0 0 15px 0;
	}
	label{
		margin:10px;
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
									<li><a href="list.do"><div>공지사항</div></a></li>
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
										<li><a href="#"><div>아이디/비밀번호 찾기</div></a></li>
										<li><a href="singupForm.do"><div>회원가입</div></a></li>
									</ul></li>
							</sec:authorize>
							<!-- 로그인 했을 경우 보여준다.  -->
							<sec:authorize access="isAuthenticated()">
								<div><a href="logout.do"
									onclick="document.getElementById('logout-form').submit();">
										로그아웃
								</a></div>
								<form id="logout-form" action="logout.do" method="post">
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
				<h1>회원 가입</h1>

				<ol class="breadcrumb">
					<li><a href="index.html">홈</a></li>
					<li><a href="hotel-About-Us.html">회원 가입</a></li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->
		
		<div class="container clearfix">
		<form:form id="memberDetails" class="form-signup" role="form" modelAttribute="memberDetails" method="post" action="singup.do" onsubmit="return validate()">
			<p></p>
			<div class="jumbotron panel-heading text-center lead">
				<h2>Hotel Delluna</h2>
				<p>호텔 델루나 계정 정보를 입력해주세요</p>
			</div>
				<div class="form-group has-success">
					<div class="row">
						<div class="col-md-offset-1">
							<label for="customer_id"
								class="col-md-2 col-md-offset-2 col-form-label text-md-right">아이디
							</label>
						</div>
						<div class="col-md-6">
							<form:input type="text" path="customer_id" id="customer_id" class="form-control required"
								placeholder="아이디를 입력해 주세요"></form:input>
								<div id="id-check">영문/숫자4자 이상을 입력해 주세요</div>
						</div>
						<div class="check"> </div>
					</div>
				</div>
				<div class="form-group has-success">
					<div class="row">
						<div class="col-md-offset-1">
							<label for="password"
								class="col-md-2 col-md-offset-2 col-form-label text-md-right">비밀번호
							</label>
						</div>
						<div class="col-md-6">
							<form:input type="password" path="password" id="password"
								class="form-control required" placeholder="비밀번호(8~32자리)" />
								<div id = "password-check">8 ~ 20자의 영문 대/소문자, 숫자, 특수문자(!@#$%^*+=-)를 사용하세요.</div>
						</div>
					</div>
				</div>
				<div class="form-group has-success mt-5">
					<div class="row">
						<div class="col-md-offset-1">
							<label for="password2"
								class="col-md-2 col-md-offset-2 col-form-label text-md-right">비밀번호
								재입력 </label>
						</div>
						<div class="col-md-6 mt-5">
							<form:input type="password" path="password2" id="password2"
								class="form-control required" placeholder="비밀번호 재입력" />
							<div id ="password-check2"></div>
						</div>
					</div>
				</div>
				
				<div class="form-group has-success">
					<div class="row">
						<div class="col-md-offset-1">
							<label for="customer_name"
								class="col-md-2 col-md-offset-2 col-form-label text-md-right">이름</label>
						</div>
						<div class="col-md-6">
							<form:input type="text" style="ime-mode: disabled" path="customer_name" id="customer_name" class="form-control required"
								placeholder="이름을 입력해 주세요"/>
							<div id = "name-check"></div>
						</div>
					</div>
				</div>

				<div class="form-group has-success">
					<div class="row">
						<div class="col-md-offset-1">
							<label for="tel"
								class=" mt-5 col-md-2 col-md-offset-2 col-form-label text-md-right">전화번호</label>
						</div>
						<div class="col-md-6 mt-5">
							<form:input type="number" style="ime-mode: disabled" path="tel"
								id="tel" class="form-control required" placeholder="전화번호" min="0" />
								<div id="number-tel">숫자만 입력하세요.</div>
						</div>
					</div>
				</div>
				
				<div class="form-group has-success">
					<div class="row">
						<div class="col-md-offset-1">
							<label for="userEmail"
								class=" mt-5 col-md-2 col-md-offset-2 col-form-label text-md-right">이메일</label>
						</div>
						<div class="col-md-6 mt-5">
							<form:input type="email" style="ime-mode: disabled" path="userEmail"
								id="userEmail" class="form-control required" placeholder="이메일 주소 입력"
								min="0" />
								<div id="email-check">이메일을 입력해주세요.</div>
								
						</div>
					</div>
				</div>
				
			<div class="form-group has-success">
				<div class="row">
					<div class="col-md-offset-1">
						<label for="year"
									class="col-md-2 col-md-offset-2 col-form-label text-md-right">생년월일</label>
					</div>
						<div class="mtd col-md-2">
							<form:select path="year" class="form-control" id="year" >
								<option>연도</option>
							</form:select>
						</div>
								
						<div class="mtd col-md-2">
							<form:select path="month" class="form-control" id="month">
								<option>월</option>
							</form:select>
						</div>
								
						<div class="mtd col-md-2">
							<form:select path="day" class="form-control" id="day">
								<option>일</option>
							</form:select>
						</div>
				</div>
			</div>
						<div class="col-md-2" align="center" style="float:none; margin:0 auto">
							<form:button type="submit" class="center btn btn-primary btn-lg btn-block">가입</form:button>
						</div>
				</form:form>
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
									<script type="text/javascript">
										$("#widget-subscribe-form")
												.validate(
														{
															submitHandler : function(
																	form) {
																$(form)
																		.find(
																				'.input-group-addon')
																		.find(
																				'.icon-email2')
																		.removeClass(
																				'icon-email2')
																		.addClass(
																				'icon-line-loader icon-spin');
																$(form)
																		.ajaxSubmit(
																				{
																					target : '#widget-subscribe-form-result',
																					success : function() {
																						$(
																								form)
																								.find(
																										'.input-group-addon')
																								.find(
																										'.icon-line-loader')
																								.removeClass(
																										'icon-line-loader icon-spin')
																								.addClass(
																										'icon-email2');
																						$(
																								'#widget-subscribe-form')
																								.find(
																										'.form-control')
																								.val(
																										'');
																						$(
																								'#widget-subscribe-form-result')
																								.attr(
																										'data-notify-msg',
																										$(
																												'#widget-subscribe-form-result')
																												.html())
																								.html(
																										'');
																						IGNITE.widget
																								.notifications($('#widget-subscribe-form-result'));
																					}
																				});
															}
														});
									</script>
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
												<li><a href="list.do"><div>공지사항</div></a></li>
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
							<a href="#">공지사항</a> <a href="hotel-About-Us.do">호텔소개</a> <a
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
	<script type="text/javascript" src="resources/js/Validation/singupValidation.js"></script>
	
	<script type="text/javascript">
		/* jQuery ajax 통신 */
// 		$(document).on('blur', '#customer_id', function(){
			
// 			var replyReg_id = $('#customer_id').val()
// 			console.log('확인'+replyReg_id)
// 			var headers = {"Content-Type" : "application/json", "X-HTTP-Method-Override" : "GET"}
// 			$.ajax({
// 				url: "${pageContext.request.contextPath}/doubleCheck.do?custmoer_id="+replyReg_id
// 				, headers : headers
// 				, contentType: "application/x-www-form-urlencoded; charset=UTF-8"
// 				, type : 'GET'
// 				, dataType : 'text'
// 				, beforeSend : function(xhr)
// 	               {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
// 	                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
// 	                },
// 	                success: function(result){
// 	                	console.log("연결 성공")
	                	
// 	                },
// 	                error: function(error){
// 	    			console.log("에러 : " + error);
// 	                }
// 			})
// 		});
	</script>

</body>
</html>