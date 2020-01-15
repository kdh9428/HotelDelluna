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
			location.href = url;	
		}

	  //다음 버튼 이벤트
		function fn_next(page, range, rangeSize) {
			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;
			var url = 	getContextPath()
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;
		}

			
			
