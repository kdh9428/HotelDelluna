<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<style>
.board_title {
	font-weight: 700;
	font-size: 22pt;
	margin: 10pt;
}

.board_info_box {
	color: #6B6B6B;
	margin: 10pt;
}

.board_author {
	font-size: 10pt;
	margin-right: 10pt;
}

.board_date {
	font-size: 10pt;
}

.board_content {
	color: #444343;
	font-size: 12pt;
	margin: 10pt;
}

.board_tag {
	font-size: 11pt;
	margin: 10pt;
	padding-bottom: 10pt;
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
	                                	<li><a href="singup.do"><div>회원가입</div></a></li>
                              	 	 </ul>   
                              	 </li>
								</sec:authorize>
								<!-- 로그인 했을 경우 보여준다.  -->
							 <sec:authorize access="isAuthenticated()">
									<li><a href="logout.do" onclick="document.getElementById('logout-form').submit();"> <div>로그아웃</div></a></li>
									<form id="logout-form" action="logout.do" method="post"> 
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
						<article>
						<form action="list.do" method="post">
							 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<div class="container" role="main">
									

									<h2>게시글 상세보기</h2>
								<div class="bg-white rounded shadow-sm">

									<div class="board_title">
										${content.notice_title}
									</div>

									<div class="board_info_box">

										<span class="board_author">
										작성자 : ${content.customer_id},
										</span>
										
										<span class="board_date">작성날짜 : <fmt:formatDate value="${content.notice_date}" pattern="yyyy-MM-dd hh:mm:ss"/>,</span>
										<span class="board_author">조회수 : ${content.ref}</span>
									</div>

									<div class="board_content"><pre>${content.notice_contents}</pre></div>

									<div class="board_tag">
										TAG :
										<c:out value="${tag}" />
									</div>
								</div>
								
								<sec:authorize access="isAuthenticated()">
                    			<sec:authentication property="principal.username" var="login_id" />
								</sec:authorize>

								<div style="margin-top: 20px">
								<!-- 작성자가 맞는지 체크 -->
								<c:if test="${content.customer_id eq login_id }">
									<button type="button" class="btn btn-primary"
										id="btnUpdate" onclick="location.href='editForm.do?notice_number=${content.notice_number}&mode=edit'">수정</button>
									<button type="button" class="btn btn-primary"
										id="btnDelete" onclick="fn_btnDelete('${content.notice_number}')">삭제</button>
								</c:if>
									<button type="button" id="btnList" class="btn btn-primary" onclick="fn_List()">목록</button>
								</div>
							</div>
							</form>
							
								<!-- .sidebar end -->
					
						</article>
					</div>
					<!-- Reply Form {s} -->
					<div class="my-3 p-3 bg-white rounded shadow-sm"
						style="padding-top: 10px">
						
						<sec:authorize access="isAnonymous()">
							<div><h4><a href="login.do">댓글은 로그인 후 작성 가능합니다.</a></h4></div>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
						<form:form name="form" id="form" role="form" modelAttribute="replyVO" method="post">
							<form:hidden path="notice_number" id="notice_number" />
							<div class="row">
								<div class="col-sm-10">
									<form:textarea path="context" id="context" class="form-control"
										rows="3" placeholder="댓글을 입력해 주세요" ></form:textarea>
								</div>
								<div class="col-sm-2">
									<form:input path="customer_id" class="form-control" id="customer_id"
										placeholder="${login_id }" value="${login_id }" readonly="true" name="customer_id"/>
									<button type="button" class="btn btn-sm btn-primary"
										id="btnReplySave" style="width: 100%; margin-top: 10px">
										저 장</button>
								</div>
							</div>
						</form:form>
						</sec:authorize>

					</div>

					<!-- Reply Form {e} -->



					<!-- Reply List {s}-->

					<div class="my-3 p-3 bg-white rounded shadow-sm"
						style="padding-top: 10px">

						<h6 class="border-bottom pb-2 mb-0">Reply list</h6>

						<div id="replyList"></div>

					</div>

					<!-- Reply List {e}-->
					
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

	<script>
			$(document).ready(function(){
		
				showReplyList();
		
			});
		// 이전 코드 생략

		function showReplyList() {
			var url = "${pageContext.request.contextPath}/ReplyList.do";
			var paramData = {
				"notice_number" : "${content.notice_number}"
			};

			$.ajax({
						type : 'POST',
				 		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						url : url,
						data : paramData,
						dataType : 'json',
						beforeSend : function(xhr)
	                      {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	                      },
						success : function(result) {
							var htmls = "";
							if (result.length < 1) {
								htmls = "등록된 댓글이 없습니다.";
							} else {
								$(result).each(
												function() {
													htmls += '<hr>'
													htmls += '<div class="media text-muted pt-3" id="replyid' + this.replyid + '">';
													htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
													htmls += '<span class="d-block">';
													htmls += '<strong class="text-gray-dark">'
															+ '작성자 : '+this.customer_id
															+ '</strong>';
													htmls += '<span style="padding-left: 7px; font-size: 9pt">';
													if(this.customer_id =='${login_id}'){
													htmls += '<a href="javascript:void(0)" onclick="fn_editReply('
															+ this.replyid
															+ ', \''
															+ this.customer_id
															+ '\', \''
															+ this.context
															+ '\' )" style="padding-right:5px">수정</a>';

													htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply('
															+ this.replyid
															+ ')" >삭제</a>';
													htmls += '</span>';
													htmls += '</span>';
													htmls += '<br>'+this.context;
													htmls += '</p>';
													htmls += '</div>';
													}else{
													htmls += '</span>';
													htmls += '</span>';
													htmls += '<br>'+this.context;
													htmls += '</p>';
													htmls += '</div>';
													}
												}); //each end
									}
							$("#replyList").html(htmls);
						} // Ajax success end
					}); // Ajax end
		}
	</script>
	<script type="text/javascript">
	//댓글 저장 버튼 클릭 이벤트
	$(document).on('click', '#btnReplySave', function(){
		var replyContent = $('#context').val();
		var replyReg_id = $('#customer_id').val();
		$('#customer_id').val('${login_id }');
		$('input[name=customer_id]').attr('value','${login_id }');
		console.log('${login_id }');
		var paramData = JSON.stringify({"context": replyContent
				, "customer_id": replyReg_id
				, "notice_number":'${content.notice_number}'

		});
		var headers = {"Content-Type" : "application/json"
				, "X-HTTP-Method-Override" : "POST"};

		$.ajax({
			url: "${pageContext.request.contextPath}/insertReply.do"
			, headers : headers
			, data : paramData
			, type : 'POST'
			, dataType : 'text'
			, beforeSend : function(xhr)
               {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
			 success: function(result){
				showReplyList();
				$('#context').val('');
				$('#customer_id').val('');
			}
			, error: function(error){
				console.log("에러 : " + error);
			}
		});
	});

	</script>
<!-- 댓글 수정 -->
	<script type="text/javascript">
		function fn_editReply(replyid, customer_id, context) {
			var htmls = "";
			htmls += '<div class="media text-muted pt-3" id="replyid' + replyid + '">';
			htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
			htmls += '<span class="d-block">';
			htmls += '<strong class="text-gray-dark">' + customer_id + '</strong>';
			htmls += '<span style="padding-left: 7px; font-size: 9pt">';
			htmls += '<a href="javascript:void(0)" onclick="fn_updateReply('
					+ replyid + ', \'' + customer_id
					+ '\')" style="padding-right:5px">저장</a>';
			htmls += '<a href="javascript:void(0)" onClick="showReplyList()">취소<a>';
			htmls += '</span>';
			htmls += '</span>';
			htmls += '<textarea name="editContent" id="editContent" class="form-control" rows="3">';
			htmls += context;
			htmls += '</textarea>';
			htmls += '</p>';
			htmls += '</div>';
			$('#replyid' + replyid).replaceWith(htmls);
			$('#replyid' + replyid + ' #editContent').focus();
		}
	</script>
	
	<!-- 댓글 수정 저장 -->
	<script type="text/javascript">
	function fn_updateReply(replyid, customer_id){
		
		var replyEditContent = $('#editContent').val();
		var paramData = JSON.stringify({"context": replyEditContent
				, "replyid": replyid
		});
		var headers = {"Content-Type" : "application/json"
				, "X-HTTP-Method-Override" : "PUT"};
		$.ajax({
			url: "${pageContext.request.contextPath}/updateReply.do"
			, headers : headers
			, data : paramData
			, type : 'PUT'
			, dataType : 'text'
			, beforeSend : function(xhr){   
					/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	         	}
			, success: function(result){
                                console.log(result);
				showReplyList();
			}
			, error: function(error){
				console.log("에러 : " + error);
			}
		});
	}
	</script>

	<!-- 댓글 삭제 -->
	<script type="text/javascript">
		function fn_deleteReply(replyid) {
			var paramData = {"replyid" : replyid};
			$.ajax({
				url : "${pageContext.request.contextPath}/deleteReply.do",
				data : paramData,
				type : 'DELETE',
				dataType : 'text',
				beforeSend : function(xhr)
	            {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	             },
				success : function(result) {
					console.log("result 확인"+result)
					showReplyList();
				},
				error : function(error) {
					console.log("에러 : " + error);
				}
			});
		}
	</script>


	<script type="text/javascript">
		/* 	document.getElementById('btnUpdate').onclick = function(){
				document.getElementById('form').submit()
				return false
			} */			
			function fn_List(){
				location.href="list.do"
			}
			/* 삭제 후 이동 replace()를 사용해서 다시 삭제 한 페이지로 이동X */
			function fn_btnDelete(notice_number) {
				location.replace('${pageContext.request.contextPath}/boardDelete.do?notice_number='+ notice_number)
			}
			
	</script>

	<script type="text/javascript">
	
		var focus = document.getElementById('context');
			focus.addEventListener("focusin", inFocus);
			focus.addEventListener("focusout", outFocus);
		
		function inFocus(){
			document.getElementById('context').setAttribute('placeholder', '${login_id}님 댓글을 입력하세요')
		}
		function outFocus(){
			document.getElementById('customer_id').value = '${login_id}';
		}
		
	
	/*  jQuery test
	
	 $('#context').focus(function(){
		$('#context').attr('placeholder','${login_id} 님 댓글을 입력하세요');
	});
	  */
	/* $('#context').blur(function(){
		$('#customer_id').val('${login_id}');
	});
 */
	</script>
</body>
</html>