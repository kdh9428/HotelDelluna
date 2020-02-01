/**
 * singupComplete.jsp
 */


		
let customerIdCheck = document.querySelector('#customer_id') //아이디 input
let idCheckNewContent = document.querySelector('#id-check') //아이디 체크 변경 <div>
let responseObject //false 확인

//spring csrf를 보내기 위해 meta 태그에 contect로 등록, 불러와 사용한다.
const token = document.querySelector("meta[name=_csrf]").content;
const header = document.querySelector("meta[name='_csrf_header']").content;
		
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
	    	idCheckNewContent.innerHTML = '<div id="id-check" style="color:red">중복확인이 필요합니다.</div>'
	        return true
	        }
	}
		
	 function getDateId(){
			return new Promise(function (resolve,reject){
	 			 var customerIdCheckValue = customerIdCheck.value;
				 var xhr = new XMLHttpRequest();
				 xhr.open('GET',"doubleCheck.do?customer_id="+customerIdCheckValue);
				 xhr.setRequestHeader(header,token);
		        
	            xhr.onload = function(){
                if(xhr.status === 200){//서버 응답 체크, 200이면 정상 응답
                	  
                	if(this.responseText == '1'){
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
			getDateId().then( function(state){
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
	
	customerIdCheck.addEventListener('blur', focusBlurCheck) //포커스가 이동 했을 때
	customerIdCheck.addEventListener('keyup',idCheckFunction) //태그 안에 값이 변경 됬을 경우
		
	
	function validate(){
	/* id 체크  유효성 검사*/
    var customerId = customerIdCheck.value //아이디
	var idCheck = document.querySelector('#id-check')
        
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
        if (idCheck == null){
			alert(idCheckNewContent.innerText)
			return false
        }
        
        /* 비밀번호 체크 */
	}
