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
                            <li class="current"><a href="#" onclick="return false;"><div>호텔소개</div></a>
                                        <ul>                                
                                    		<li><a href="hotel-About-Us.html"><div>호텔소개</div></a></li>
                                    		<li><a href="Location.html"><div>호텔위치</div></a></li>
                                    		<li><a href="list.do"><div>공지사항</div></a></li>
                                         </ul>                                                              
                            </li>
                            <li><a href="#" onclick="return false;"><div>객실</div></a>
                                <ul>
                                    <li><a href="deluxe-1.html"><div>디럭스</div></a>
                                        <ul>
                                            <li><a href="deluxe-1.html"><div>디럭스 더블</div></a></li>
                                            <li><a href="deluxe-2.html"><div>디럭스 트윈</div></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="suite-1.html"><div>스위트</div></a>
                                        <ul>
                                            <li><a href="suite-1.html"><div>패밀리 스위트</div></a></li>
                                            <li><a href="suite-2.html"><div>그랜드 스위트</div></a></li>
                                        </ul>
                                    </li>                                                                                                                                       
                                </ul>
                            </li>
                            <li><a href="dining-1.html"><div>다이닝</div></a>
                                <ul>
                                    <li><a href="dining-1.html"><div>파노라마 (올 데이 다이닝)</div></a></li>
                                </ul>
                            </li>
                            <li><a href="#" onclick="return false;"><div>부대시설</div></a>
                                <ul>
                                	<li><a href="menu-item.jsp"><div>사계절 온수풀 해온</div></a></li>
                                	<li><a href="menu-item2.jsp"><div>해온 루프탑 테라스</div></a></li>
                            		<li><a href="menu-item3.jsp"><div>프라이빗 카바나</div></a></li>
                                </ul>
                            </li>
                            <li><a href="contact-1.jsp"><div>고객의 소리</div></a></li>
                            <li><a href="Reseravtion.do"><div>예약하기</div></a></li>     
                            <li><a href="ReservationConfirm.do"><div>예약조회 및 취소</div></a></li>               
                            
                      	<!-- 로그인 하지 않았을 경우 보여준다.  -->
							<sec:authorize access="isAnonymous()">
								 <li><a href="login.do"><div>로그인</div></a>
									<ul>
	                                	<li><a href="login.do"><div>로그인</div></a></li>
	                                	<li><a href="#"><div>아이디/비밀번호 찾기</div></a></li>
	                                	<li><a href="MemberAddForm2.jsp"><div>회원가입</div></a></li>
                              	 	 </ul>   
                              	 </li>
								</sec:authorize>
								<!-- 로그인 했을 경우 보여준다.  -->
							 <sec:authorize access="isAuthenticated()">
									<li><a href="logout.do"><div>로그아웃</div></a></li>
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

            <div class="container clearfix" style="border-width:3px;">
                <h1>호텔 델루나 위치</h1>
                
                <ol class="breadcrumb">
                    <li><a href="index.html">홈</a></li>
                    <li><a href="hotel-About-Us.html">호텔소개</a></li>
                    <li class="active">호텔 델루나 위치</li>
                </ol>
            </div>

   	  </section><!-- #page-title end -->
   	  <p>
            <div class="container clearfix">

                <!-- Contact Form Overlay
                ============================================= -->
                <div id="contact-form-overlay" class="clearfix bgcolor-grey">

                    <div class="fancy-title title-dotted-border">
                        <h3>예약 조회 및 취소</h3>
                    </div>

                    <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>

                    <!-- Contact Form
                    ============================================= -->
                    <form>
					<input type="hidden" name="reservation_number" id="reservation_number" value="${dto.reservation_number}">
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">예약번호</label><br>
							<div class="well well-sm">${dto.reservation_number}</div>
						</div>

						<div class="col-md-6">
							<label for="template-contactform-name">룸 이름</label><br>
							<c:choose>
								<c:when test="${dto.room_type eq 1}"><div class="well well-sm">디럭스 더블</div></c:when>
								<c:when test="${dto.room_type eq 2}"><div class="well well-sm">디럭스 트윈</div></c:when>
								<c:when test="${dto.room_type eq 3}"><div class="well well-sm">패밀리 스위트</div></c:when>
								<c:when test="${dto.room_type eq 4}"><div class="well well-sm">그랜드 스위트</div></c:when>
							</c:choose>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">아이디</label><br>
							<sec:authorize access="isAuthenticated()">
		                    <sec:authentication property="principal.username" var="customer_id" />
		                   <div class="well well-sm">${dto.customer_id }</div>
		                </sec:authorize></td>
							
						</div>

						<div class="col-md-6">
							<label for="template-contactform-name">예약날짜</label><br>
							<div class="well well-sm">${dto.reservation_date_in} ~ ${dto.reservation_date_out}</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-6">
							<label for="template-contactform-name">성인</label><br>
							<div class="well well-sm">${dto.adult} 명</div>
						</div>

						<div class="col-md-6">
							<label for="template-contactform-name">어린이</label><br>
							<div class="well well-sm">${dto.child} 명</div>
						</div>
					</div>
					
					<div class="col_full">
							<label for="template-contactform-name">가격</label><br>
							<div class="well well-sm"><fmt:formatNumber value="${dto.price }" pattern="#,###" />원</div>
					</div>
					
					<div class="col_full">
							<label for="template-contactform-name">결제 확인</label><br>
							<div class="well well-sm">결제를 진행해 주세요</div>
					</div>
	
                        <div class="clearfix" style=" text-align:center;" >
                                <button type="button" onclick="popup();" value="${dto.reservation_number}" class="button button-medium button-reveal button-3d button-rounded tright nomargin" style="color:black; ">
                                <span >결제하기</span> <i class="icon-angle-right"></i></button>
                                <button type="button" onClick="check()" value="${dto.reservation_number}"class="button button-medium button-reveal button-3d button-rounded tright nomargin" style="color:black;">
                                <span>예약취소</span> <i class="icon-angle-right"></i></button></div>
                        </form>
                    <script type="text/javascript">
                        $("#template-contactform").validate({
                            submitHandler: function(form) {
                                $('.form-process').fadeIn();
                                $(form).ajaxSubmit({
                                    target: '#contact-form-result',
                                    success: function() {
                                        $('.form-process').fadeOut();
                                        $('#template-contactform').find('.sm-form-control').val('');
                                        $('#contact-form-result').attr('data-notify-msg', $('#contact-form-result').html()).html('');
                                        IGNITE.widget.notifications($('#contact-form-result'));
                                    }
                                });
                            }
                        });
                    </script>
                    
                    <script type="text/javascript">
				        function popup(){
				            var url = "ReservationPay.do";
				            var name = "popup test";
				            var option = "width = 790px, height = 610px, top = 100, left = 200, location = no";
				            window.open(url, name, option);
				        }
				        
				        function check(){
				        	if(confirm("예약을 취소 하시겠습니까?")==true){
				        		document.location.href="ReservationCancell.do?reservation_number=${dto.reservation_number}"
				        		document.form.submit();
				        	}else{
				        		return false;
				        	}
				        }
				    </script>

                    <div class="line"></div>

                    <!-- Contact Info
                    ============================================= -->
                 

                    <!-- Twitter
                    ============================================= -->
                  
                      <!--   <script type="text/javascript">

                            jQuery(document).ready(function($){
                                $.getJSON('include/twitter/tweets.php?username=envato&count=3', function(tweets){
                                    $("#twitter-scroller .slider-wrap").html(sm_format_twitter3(tweets));
                                });
                            });

                        </script> -->

                    </div><!-- Twitter End -->

                </div><!-- Contact Form Overlay End -->

            </div>
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
                                                <li><a href="contact-1.jsp"><div>고객의 소리</div></a></li>
                                			</ul>
                            			</div>
                                    </div>

                                    <div class="col-md-6 bottommargin-sm col_last">

                            			<div class="widget_links clearfix">
                                			<ul>
                                    			<li><a href="deluxe-1.html"><div>객실 - 디럭스</div></a></li>
                                    			<li><a href="suite-1.html"><div>객실 - 스위트</div></a></li>
                                    			<li><a href="dining-1.html"><div>다이닝</div></a></li>
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

                         <b>호텔서비스</b>
                         <br>00:00 ~ 24:00<br>
                         <br>
                        <ul class="nobottommargin nobullets">
                            <li><strong>객실예약 (주중) </strong> </li>
                            
                            09:00 ~ 18:00<br><br>
                              업무시간 외에는<br>
                              온라인 예약을 이용해주시기 바랍니다.
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

</body>
</html>