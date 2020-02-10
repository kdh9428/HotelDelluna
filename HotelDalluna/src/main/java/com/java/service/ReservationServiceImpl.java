package com.java.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.BoardCommon.Pagination;
import com.java.dao.ReservationDao;
import com.java.dto.ReservationDTO;

@Service
public class ReservationServiceImpl implements ReservationService {

	private static final Logger logger = LoggerFactory.getLogger(ReservationServiceImpl.class.getName());
	
	@Autowired
	protected ReservationDao ReservationDao;

	// 예약하기
	@Transactional
	@Override
	public int ReservationCheck(ReservationDTO ReservationDto) {
		
		//Security id Session 생성
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//로그인 id 
		ReservationDto.setCustomer_id(auth.getName());
		
		int reCheck = 1;
		//체크 아웃을 선택했는지 확인
		if(ReservationDto.getReservation_date_out() == "" || ReservationDto.getReservation_date_out().equals(null) ){
			ReservationDto.setReservation_date_out(ReservationDto.getReservation_date_in());
			logger.info("checkout null 확인" + ReservationDto.getReservation_date_out());
		}
		
		// 체크인, 체크아웃, 룸타입을 비교해서 테이블이 있으면 예약 되어 있다.
		boolean check = ReservationDao.ReservationCheck(ReservationDto);
		logger.info("Service에서 check 확인" + check);
		
		// 비교 예약 0이면 예약 가능
		if (check != true) {
			// 룸 정보 테이블에서 룸 가격을 가져온다.
			String roomprices = ReservationDao.roomprices(ReservationDto);

			try {
				// 예약날짜가 몇일인지 계산한다.
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				Date beginDate = formatter.parse(ReservationDto.getReservation_date_in());
				Date endDate = formatter.parse(ReservationDto.getReservation_date_out());
				long diff = endDate.getTime() - beginDate.getTime();
				long diffDays = diff / (24 * 60 * 60 * 1000) + 1;// 날짜 계산 하루예약은 0이므로 +1해준다.

				// 날짜 차이 * 룸 가격
				int price = Integer.parseInt(roomprices) * (int) diffDays;
				logger.info("날짜 차이 * 룸가격 확인 = " + diffDays + "*" + roomprices + "=" + price );
				ReservationDto.setPrice(price);
				
				/*
				 * //전체 가격 포멧 설정 DecimalFormat df = new DecimalFormat("##,###원"); String
				 * priceproduct = (String)df.format(price);
				 * ReservationDto.setPriceproduct(priceproduct);
				 */

				// 예약번호 생성
				int start = (int) (Math.random() * 27); //
				SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yyMMddHHmmss", Locale.KOREA);// 한국 현재 시간
				Date date = new Date();
				String mTime = mSimpleDateFormat.format(date);
				mTime = mTime + "-" + UUID.randomUUID().toString().replace("-", "").substring(start, start + 4);
				// UUID는 범용 고유 식별자로 현재시간 + 랜덤 4자리//replace("-", "")는 문자열 치환 ex)26a5-424f를
				logger.info("예약번호 확인 : " + mTime);
				ReservationDto.setReservation_number(mTime);
				
				// 룸 인원 테이블에 룸 예약번호, 룸 타입, 인원수 넣어준다.
				ReservationDao.ReservationPeople(ReservationDto);

				// 예약 테이블에 넣는다.
				reCheck = ReservationDao.Reservation(ReservationDto);

				// 예약 완료 1이면 성공
				logger.info("예약 완료 1이면 성공" + reCheck);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			logger.info("예약 되어 있는 날짜, 예약 실패");
			// 예약 실패
			reCheck = -1;
		}
		return reCheck;
	}
	
	//예약 취소하기
	@Override
	public void ReservationCancell(String Reservation_number) {
		logger.info("예약 취소");
		ReservationDao.ReservationCancell(Reservation_number);
	}
	
	//예약 체크
	@Override
	public boolean reservationCheckAjax(ReservationDTO reservationDto) {
		logger.info("ajax확인");
		return ReservationDao.ReservationCheck(reservationDto);
	}
	
	
	//예약 완료 확인
	@Override
	public List<ReservationDTO> ReservationConfirm(int page, int range) {
		logger.info("페이징 처리"+page+"/////"+range);
		return ReservationDao.ReservationConfirm(pagination(page, range));
	}
	
	@Override
	public int ReservationCount(String customer_id) {
	
		return ReservationDao.ReservationCount(customer_id);
	}
	
	//예약 페이징 처리
	@Override
	public Pagination pagination(int page, int range) {
		Pagination paging = new Pagination();
		
		//로그인 id Security에서 받아오기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		//한 페이지에 보여질 리스트 수
		paging.setListSize(1);
		paging.setRangeSize(10);
		
		//아이디 
		paging.setCustomer_id(auth.getName());
		
		//총 페이지 가져오기
		paging.pageInfo(page, range, ReservationCount(auth.getName()));
		
		return paging;
	}

}
