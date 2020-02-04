<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-156464840-1"></script>
	<!-- NAVER 통계  -->
	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
	<script src="resources/js/googleAnalytics/analytics.js"></script>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />

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

    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna | Room - Family Suite</title>

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

                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                    <!-- Logo
                    ============================================= -->
                 	 <div id="logo">
						<a href="index.do" class="standard-logo" data-dark-logo="resources/images/logo/logo-dark.png"><img src="resources/images/logo/footer-logo-large.png" alt="Chocolat Logo"></a>
                        <a href="index.do" class="retina-logo" data-dark-logo="resources/images/logo/logo-dark-large.png"><img src="resources/images/logo/footer-logo-large.png" alt="Chocolat Logo"></a>
					</div>
                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul class="">
							<li><a href="#" onclick="return false;"><div>호텔소개</div></a>
								<ul>
									<li><a href="hotel-About-Us.do"><div>호텔소개</div></a></li>
									<li><a href="Location.do"><div>호텔위치</div></a></li>
									<li><a href="list.do"><div>공지사항</div></a></li>
								</ul></li>
							<li class="current"><a href="#" onclick="return false;"><div>객실</div></a>
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
                              	 	 </ul>   
                              	 </li>
								</sec:authorize>
								<!-- 로그인 했을 경우 보여준다.  -->
							 <sec:authorize access="isAuthenticated()">
									<li><a href="logout.do" > <div>로그아웃</div></a></li>
							</sec:authorize>
							<%-- <c:url value="logout" /> --%>
						</ul>
                    </nav><!-- #primary-menu end -->
                </div>
          </div>

        </header><!-- #header end -->    
        
        <!-- Page Title
        ============================================= -->
        <section id="page-title" class="page-title-parallax" style="background-image: url('resources/images/logo/room.PNG'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <div class="container clearfix">
                <FONT SIZE="6" COLOR="white">Hotel Delluna | Suite Room</FONT>
                <ol class="breadcrumb">
                </ol>
            </div>

   	  </section><!-- #page-title end -->

        <!-- Content
        ============================================= -->
        <section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">

					<div class="nobottommargin clearfix">

						<div class="nobottommargin">

							<div class="clearfix">

								<h2>패밀리 스위트(Family Suite)</h2>

								<p>
									<a href="Reseravtion.do" class="btn btn-primary" role="button">예약하기</a>
									<a href="contact.do" class="btn btn-primary" role="button">문의하기</a>
								</p>
								<div class="entry clearfix">
									<div class="entry-image">
										<div class="fslider" data-arrows="false"
											data-lightbox="gallery">
											<div class="flexslider">
												<div class="slider-wrap">
													<div class="slide">
														<a href="resources/images/logo/room-9.PNG"
															data-lightbox="gallery-item"><img class="image_fade"
															src="resources/images/logo/room-9.PNG" alt=""></a>
													</div>
													<div class="slide">
														<a href="resources/images/logo/room-10.PNG"
															data-lightbox="gallery-item"><img class="image_fade"
															src="resources/images/logo/room-10.PNG" alt=""></a>
													</div>
													<div class="slide">
														<a href="resources/images/logo/room-11.PNG"
															data-lightbox="gallery-item"><img class="image_fade"
															src="resources/images/logo/room-11.PNG" alt=""></a>
													</div>
													<div class="slide">
														<a href="resources/images/logo/room-12.PNG"
															data-lightbox="gallery-item"><img class="image_fade"
															src="resources/images/logo/room-12.PNG" alt=""></a>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="topmargin-sm">

									<hr style="border: solid 1px navy;">
									<h3>객실개요</h3>
									<p>
										침대 타입 : 더블침대 1개 + 싱글침대 1개 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										체크인/체크아웃 : 14:00 / 11:00<br> 최대 수용인원 : 4명
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 전망 : 오션 뷰
									<hr style="border: solid 1px navy;">
									<h3>서비스</h3>
									<p>&middot; 제주도의 아름다운 자연 전망(오션 뷰)
									<p>
										&middot; Spa & Garden 해온: 사계절 야외수영장 및 자쿠지, 사우나<br>
										&middot; 해온(he:on) 베딩 시스템: 최상의 숙면을 위한 침대 및 침구류<br>
										&middot; 요청시 기능성 베개 제공<br> &middot; 전 객실 초고속 무료 인터넷 (유선,
										와이파이)
									<hr style="border: solid 1px navy;">
									<h3>어메니티</h3>
									<p>
									<h6>
										일반 : 60" LED TV / 발코니 / 손전등 / 금고 / 사무용 데스크
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 욕실 : 월풀(야쿠지) / 욕실용품(몰튼브라운) / 비데
										/ 면도기 / 목욕 가운 / 헤어드라이어<br> 기타 : 케이블,위성 TV채널 / 무료 생수 1일 4병
										/ 무료 차(Tea) 서비스 제공
									</h6>
									<hr style="border: solid 1px navy;">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


		</section><!-- #content end --> 

        <!-- Footer
        ============================================= -->
        <footer id="footer" class="footer">
        
            <div class="container">

                <!-- Footer Widgets
                ============================================= -->
                <div class="footer-widgets-wrap clearfix">

                    <div class="col_two_third">

                        <div class="widget clearfix">

                            <h3>(주)호텔 델루나 <span>02-1544-1111</span></h3>
                            <p>63535, 제주특별자치도 서귀포시 중문관광로 72번길, 호텔 델루나.</p>

                            <div class="line" style="margin: 30px 0;"></div>

                            <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
                                    <h5>Email : hoteldelluna@hoteldelluna.co.kr</h5>
                                    <script type="text/javascript">
                                        $("#widget-subscribe-form").validate({
                                            submitHandler: function(form) {
                                                $(form).find('.input-group-addon').find('.icon-email2').removeClass('icon-email2').addClass('icon-line-loader icon-spin');
                                                $(form).ajaxSubmit({
                                                    target: '#widget-subscribe-form-result',
                                                    success: function() {
                                                        $(form).find('.input-group-addon').find('.icon-line-loader').removeClass('icon-line-loader icon-spin').addClass('icon-email2');
                                                        $('#widget-subscribe-form').find('.form-control').val('');
                                                        $('#widget-subscribe-form-result').attr('data-notify-msg', $('#widget-subscribe-form-result').html()).html('');
                                                        IGNITE.widget.notifications($('#widget-subscribe-form-result'));
                                                    }
                                                });
                                            }
                                        });
                                    </script>
                                </div>                            
                            </div>

                            <div class="col_half col_last">
                                <div class="widget clearfix">

                                    <div class="hidden-xs hidden-sm"><div class="clear" style="padding-top: 10px;"></div></div>

                                    <div class="col-md-6 bottommargin-sm">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="index.do"><div>메인</div></a></li>
                                    			<li><a href="list.do"><div>공지사항</div></a></li>
                                    			<li><a href="hotel-About-Us.html"><div>호텔소개</div></a></li>
                                    			<li><a href="Location.html"><div>호텔위치</div></a></li>
                                                <li><a href="contact.jsp"><div>고객의 소리</div></a></li>
                                			</ul>
                            			</div>
                                    </div>

                                    <div class="col-md-6 bottommargin-sm col_last">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="deluxe-double.html"><div>객실 - 디럭스</div></a></li>
                                    			<li><a href="family-suite.html"><div>객실 - 스위트</div></a></li>
                                    			<li><a href="dining.html"><div>다이닝</div></a></li>
                                    			<li><a href="Reseravtion.do"><div>예약하기</div></a></li>
                                                <li><a href="ReservationConfirm.do"><div>예약조회 및 취소</div></a></li>
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
                            <li><strong>호텔서비스.</strong><br>00:00 ~ 24:00</li><br>
                            <li><strong>객실예약(주중)안내.</strong><br>전화예약 09:00 ~ 18:00</li><p>온라인예약 00:00 ~ 24:00<br>
                            <li>업무시간 외에는<br> 온라인 예약을 이용해주시기 바랍니다.</li>
                        </ul>
                        </div>
                        
                        <div class="widget clearfix">
                        <div class="fancy-title title-border">
                            <h4>Address</h4>
                        </div>

                        <ul class="nobottommargin nobullets">
                            <li>63535, 제주특별자치도 </li>
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
                        <img src="resources/images/logo/footer-logo.png" alt="" class="footer-logo standard-logo">
                        <img src="resources/images/logo/footer-logo-large.png" alt="" class="footer-logo retina-logo">
                        Copyright &copy; 2019 Hotel Delluna. All Rights Reserved.
                    </div>

                    <div class="col_half col_last tright">
                        <div class="copyrights-menu copyright-links fright clearfix">
                            <a href="#">공지사항</a> <a href="hotel-About-Us.html">호텔소개</a> <a href="deluxe-double.html">객실</a> <a href="contact-2.jsp">예약조회 및 취소</a> <a href="contact.jsp">고객의 소리</a>
                        </div>
                        <div class="fright clearfix">
                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-vimeo">
                                <i class="icon-vimeo"></i>
                                <i class="icon-vimeo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-github">
                                <i class="icon-github"></i>
                                <i class="icon-github"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-yahoo">
                                <i class="icon-yahoo"></i>
                                <i class="icon-yahoo"></i>
                            </a>

                            <a href="#" class="social-icon si-small si-borderless nobottommargin si-linkedin">
                                <i class="icon-linkedin"></i>
                                <i class="icon-linkedin"></i>
                            </a>
                        </div>
                    </div>

                </div>

            </div><!-- #copyrights end -->

        </footer><!-- #footer end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>