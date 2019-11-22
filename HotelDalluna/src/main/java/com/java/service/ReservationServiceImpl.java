package com.java.service;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.InterfaceDao;
import com.java.dto.ReservationDTO;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	protected InterfaceDao interfaceDao;

	// 예약하기
	@Override
	public ReservationDTO reservationCheck(ReservationDTO reservationDto) {

		int reCheck = 1;

		// 체크인, 체크아웃, 룸타입을 비교해서 테이블이 있으면 예약 되어 있다.
		int check;
		check = interfaceDao.reservationCheck(reservationDto);
		System.out.println("Service에서 check 확인" + check);

		// 비교 예약 0이면 예약 가능
		if (check == 0) {
			// 룸 정보 테이블에서 룸 가격을 가져온다.
			String roomprices = interfaceDao.roomprices(reservationDto);

			try {
				// 예약날짜가 몇일인지 계산한다.
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				Date beginDate = formatter.parse(reservationDto.getReservation_date_in());
				Date endDate = formatter.parse(reservationDto.getReservation_date_out());
				long diff = endDate.getTime() - beginDate.getTime();
				long diffDays = diff / (24 * 60 * 60 * 1000) + 1;// 날짜 계산 하루예약은 0이므로 +1해준다.

				// 날짜 차이 * 룸 가격
				int price = Integer.parseInt(roomprices) * (int) diffDays;
				System.out.println("날짜 차이 * 룸가격 =>" + diffDays + "*" + roomprices + "=" + price);
				reservationDto.setPrice(price);
				
				//전체 가격 포멧 설정
				DecimalFormat df = new DecimalFormat("##,###원");
				String priceproduct = (String)df.format(price);
				reservationDto.setPriceproduct(priceproduct);


				// 예약번호 생성
				int start = (int) (Math.random() * 27); //
				SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyMMddHHmmss", Locale.KOREA);// 한국 현재 시간
				Date date = new Date();
				String mTime = mSimpleDateFormat.format(date);
				mTime = mTime + "-" + UUID.randomUUID().toString().replace("-", "").substring(start, start + 4);
				// UUID는 범용 고유 식별자로 현재시간 + 랜덤 4자리//replace("-", "")는 문자열 치환 ex)26a5-424f를
				// 26a5424f로 변경
				// subString(시작값, 끝값)까지 문자열 자른다.
				System.out.println("예약번호 확인 : " + mTime);
				reservationDto.setReservation_number(mTime);

				// 룸 인원 테이블에 룸 예약번호, 룸 타입, 인원수 넣어준다.
				interfaceDao.reservationPeople(reservationDto);

				// 예약 테이블에 넣는다.
				interfaceDao.reservation(reservationDto);

				// 예약 완료 0성공
				reCheck = 0;

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("예약 되어있는 날짜");
			// 예약 실패
			reCheck = -1;
		}
		return reservationDto;
	}
	
	
	//예약 취소하기
	@Override
	public void reservationCancell(String reservation_number) {
		System.out.println("예약 취소 Service");
		interfaceDao.reservationCancell(reservation_number);
		
	}

}
