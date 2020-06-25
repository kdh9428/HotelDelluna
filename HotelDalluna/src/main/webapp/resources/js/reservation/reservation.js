/**
 * Reservation.jsp
 */

	//csrf 처리
	const token = document.querySelector("meta[name=_csrf]").content;
	const header = document.querySelector("meta[name='_csrf_header']").content;
	
	//예약 가능 확인
	function getReservation(){
	    return new Promise((resolve, reject) =>{
	    	var checkIn = document.querySelector('#dateOne').value //체크인
	    	var checkOut = document.querySelector('#dateTwo').value//체크아웃
	    	var roomType = document.querySelector('#room_type').value//방 종류
	        var xhr = new XMLHttpRequest();
	        
	        var json = JSON.stringify({ 
	            "Reservation_date_in" :checkIn,
	            "Reservation_date_out" :checkOut,
	            "Room_type":roomType
	        })
	        if(checkIn  || checkOut ){
					//방 가격 
					reservationPay(checkIn,checkOut)
					
	        xhr.open('POST',"Reservation/check",true)
	        xhr.setRequestHeader('Content-type','application/json; charset=UTF-8')
	        xhr.setRequestHeader(header ,token)
	        xhr.onload = ()=>{
	            var reservationConfirm = xhr.responseText
	            if(xhr.status == 200){
	                if(reservationConfirm == 'true'){
//	                	console.log('에이젝스 확인 '+reservationConfirm)
	                    resolve(true)
	                }
	                else{
	                    resolve(false)
	                }
	            }else{
	            	console.error(reservationConfirm);
	            }
	        }
	        xhr.send(json)
	     }
	   })
	}
	
	const reservationDateTag = document.querySelector('#reservation-date')
	const reservationCheckTag = document.querySelector('#reservation-check')
	const reservationRoomTag = document.querySelector('#reservation-room')
	async function getItem(){
		 var resultItems = await getReservation()
		 var checkIn = document.querySelector('#dateOne').value //체크인
	    var checkOut = document.querySelector('#dateTwo').value//체크아웃
	    var roomType = document.querySelector('#room_type')//방 종류
			roomType = roomType.options[roomType.selectedIndex].text
		 if(resultItems == true){
			 reservationDateTag.innerHTML = '<p id="reservation-date" style="font-size: 15px; color:red">예약 날짜 : '+checkIn+' ~ '+checkOut+'</p>'
			 reservationRoomTag.innerHTML = '<p id="reservation-room" style="font-size: 15px; color:red">객 실 : '+roomType+'</p>'
			 reservationCheckTag.innerHTML = '<p id="reservation-check" style="font-size:15px; color:red">예약 가능 여부 : 이미 예약 되어 있습니다.</p>'
				 return false 
		 }else if(checkIn ==''){
			 reservationRoomTag.innerHTML = '<p id="reservation-room" style="font-size: 15px; color:red">객 실 : '+roomType+'</p>'
			 reservationCheckTag.innerHTML = '<p id="reservation-check" style="font-size:15px; color:red">예약 가능 여부 :날짜를 선택하세요.</p>'
				 return false
		 }else{
			 reservationDateTag.innerHTML = '<p id="reservation-date" style="font-size: 15px;">예약 날짜 : '+checkIn+' ~ '+checkOut+'</p>'
			 reservationRoomTag.innerHTML = '<p id="reservation-room" style="font-size: 15px;">객 실 : '+roomType+'</p>'
			 reservationCheckTag.innerHTML = '<p id="reservation-check" style="font-size:15px;">예약 가능 여부 : 예약 가능합니다.</p>'
				 return true
		 }
	}
	
	//방 종류 선택 시 가능한지 체크
	var roomType = document.querySelector('#room_type')//방 종류
	roomType.addEventListener('change',getItem)
	
	//예약 버튼 클릭 시 예약 가능한지 유효성 검사 
	var validate = document.querySelector('#reservation-submit')
	validate.addEventListener('click', async() =>{
		var resultItems = await getReservation()
		var checkIn = document.querySelector('#dateOne').value //체크인
    var checkOut = document.querySelector('#dateTwo').value//체크아웃
    var roomType = document.querySelector('#room_type')//방 종류
    		roomType = roomType.options[roomType.selectedIndex].text
		console.log('확인'+resultItems)
		if(resultItems == true){
		alert(checkIn+' ~ '+checkOut+' 날짜의 '+roomType+' 룸은 이미 예약 되어 있습니다.\n다른 룸을 선택하세요')
		}else{
			document.querySelector('#reservation-form').submit()
		}
	})


	//날짜를 비교, 룸 가격 계
	function reservationPay(checkIn, checkOut){
		var checkIn;
		var checkOut;
		
		//체크인만 선택하거나 체크인과 체크아웃이 같을 경우 비교한다.
		if(!checkOut || checkIn == checkOut){
			checkIn = new Date(checkIn);
			checkOut = new Date(checkIn)
			checkOut.setDate(checkOut.getDate()+1) //날짜 하루 더한다.
		}else{
			checkIn = new Date(checkIn);
			checkOut = new Date(checkOut);
		}
		
		//체크아웃과 체크인 날짜를 뺀다.
		var dateSubtract = checkOut.getTime() - checkIn.getTime();
		//위에 날짜를 하루로 변경한다
		var btDay = dateSubtract / (1000*60*60*24) ;
		var roomType = document.querySelector('#room_type')//방 종류
			roomType = roomType.options[roomType.selectedIndex].value
		

		//룸 가격 비교
		switch (roomType) {
			case '1':
			btDay *= 100000 
				break;
			case '2':
			btDay *= 200000 
				break;
			case '3':
			btDay *= 300000 
				break;
			case '4':
			btDay *= 400000 
				break;
		
			default:
			console.info('룸 가격 에러')
				break;
		}
		document.querySelector('#reservation-pay').innerText = '가 격 : '+new Intl.NumberFormat().format(btDay)+'원'
	}
	
	
	/*vue.js */
	var datepickerOptions = {}
      Vue.use(window.AirbnbStyleDatepicker, datepickerOptions)

      var app = new Vue({
        el: '#app',
        data: {
          dateFormat: 'YYYY년 MM월 D일',
          inputDateOne: '',
          inputDateTwo: '',
          buttonDateOne: '',
          buttonDateTwo: '',
          inlineDateOne: '',
          sundayDateOne: '',
          sundayFirst: false,
          alignRight: false,
          trigger: false,
        },
        methods: {
          formatDates: function(dateOne, dateTwo) {
            var formattedDates = ''
            if (dateOne) {
              formattedDates =  dateFns.format(dateOne, this.dateFormat)
            }
            if (dateTwo) {
              formattedDates += ' - ' + dateFns.format(dateTwo, this.dateFormat)
            }
            return formattedDates
          },
          onClosed: function() {
						this.trigger = false
						document.querySelector('#dateOne').value = this.buttonDateOne
						document.querySelector('#dateTwo').value = this.buttonDateTwo
            if(this.buttonDateOne==''){
              	alert("날짜를 선택해 주세요.");
            }else{
            getItem()
            }
            
          },
          toggleAlign: function() {
            this.alignRight = !this.alignRight
          },
          triggerDatepicker: function() {
            this.trigger = !this.trigger
          },
          onMonthChange: function(dates) {
            console.log('months changed', dates)
          },
          login: function(dateOne, dateTwo){
        	  console.log(this.dateOne, this.dateTwo)
          },
        },
      })
      
	
	