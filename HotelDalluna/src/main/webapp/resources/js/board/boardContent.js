
/* ajax 댓글 불러오기 */
$(document).ready(function(){
		
				showReplyList();
		
			});
		// 이전 코드 생략

		function showReplyList() {
			var url = "${pageContext.request.contextPath}/ReplyList";
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
													htmls += '<br>'+'<p>'+this.context+'</p>';
													htmls += '</p>';
													htmls += '</div>';
													}else{
													htmls += '</span>';
													htmls += '</span>';
													htmls += '<br>'+'<p>'+this.context+'</p>';
													htmls += '</p>';
													htmls += '</div>';
													}
												}); //each end
									}
							$("#replyList").html(htmls);
						} // Ajax success end
					}); // Ajax end
		}

//댓글 저장 버튼 클릭 이벤트 ajax 처
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
			url: "${pageContext.request.contextPath}/insertReply"
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



/* 댓글 수정  */
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

/* 댓글 수정 저장  */
function fn_updateReply(replyid, customer_id){
		
		var replyEditContent = $('#editContent').val();
		var paramData = JSON.stringify({"context": replyEditContent
				, "replyid": replyid
		});
		var headers = {"Content-Type" : "application/json"
				, "X-HTTP-Method-Override" : "PUT"};
		$.ajax({
			url: "${pageContext.request.contextPath}/updateReply"
			, headers : headers
			, data : paramData
			, type : 'PUT'
			, dataType : 'text'
			, beforeSend : function(xhr){   
					/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	         	}
			, success: function(result){
				showReplyList();
			}
			, error: function(error){
				console.log("에러 : " + error);
			}
		});
	}

	/* 댓글 삭제  */
function fn_deleteReply(replyid) {
			var paramData = {"replyid" : replyid, "customer_id" :"${login_id}"};
			$.ajax({
				url : "deleteReply",
				data : paramData,
				type : 'POST',
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


function fn_List(){
				location.href="list"
			}
			/* 삭제 후 이동 replace()를 사용해서 다시 삭제 한 페이지로 이동X */
			function fn_btnDelete(notice_number) {
				location.replace('${pageContext.request.contextPath}/boardDelete?notice_number='+notice_number)
			}
			

const focus = document.getElementById('context');
			focus.addEventListener("focusin", ()=> {
				document.querySelector('#context').setAttribute('placeholder', '${login_id}님 댓글을 입력하세요')
			});
			focus.addEventListener("focusout", ()=> {
				document.querySelector('#customer_id').value = '${login_id}';
			});