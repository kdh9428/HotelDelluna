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
										<li><a href="accountInfoFind.do"><div>아이디/비밀번호
													찾기</div></a></li>
										<li><a href="singupForm.do"><div>회원가입</div></a></li>
									</ul></li>
							</sec:authorize>
							<!-- 로그인 했을 경우 보여준다.  -->
							<sec:authorize access="isAuthenticated()">
								<li><a href="#" onclick="return false;"><div>로그아웃</div></a>
									<ul>
										<li><a href="logout.do"
											onclick="document.getElementById('logout-form').submit();">
												<div>로그아웃</div>
										</a></li>
										<li><a href="userModifyPasswordCheck.do"><div>회원정보
													수정</div></a></li>
									</ul></li>
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
				<h1>아이디/비밀번호 찾기</h1>

				<ol class="breadcrumb">
					<li><a href="index.html">홈</a></li>
					<li><a href="hotel-About-Us.html">아아디/비밀번호 찾기</a></li>
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
					<form action="findUserPassword.do" id="find-user" method="post"
						onsubmit="return passwordValidate()">
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
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
			</div>
		</div>


		<!-- Modal -->
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
						<a href="index.do"><button type="button" class="btn btn-primary">메인 화면</button></a>
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
								href="deluxe-double.do">객실</a> <a href="contact-2.do">예약조회 및
								취소</a> <a href="contact.jsp">고객의 소리</a>
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
	function validate(){
		var userEmailCheck = document.querySelector('#userEmail').value
		var customerNameCheck = document.querySelector('#customerName').value
		
		//이름 입력확인
		if(!customerNameCheck){
			alert('이름을 입력 해주세요')
			document.querySelector('#customerName').focus()
			return false
		}else if(!/^[가-힣a-z]+$/ig.test(customerNameCheck)){
			alert('이름은 한글, 영문 대소문자만 입력 가능합니다.')
			document.querySelector('#customerName').focus()
			return false
		}
		
		//이메일 입력확인
		if(!userEmailCheck){
			alert('이메일을 입력 해주세요')
			document.querySelector('#userEmail').focus()
			return false
		}else if(!/^([_A-Za-z0-9-_]+[._A-Za-z0-9-_]*)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(userEmailCheck)){
			alert('적합하지 않은 이메일 형식입니다.')
			document.querySelector('#userEmail').focus()
			return false
		}else{
			id()
		}
		
	}
	
	function passwordValidate(){
		var userPasswordEmailCheck = document.querySelector('#userPasswordEmailCheck').value
		var userIdCheck = document.querySelector('#customer_id').value
		
		//아이디 입력확인
		if(!userIdCheck){
			alert('아이디를 입력 해주세요')
			document.querySelector('#customer_id').focus()
			return false
		}else if(!/^[a-z0-9]+$/ig.test(userIdCheck)){
			alert('아이디는 숫자, 문자 이외의 값은 입력 불가능합니다.')
			document.querySelector('#customer_id').focus()
			return false
		}
		
		//이메일 입력확인
		if(!userPasswordEmailCheck){
			alert('이메일을 입력 해주세요')
			document.querySelector('#userPasswordEmailCheck').focus()
			return false
		}else if(!/^([_A-Za-z0-9-_]+[._A-Za-z0-9-_]*)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/.test(userPasswordEmailCheck)){
			alert('적합하지 않은 이메일 형식입니다.')
			document.querySelector('#userPasswordEmailCheck').focus()
			return false
		}else{
			password()
		}
	}
	</script>

	<script type="text/javascript">
	//id찾기 버튼 클릭시 이벤트 발생
	 document.querySelector('#find-id').addEventListener('click',validate)
	//비밀번호 재설정 클릭시		
	 document.querySelector('#find-password').addEventListener('click',passwordValidate)
	 //ajax 
		function id(){
		 	var userEmailCheck = document.querySelector('#userEmail').value
			var customerNameCheck = document.querySelector('#customerName').value 
			var xhr = new XMLHttpRequest();
		    var json = JSON.stringify({ 
		            "customerName" :customerNameCheck,
		            "userEmail" :userEmailCheck,
		        })
		     xhr.open('POST',"findUserId.do",true);
			 xhr.setRequestHeader('Content-type','application/json; charset=UTF-8');
			 xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	         xhr.onload = () =>{
	         if(xhr.status === 200){//서버 응답 체크, 200이면 정상 응답
	         	if(xhr.responseText == 'true'){
	         		$('#myModal').modal('show')
	         		document.querySelector('.modal-body').innerHTML = '회원님의 이메일주소로 아이디를 발송해드렸습니다.'
	         	}else{
	         		$('#myModal').modal('show')
	         		document.querySelector('.modal-body').innerHTML = '입력하신 정보로 등록된 회원이 없습니다. 정보를 다시 확인하시고 시도해주세요.'
	         	}
				}else{
					alert('ajax 에러!')
				}
			}
	         xhr.send(json);
		 }
	
		
	</script>
</body>
</html>