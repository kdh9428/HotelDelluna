/**
 * singupComplete.jsp
 */

		/* 년 월 일 동적 날짜 생성  */
window.addEventListener('load',function(){
			var date = new Date();
			var year = date.getFullYear();
			var optionIndex = 0;
			
			for(var i=year-100;i<=year;i++){
				document.querySelector('#year').add(new Option(i+"년",i),optionIndex++);
			}
			
			for(var i=1;i<=12;i++){
				document.getElementById('month').add(new Option(i+'월',i),optionIndex++);
			}
			
			for(var i=1;i<=31;i++){
				document.getElementById('day').add(new Option(i+'일',i),optionIndex++);
			}
			
			if('${loginCheck}' != "" && '${loginCheck}'== 0 ){
				alert("회원가입이 실패하였습니다. 다시 시도해 주세요")
			}else{
				
			}
		})
		
let customerIdCheck = document.querySelector('#customer_id') //아이디 input
let idCheckNewContent = document.querySelector('#id-check') //아이디 체크 변경 <div>
let responseObject //false 확인

//spring csrf를 보내기 위해 meta 태그에 contect로 등록, 불러와 사용한다.
const token = document.querySelector("meta[name=_csrf]").content;
const header = document.querySelector("meta[name='_csrf_header']").content;
		
//유효성 검사, id에 숫자 문자 이외의 값은 입력 불가
function idFilter() {
	if(/[^a-zA-Z0-9]$/gi.test(customerIdCheck.value) == true){
		customerIdCheck.value = ''
		return false
		}
	}


customerIdCheck.addEventListener('keyup',idFilter)

	//id 체크
	function idCheckFunction(){
	    var customerIdCheckValue =customerIdCheck.value
	    if(customerIdCheckValue.length > 0 && customerIdCheckValue.length < 4){
	    	idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">아이디는 4글자 이상이어야 합니다.</div>'
	        return false
	    }else if(customerIdCheckValue == null || customerIdCheckValue == '' || customerIdCheckValue.length == 0){
	    	idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">아이디를 입력해 주세요.</div>'
	        return false
	    }else if(customerIdCheckValue.length >= 20){
	    	idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">아이디는 20자 이하이어야 합니다.</div>'
	        return false
	    }else{
	    	if(responseObject == null){
	    		idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">중복확인이 필요합니다.</div>'
	    	}
	    	return true
	        }
	}
		
	 function getDateId(){
			return new Promise((resolve,reject)=>{
	 			 var customerIdCheckValue = customerIdCheck.value;
				 var xhr = new XMLHttpRequest();
				 xhr.open('GET',"doubleCheck.do?customer_id="+customerIdCheckValue);
				 xhr.setRequestHeader(header,token);
		        
	            xhr.onload = () =>{
                if(xhr.status === 200){//서버 응답 체크, 200이면 정상 응답
                	if( xhr.responseText == '1'){
                		responseObject = false
                		console.log(responseObject)
                  	 	resolve(false);
                		
                	}else{
                		responseObject = true
                		console.log(responseObject)
						resolve(true);
                	}
				}else{
					alert('ajax 에러!')
				}
                reject(new Error("request is failed"));
		}
	            xhr.send();
	})
	
}
	var customerAgainCheck // input #customer_id가 변경없이 포커스 아웃 할 경우 체크한다.
	function focusBlurCheck(){
		var customerIdCheckValue = customerIdCheck.value
		if(customerIdCheckValue != customerAgainCheck && customerIdCheckValue.length >= 4 && customerIdCheckValue.length <= 20 && customerIdCheckValue != null ){
			getDateId().then(function(state){
				console.log('확인중'+state)
				if(state == true){
					idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">사용 가능한 아이디 입니다.</div>'
				}else{
					idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">이미 사용중인 아이디 입니다.</div>'
					}
				})
			customerAgainCheck = customerIdCheckValue
		}
	}
	
	
	/*	전화번호 유효성 검사
	 * 	전화번호에 숫자 이외의 값 불가능
	 */
	let telValue = document.querySelector('#tel')
	function numberFilter(){
		if(/[^0-9]{4,12}$/gi.test(telValue.value) == true){
			
			console.log('확인')
			telValue.value = ''
			return false
		}
		if(telValue.value == null){
			console.log('확인')
			return false
		}
	}
	telValue.addEventListener('input',numberFilter)
	
	//전화번호 태그 숫자만 입력 알림
	telValue.addEventListener('focus', function(){
		var numberTelFocus = document.querySelector('#number-tel')
			numberTelFocus.style.color = 'red'
			numberTelFocus.innerText = '숫자만 입력하세요.'
	})
	
	customerIdCheck.addEventListener('blur', focusBlurCheck) //포커스가 이동 했을 때
	customerIdCheck.addEventListener('keyup',idCheckFunction) //태그 안에 값이 변경 됬을 경우
		
	
	/*
	 * 비밀번호 태그 설정
	 */
	const passwordId = document.querySelector('#password')
	const passwordCheckDiv = document.querySelector('#password-check')
	function passwordFocusBlur() {
		if(passwordId.value.length > 0 && passwordId.value.length < 8  || passwordId.value.length > 20 ){
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">8~20자리로 설정해주세요.</div>'
			return false
		}else if(/(\w)\1\1\1/.test(passwordId.value)){
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">같은 문자를 4번 이상 사용하실 수 없습니다.</div>'
			return false
		}else if(passwordId.value == null || passwordId.value == ''){
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">필수 입력 정보입니다.</div>'
			return false
		}else if(passwordId.value.search(/[0-9]/g) < 0 || passwordId.value.search(/[a-z]/ig) < 0 || passwordId.value.search(/[!@#$%^*+=-]/ig) < 0 ){
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">영문 대/소문자, 숫자, 특수 문자(!@#$%^*+=-)를 사용하세요.</div>'
			return false
		}else if(customerIdCheck.value == passwordId.value ){
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">아이디를 비밀번호로 사용할 수 없습니다.</div>'
				return false
		}else{
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">사용 가능 합니다.</div>'
			return true
		}
	}
	passwordId.addEventListener('keyup', passwordFocusBlur) //태그 안에 값이 변경 됬을 경우

	//비밀번호 포커스 이동시 div태그 설정
	passwordId.addEventListener('blur',()=>{ 
		if(passwordId.value == null || passwordId.value == ''){
			passwordCheckDiv.innerHTML = '<div id="password-check" style="color:red">필수 입력 정보입니다.</div>'
		}
	})
	
	//비밀번호 확인 체크

	
	function validate(){
	/* id 체크  유효성 검사*/
    var customerId = customerIdCheck.value //아이디
        
        if (responseObject == false){
        	alert(idCheckNewContent.innerText)
			customerIdCheck.select()
			return false
        }
        
        if(idCheckFunction() == false){
        	alert(idCheckNewContent.innerText)
			customerIdCheck.select()
			return false
        }
        
        /* 비밀번호 체크 */
        
        if(passwordFocusBlur() == false){
        	alert(passwordCheckDiv.innerText)
        	return false
        }
        
        var selected = document.querySelector('#year')
        var birthday = selected.options[selected.selectedIndex]
        if (birthday.text == '연도'){
        	alert('생년월일을 선택하세요')
        	return false
        	}
        }  
	
