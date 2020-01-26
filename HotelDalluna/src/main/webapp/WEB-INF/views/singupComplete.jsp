<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html dir="ltr" lang="UTF-8">
<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Bootstrap 3 Website Template" />

    <!-- Stylesheets
    ============================================= -->
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
	
    <!--[if lt IE 9]>
    	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->

    <!-- External JavaScripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/plugins.js"></script>

    <!-- Document Title
    ============================================= -->
	<title>Hotel Delluna</title>

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
                    </div><!-- #logo end -->
                                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">
                        <ul class="">
							<li><div><a href="#" onclick="return false;">호텔소개</a></div>
								<ul>
									<li><div><a href="hotel-About-Us.do">호텔소개</a></div></li>
									<li><div><a href="Location.do">호텔위치</a></div></li>
									<li><div><a href="list.do">공지사항</a></div></li>
								</ul></li>
							<li><div><a href="#" onclick="return false;">객실</a></div>
								<ul>
									<li><div><a href="deluxe-1.do">디럭스</a></div>
										<ul>
											<li><div><a href="deluxe-1.do">디럭스 더블</a></div></li>
											<li><div><a href="deluxe-2.do">디럭스 트윈</a></div></li>
										</ul></li>
									<li><div><a href="suite-1.do">스위트</a></div>
										<ul>
											<li><div><a href="suite-1.do">패밀리 스위트</a></div></li>
											<li><div><a href="suite-2.do">그랜드 스위트</a></div></li>

										</ul></li>
								</ul></li>
							<li><div><a href="dining-1.do">다이닝</a></div>
								<ul>
									<li><div><a href="dining-1.do">파노라마 (올 데이 다이닝)</a></div></li>
								</ul></li>
							<li><div><a href="#" onclick="return false;">부대시설</a></div>
								<ul>
									<li><div><a href="menu-item.do">사계절 온수풀 해온</a></div></li>
									<li><div><a href="menu-item2.do">해온 루프탑 테라스</a></div></li>
									<li><div><a href="menu-item3.do">프라이빗 카바나</a></div></li>
								</ul></li>
							<li><div><a href="contact-1.do">고객의 소리</a></div></li>
							<li><div><a href="Reservation.do">예약하기</a></div></li>
							<li class="current"><div><a href="ReservationConfirm.do">예약조회 및 취소</a></div></li>
							
							<!-- 로그인 하지 않았을 경우 보여준다.  -->
							<sec:authorize access="isAnonymous()">
								 <li><div><a href="login.do">로그인</a></div>
									<ul>
	                                	<li><div><a href="login.do">로그인</a></div></li>
	                                	<li><div><a href="#">아이디/비밀번호 찾기</a></div></li>
	                                	<li><div><a href="singupForm.do">회원가입</a></div></li>
                              	 	 </ul>   
                              	 </li>
								</sec:authorize>
								<!-- 로그인 했을 경우 보여준다.  -->
							 <sec:authorize access="isAuthenticated()">
									<li><div><a href="logout.do" >로그아웃</a></div></li>
							</sec:authorize>
						</ul>
                    </nav><!-- #primary-menu end -->
                </div>
          </div>

        </header><!-- #header end -->

        <!-- Page Title
        ============================================= -->


        <!-- Contact Form & Map Overlay Section
        ============================================= -->
       <section id="page-title" class="page-title-parallax" style="background-image: url('resources/images/hotel-about/main.jpg'); padding: 120px 0;" data-stellar-background-ratio="0.3">

            <nav class="container clearfix" style="border-width:3px;">
                
                <ol class="breadcrumb">
                    <li class="singupComplete">회원 가입 완료</li>
                </ol>
            </nav>

   	  </section><!-- #page-title end -->
   	  <p>
            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey">

                    <div class="fancy-title title-dotted-border">
                        <h3>회원 가입 완료</h3>
                    </div>

                    <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
								<div style="text-align:center">
								<h3>${customer_name}님! 호텔 델루나 회원 가입이 완료 되었습니다.</h3>
								</div>
							<div style="text-align:center">
									<a href="index.do">
									<button type="button" class="btn btn-primary btn-lg active">호텔 델루나 메인으로 이동</button></a>
							</div>

                    </div><!-- Twitter End -->

                </div><!-- Contact Form Overlay End -->
            
                    <script type="text/javascript">

                        jQuery(document).ready(function($) {

                            var ocTeam = $("#oc-team-list");

                            ocTeam.owlCarousel({
                                responsive:{
                                    0:{ items:1 },
                                    600:{ items:1 },
                                    1000:{ items:2 }
                                },
                                margin: 30,
                                nav: false,
                                dots:true
                            });

                        });

                    </script>       
                    <br>             

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
                          

                            <div class="line" style="margin: 30px 0;"></div>

                            <div class="col_half">
                                <div class="widget subscribe-widget clearfix">
                                
                                </div>                            
                            </div>

                            <div class="col_half col_last">
                                <div class="widget clearfix">

                                    <div class="hidden-xs hidden-sm"><div class="clear" style="padding-top: 10px;"></div></div>

                                    <div class="col-md-6 bottommargin-sm">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><div><a href="index.do">메인</a></div></li>
                                    			<li><div><a href="list.do">공지사항</a></div></li>
                                    			<li><div><a href="hotel-About-Us.html">호텔소개</a></div></li>
                                    			<li><div><a href="Location.html">호텔위치</a></div></li>
                                                <li><div><a href="contact-1.jsp">고객의 소리</a></div></li>
                                			</ul>
                            			</div>
                                    </div>

                                    <div class="col-md-6 bottommargin-sm col_last">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><div><a href="deluxe-1.html">객실 - 디럭스</a></div></li>
                                    			<li><div><a href="suite-1.html">객실 - 스위트</a></div></li>
                                    			<li><div><a href="dining-1.html">다이닝</a></div></li>
                                    			<li><div><a href="Reseravtion.do">예약하기</a></div></li>
                                                <li><div><a href="ReservationConfirm.do">예약조회 및 취소</a></div></li>
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

                         <b>호텔서비스</b>
                         <br>00:00 ~ 24:00<br>
                         <br>
                        <ul class="nobottommargin nobullets">
								<li><strong>호텔서비스</strong><br>00:00 ~ 24:00<br></li>
								<li><strong>객실예약(주중)</strong><br>09:00 ~ 18:00<br></li>
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
                        <img src="resources/images/logo/footer-logo.png" alt="" class="footer-logo standard-logo">
                        <img src="resources/images/logo/footer-logo-large.png" alt="" class="footer-logo retina-logo">
                         Copyright &copy; 2019 Hotel Delluna. All Rights Reserved.
                    </div>

                    <div class="col_half col_last tright">
                        <div class="copyrights-menu copyright-links fright clearfix">
                           <a href="#">공지사항</a> <a href="hotel-About-Us.html">호텔소개</a> <a href="deluxe-1.html">객실</a> <a href="contact-2.jsp">예약조회 및 취소</a> <a href="contact-1.jsp">고객의 소리</a>
                        </div>
                        <div class="fright clearfix">
                            <a href="https://www.facebook.com/" class="social-icon si-small si-borderless nobottommargin si-facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>

                            <a href="https://twitter.com/?lang=ko" class="social-icon si-small si-borderless nobottommargin si-twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>

                            <a href="https://plus.google.com/" class="social-icon si-small si-borderless nobottommargin si-gplus">
                                <i class="icon-gplus"></i>
                                <i class="icon-gplus"></i>
                            </a>

                            <a href="https://www.pinterest.co.kr/" class="social-icon si-small si-borderless nobottommargin si-pinterest">
                                <i class="icon-pinterest"></i>
                                <i class="icon-pinterest"></i>
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
    
    <script>

//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/ReservationConfirm.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;

	}



  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/ReservationConfirm.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}



	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/ReservationConfirm.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}

</script>

</body>
</html>