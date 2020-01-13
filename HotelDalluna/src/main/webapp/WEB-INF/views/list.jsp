<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>

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
	url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap&subset=korean')
	;
</style>

<script>

//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;

	}



  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}



	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/list.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;
	}

</script>
    
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
						<a href="index.do" class="standard-logo"
							data-dark-logo="images/logo/logo-dark.png"><img
							src="resources/images/logo/footer-logo-large.png" alt="Chocolat Logo"></a>
						<a href="index.do" class="retina-logo"
							data-dark-logo="images/logo/logo-dark-large.png"><img
							src="resources/images/logo/footer-logo-large.png" alt="Chocolat Logo"></a>
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
									<li><a href="deluxe-1.do"><div>디럭스</div></a>
										<ul>
											<li><a href="deluxe-1.do"><div>디럭스 더블</div></a></li>
											<li><a href="deluxe-2.do"><div>디럭스 트윈</div></a></li>
										</ul></li>
									<li><a href="suite-1.do"><div>스위트</div></a>
										<ul>
											<li><a href="suite-1.do"><div>패밀리 스위트</div></a></li>
											<li><a href="suite-2.do"><div>그랜드 스위트</div></a></li>

										</ul></li>
								</ul></li>
							<li><a href="dining-1.do"><div>다이닝</div></a>
								<ul>
									<li><a href="dining-1.do"><div>파노라마 (올 데이 다이닝)</div></a></li>
								</ul></li>
							<li><a href="#" onclick="return false;"><div>부대시설</div></a>
								<ul>
									<li><a href="menu-item.do"><div>사계절 온수풀 해온</div></a></li>
									<li><a href="menu-item2.do"><div>해온 루프탑 테라스</div></a></li>
									<li><a href="menu-item3.do"><div>프라이빗 카바나</div></a></li>
								</ul></li>
							<li><a href="contact-1.do"><div>고객의 소리</div></a></li>
							<li><a href="Reservation.do"><div>예약하기</div></a></li>
							<li><a href="ReservationConfirm.do"><div>예약조회 및 취소</div></a></li>
							
							<!-- 로그인 하지 않았을 경우 보여준다.  -->
							<sec:authorize access="isAnonymous()">
								 <li><a href="login.do"><div>로그인</div></a>
									<ul>
	                                	<li><a href="login.do"><div>로그인</div></a></li>
	                                	<li><a href="#"><div>아이디/비밀번호 찾기</div></a></li>
	                                	<li><a href="MemberAddForm2.do"><div>회원가입</div></a></li>
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
		</header>
		<!-- #header end -->

		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax"
			style="background-image: url('resources/images/hotel-about/main.jpg'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1>게시판</h1>
				<ol class="breadcrumb">
					<li><a href="index.do">홈</a></li>
					<li class="active">게시판</li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-li2ght">

				<div class="container clearfix">

					<!-- Post Content
                    ============================================= -->
					<div>
						<!-- Posts
                        ============================================= -->
                      <%--   <c:if test="${check eq 1 }">
										<script>
											alert("삭제되었습니다.")
										</script>
									</c:if> --%>
							<article>
								<div class="container">
									<div class="table-responsive">
										<table class="table table-striped table-sm">
											<colgroup>
												<col style="width: 5%;" />
												<col style="width: auto;" />
												<col style="width: 15%;" />
												<col style="width: 10%;" />
												<col style="width: 10%;" />
											</colgroup>

											<thead>
												<tr>
													<th>NO</th>
													<th>글제목</th>
													<th>작성자</th>
													<th>조회수</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${empty boardList}">
														<tr>
															<td colspan="5" align="center">작성된 글이 없습니다.</td>
														</tr>
													</c:when>

													<c:when test="${!empty boardList}">
														<c:forEach var="list" items="${boardList}">
															<tr>
																<td>${list.notice_number}</td>
																
																<td><a href="boardContent.do?notice_number=${list.notice_number }">${list.notice_title}</a></td>
																<td>${list.customer_id}</td>
																<td>${list.ref}</td>
																<td><fmt:formatDate value="${list.notice_date}" pattern="yyyy-MM-dd"/></td>
															</tr>
														</c:forEach>
													</c:when>
												</c:choose>
											</tbody>
										</table>
										<button type="button" class="btn btn-primary" name="write" id="write">글 작성</button>
									</div>
									
								<!-- pagination{s} -->
								<div id="paginationBox">
									<ul class="pagination">
									
										<c:if test="${pagination.prev}">
											<li class="page-item"><a class="page-link" href="#"
												onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
										</c:if>

										<c:forEach begin="${pagination.startPage}"
											end="${pagination.endPage}" var="idx">

											<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
											<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
													${idx} </a></li>
										</c:forEach>

										<c:if test="${pagination.next}">
											<li class="page-item"><a class="page-link" href="#"
												onClick="fn_next('${pagination.range}','${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
										</c:if>
										
									</ul>
								</div><!-- pagination{e} -->
							</div>
							</article><!-- 게시판끝 -->
					</div>
					<!-- .sidebar end -->
					
						<!-- search{s} -->
								<div class="form-group row justify-content-center">
									<div class="w100" style="padding-right: 10px">
										<select class="form-control form-control-sm" name="searchType" id="searchType">
											<option value="notice_title">제목</option>
											<option value="notice_contents">본문</option>
											<option value="customer_id">작성자</option>
										</select>
									</div>
									<div class="w300" style="padding-right: 10px">
										<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
									</div>
									<div>
										<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
									</div>
								</div> <!-- search{e} -->
				</div>
			</div>
		</section>
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

									<div class="hidden-xs hidden-sm">
										<div class="clear" style="padding-top: 10px;"></div>
									</div>

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
							<a href="#">공지사항</a> <a href="hotel-About-Us.html">호텔소개</a> <a
								href="deluxe-1.html">객실</a> <a href="contact-2.jsp">예약조회 및
								취소</a> <a href="contact-1.jsp">고객의 소리</a>
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
		document.getElementById("write").onclick = function(){
			location.href="boardForm.do"
		};
		
		
	</script>
	
	<!-- 게시글 검색 -->
	<script>
		document.getElementById("btnSearch").onclick = function(){
			event.preventDefault();
			var url = "${pageContext.request.contextPath}/list.do";
			var getkeyword = document.getElementById('keyword').value;
			var serch = document.getElementById('searchType').value;
				url = url+"?searchType="+serch+"&keyword="+getkeyword;
			location.href = url;
			console.info(url);
		}
	</script>
	
	<script>
		if(${check}==1){
		alert("삭제 되었습니다.");
		location.href= "${pageContext.request.contextPath}/list.do"+ "?page="+page+"&range="+range;
		}else{
		alert("삭제 되지 않았습니다.")
		}
			
	</script>

</body>
</html>