/**
 *  list.jsp 
 */

//url가져오기
function getContextPath(){
	var contextPath = window.location.protocol + "//" + window.location.host + window.location.pathname;
	return contextPath;
}

console.info(getContextPath()+'/list.do');

document.getElementById("write").onclick = function() {
		location.href = "boardForm.do"
	};
	
	//게시글 검색
		document.getElementById("btnSearch").onclick = function(){
			event.preventDefault();
			var url = getContextPath()
			var getkeyword = document.getElementById('keyword').value;
			var serch = document.getElementById('searchType').value;
				url = url+"?searchType="+serch+"&keyword="+getkeyword;
			location.href = url;
			console.info(url);
		};
	

		//이전 버튼 이벤트
		function fn_prev(page, range, rangeSize) {
			var page = ((range - 2) * rangeSize) + 1;
			var range = range - 1;
			var url = getContextPath()
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;

		}

	  //페이지 번호 클릭
		function fn_pagination(page, range, rangeSize, searchType, keyword) {
			var url = getContextPath();
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url+"&searchType="+searchType+"&keyword="+keyword;
			location.href = url;	
		}

	  //다음 버튼 이벤트
		function fn_next(page, range, rangeSize) {
			var getkeyword = document.getElementById('keyword').value;
			var serch = document.getElementById('searchType').value;
			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;
			var url = 	getContextPath()
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url+"&searchType="+serch+"&keyword="+getkeyword;
			location.href = url;
		}

		//bootstrap template 설정 코드
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
			
