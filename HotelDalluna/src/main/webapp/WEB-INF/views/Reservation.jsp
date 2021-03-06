<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-156464840-1"></script>
	<!-- NAVER 통계  -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script src="resources/js/googleAnalytics/analytics.js"></script>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />
	
	<!-- csrf 설정 -->
	<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />

    <!-- Stylesheets
    ============================================= -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/images/favicon/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="resources/images/favicon/favicon-32x32.png">        
	<link href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/style.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />
    <link rel="stylesheet" href="resources/css/responsive.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
    
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/plugins.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="resources/include/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="resources/include/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	
	<!-- 달력 스크립트  -->
	 <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
    />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.css"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/date-fns/1.29.0/date_fns.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>   
	<!-- 달력 스크립트 종료 -->  
	
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="resources/include/rs-plugin/css/settings.css" media="screen" />

    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna</title>
<!-- google-font  
	====================================================
	 -->
<style>
@import
	url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap&subset=korean');
	
      html,
      body {
        min-height: 100vh;
        font-size: 14px;
        font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell,
          Fira Sans, Droid Sans, Helvetica Neue, sans-serif;
        line-height: 18px;
        font-weight: 400;
        -webkit-font-smoothing: antialiased;
        padding: 10px;
      }
      .align-right {
        text-align: right;
      }
      h1 {
        font-size: 1.8em;
        line-height: 1.5em;
      }
      .datepicker-container {
        margin-bottom: 30px;
      }

      #datepicker-button-trigger {
        background: #008489;
        border: 1px solid #008489;
        color: white;
        padding: 6px 10px;
        border-radius: 4px;
        font-size: 15px;
        font-weight: bold;
        text-align: center;
        min-width: 200px;
      }
      input {
        padding: 6px 10px;
        border: 1px solid rgba(0, 0, 0, 0.2);
      }
      .inline-with-input {
        width: 300px;
      }
      .inline-with-input input {
        width: 100%;
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

					<!-- Logo============================================= -->
					<div id="logo">
						<a href="index" class="standard-logo"
							data-dark-logo="images/logo/logo-dark.png"><img
							src="resources/images/logo/footer-logo-large.png" alt="Chocolat Logo"></a>
						<a href="index" class="retina-logo"
							data-dark-logo="images/logo/logo-dark-large.png"><img
							src="resources/images/logo/footer-logo-large.png" alt="Chocolat Logo"></a>
					</div>
					<!-- #logo end -->

					<!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul class="">
							<li><a href="#" onclick="return false;"><div>호텔소개</div></a>
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
							<li class="current"><a href="Reservation"><div>예약하기</div></a></li>
							<li><a href="ReservationConfirm"><div>예약조회 및 취소</div></a></li>
							
							<!-- 로그인 하지 않았을 경우 보여준다.  -->
							<sec:authorize access="isAnonymous()">
								 <li><a href="login"><div>로그인</div></a>
									<ul>
	                                	<li><a href="login"><div>로그인</div></a></li>
	                                	<li><a href="accountInfoFind"><div>아이디/비밀번호 찾기</div></a></li>
	                                	<li><a href="singupForm"><div>회원가입</div></a></li>
                              	 	 </ul>   
                              	 </li>
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
                    </nav><!-- #primary-menu end -->
				</div>
			</div>
		</header>
		<!-- #header end -->

		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax"
			style="background-image: url('resources/images/hotel-about/main.jpg'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1>호텔 델루나 예약</h1>
				<ol class="breadcrumb">
					<li><a href="index">홈</a></li>
					<li class="active">호텔 델루나 예약</li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
        <form action="ReservationCheck" method="post" id="reservation-form">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input id="dateOne" name="Reservation_date_in" type="hidden">
        <input id="dateTwo" name="Reservation_date_out" type="hidden">
		<section id="content">

			<div class="content-wrap bgcolor-grey-li2ght">

				<div class="container clearfix">

					<!-- Post Content
                    ============================================= -->
					<div>

						<!-- Posts
                        ============================================= -->
						<div id="posts">

							<div class="entry clearfix">

								<div class="panel-group" id="accordion" role="tablist"
									aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingOne">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseOne" aria-expanded="true"
													aria-controls="collapseOne"> 일정체크 & 객실 인원선택 </a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in"
											role="tabpanel" aria-labelledby="headingOne">
											<div class="panel-body">
											<div class="row">
											<div class="col-md-3">
											
												<!-- 달력시작 -->
												<div id="app" class="app" :class="{'align-right': alignRight}">
												 <div  class="datepicker-container with-button">
											        <div class="datepicker-trigger">
											          <button id="datepicker-button-trigger" >
											            {{ formatDates(buttonDateOne, buttonDateTwo) || '날짜를 선택해 주세요' }}
											          </button>
											          <airbnb-style-datepicker
											            :trigger-element-id="'datepicker-button-trigger'"
											            :mode="'range'"
											            :date-one="buttonDateOne"
											            :date-two="buttonDateTwo"
											            :min-date="new Date()"
											            :fullscreen-mobile="true"
											            :months-to-show="2"
											            :offset-y="10"
											            :trigger="trigger"
											            v-on:date-one-selected="function(val) { buttonDateOne = val }"
											            v-on:date-two-selected="function(val) { buttonDateTwo = val }"
											            v-on:closed="onClosed"
											            v-on:previous-month="onMonthChange"
											            v-on:next-month="onMonthChange"
											          ></airbnb-style-datepicker>
											        </div>
											      </div>
											    </div><!-- 달력끝 -->
											    </div>
											    
												<!-- 예약 확인 -->
														<c:if test="${!empty page}">
															<c:if test="${page ne 1}">
																<script type="text/javascript">
																	alert("이미 예약 되어 있습니다.")
																</script>
															</c:if>
														</c:if>
	
												<div class="col-md-3">
												<select class="form-control" id ="room_type" name="room_type" >
												  <option value="1">디럭스 더블</option>
												  <option value="2">디럭스 트윈</option>
												  <option value="3">패밀리 스위트</option>
												  <option value="4">그랜드 스위트</option>
												</select>
												</div>
												
												<div class="col-md-3">
												<select class="form-control" name="adult" >
												  <option value="1">성인 1</option>
												  <option value="2">성인 2</option>
												  <option value="3">성인 3</option>
												</select>
												</div>
												
												<div class="col-md-3">
									
												<select class="form-control" name="child" >
												  <option value="1">어린이 1</option>
												  <option value="2">어린이 2</option>
												  <option value="3">어린이 3</option>
												</select>
												</div>
												</div>
											</div>
										</div>
									</div>
								</div><!-- 아코디언 끝 -->
							<section>
							<blockquote>
								<p style="font-size: 20px;font-weight:bold ">호텔 정보</p>
								<p id="reservation-date" style="font-size: 15px">예약 날짜 :</p>
								<p id="reservation-room" style="font-size: 15px">객 실 :</p>
								<p id="reservation-check" style="font-size: 15px">예약 가능 여부 :
								<p id="reservation-pay" style="font-size: 15px">가 격 : 
							</blockquote>
							</section>
								<div style="float:right">
									<input class="btn btn-primary btn-lg" id="reservation-submit" type="button" value="예약하기" >
								</div>
							</div>
						</div>
					</div>
					<!-- .sidebar end -->
				</div>
			</div>
			
		</section>
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
                                                <li><a href="ReservationConfirm"><div>예약조회 및 취소</div></a></li>
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
		<!-- #content end vue.js-->
	<script src="https://unpkg.com/vue-airbnb-style-datepicker@latest/dist/vue-airbnb-style-datepicker.min.js"></script>
	<script type="text/javascript" src="resources/js/reservation/reservation.js"></script>
</body>
</html>