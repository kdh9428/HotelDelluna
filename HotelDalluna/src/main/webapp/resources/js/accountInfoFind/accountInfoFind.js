/**
 * 	계정 정보 찾기
 * 
 */

//csrf 토큰
const token = document.querySelector("meta[name=_csrf]").content;
const header = document.querySelector("meta[name='_csrf_header']").content;

//아이디 찾기 유효성 검사
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
		//유효성 검사 맞으면 id()함수 호출 ajax 통신
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
		//유효성 검사 맞으면 password()함수 호출 ajax 통신
		password()
	}
}
 
//아이디 찾기
function id(){
 	var userEmailCheck = document.querySelector('#userEmail').value
	var customerNameCheck = document.querySelector('#customerName').value 
    var json = JSON.stringify({ 
            "customerName" :customerNameCheck,
            "userEmail" :userEmailCheck,
        })
	 var xhr = new XMLHttpRequest();
     xhr.open('POST',"findUser/id",true);
	 xhr.setRequestHeader('Content-type','application/json; charset=UTF-8');
	 xhr.setRequestHeader(header,token);
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

//비밀번호 재설정
function password(){
	var userPasswordEmailCheck = document.querySelector('#userPasswordEmailCheck').value
	var userIdCheck = document.querySelector('#customer_id').value
	
	 var json = JSON.stringify({ 
            "customer_id" :userIdCheck,
            "userEmail" :userPasswordEmailCheck,
        })
     var xhr = new XMLHttpRequest();
     xhr.open('POST',"findUser/password",true);
	 xhr.setRequestHeader('Content-type','application/json; charset=UTF-8');
	 xhr.setRequestHeader(header,token);
    xhr.onload = () =>{
        if(xhr.status === 200){//서버 응답 체크, 200이면 정상 응답
        	if(xhr.responseText == 'true'){
        		$('#myModal').modal('show')
        		document.querySelector('.modal-body').innerHTML = '회원님의 이메일주소로 임시 비밀번호를 발송해드렸습니다.'
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

//id찾기 버튼 클릭시 이벤트 발생
document.querySelector('#find-id').addEventListener('click',validate)
//비밀번호 재설정 클릭시		
document.querySelector('#find-password').addEventListener('click',passwordValidate)