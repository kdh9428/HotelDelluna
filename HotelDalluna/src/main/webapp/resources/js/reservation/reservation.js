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
	        
	        console.log(checkIn+checkOut+'~~'+roomType)
	        var json = JSON.stringify({ 
	            "Reservation_date_in" :checkIn,
	            "Reservation_date_out" :checkOut,
	            "Room_type":roomType
	        })
	        if(checkOut != null){
	        xhr.open('POST',"Reservation/check.do",true)
	        xhr.setRequestHeader('Content-type','application/json; charset=UTF-8')
	        xhr.setRequestHeader(header ,token)
	        xhr.onload = ()=>{
	            var reservationConfirm = xhr.responseText
	            if(xhr.status == 200){
	                if(reservationConfirm == 'true'){
	                	console.log('에이젝스 확인 '+reservationConfirm)
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
	
	const foucsOut = document.querySelector('#reservation-check')
	async function getItem(){
		 var resultItems = await getReservation()
		 console.log(resultItems)
		 if(resultItems == true){
			 foucsOut.innerHTML = '<div style="color:red; font-size: 20px;">이미 예약 되어 있습니다.<div>'
				 console.log('if안에서 확인하는중'+resultItems)
		 }else{
			 foucsOut.innerHTML = '<div style="color:red">예약 가능합니다.<div>'
		 }
	}
	
	
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
          onClosed: function onclosed() {
            var datesStr = this.formatDates(this.inputDateOne, this.inputDateTwo)
            console.log('Dates Selected: ' + datesStr)
            this.trigger = false
            $('#dateOne').val(this.buttonDateOne);
            $('#dateTwo').val(this.buttonDateTwo);
            if(this.buttonDateOne=="" || this.buttonDateTwo ==""){
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
      
      function printTime() {

          var clock = document.getElementById("clock");// 출력할 장소 선택
          var now = new Date();// 현재시간
          var nowTime = "'" + now.getFullYear() + "-" + (now.getMonth()+1) + "-" + now.getDate() + "'";
          clock.innerHTML = nowTime;// 현재시간을 출력
		}
      
		window.onload = function() {// 페이지가 로딩되면 실행
		printTime();
			}
	
	