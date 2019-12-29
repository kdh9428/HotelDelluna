package com.java.BoardCommon;

public class Pagination {

	
	private int listSize=10; 	//초기값 목록 개수, 한 페이지당 보여질 리스트의 개수
	private int rangeSize=10; 	//초기값 페이지 범위 10으로 세팅, 한 페이지 범위에 보여질 페이지의 개수
	private int page;	//현재 목록 페이지
	private int range;	//각 페이지 범위 시작 번호
	private int listCnt; //전체 개시물의 개수
	private int pageCnt;	//전체 페이지 범위의 개수
	private int startPage;	//각 페이지 범위 시작 번호
	private int endPage;	//각 페이지 범위 끝 번호
	private int startList;	//게시판 시작번호
	private boolean prev;	//이전 페이지 여부
	private boolean next;	//다음 페이지 여부

	public int getStartList() {
		return startList;
	}
	public void setStartList(int startList) {
		this.startList = startList;
	}
	public int getListSize() {
		return listSize;
	}
	public void setListSize(int listSize) {
		this.listSize = listSize;
	}
	public int getRangeSize() {
		return rangeSize;
	}
	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRange() {
		return range;
	}
	public void setRange(int range) {
		this.range = range;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	public void pageInfo(int page, int range, int listCnt) {
		this.page=page;	//페이지 정보
		this.range = range;	//페이지 범위 정보
		this.listCnt=listCnt;	//게시물의 총 개수
		
		//전체 페이지수 ceil메소드는 올림처리 해준다.
		this.pageCnt = (int)Math.ceil((double)listCnt/listSize);
		
		//시작 페이지 지정// 각 페이지 범위 시작 번호 -1 * 초기값 페이지 범위 +1
		// ex) 첫 페이지라면 (1-1)*10+1 =1 페이지 
		this.startPage = (range-1)*rangeSize+1;
		
		//끝 페이지
		this.endPage = range*rangeSize;
		
		//게시판 시작번호
		this.startList = (page-1)*listSize;
		
		//이전 버튼 상태
		this.prev = range ==1 ? false:true; //첫번째 페이지에서는 이전 버튼이 필요 없기 때문에 1이라면 false
		System.out.println("확인중"+page+",,"+range+",,"+listCnt);
		//다음 버튼 상태 //현재 페이지의 마지막 페이지 번호가 전체 페이지 개수 보다 크면 활성화
		this.next = pageCnt>endPage?true:false;
		if(this.endPage>this.pageCnt) { //마지막번호가 총개수보다 크면 마지막 번호로 셋팅되도록 해준다.
			endPage = pageCnt;
			next=false;//다음 페이지에 대한 이동을 하지 못하도록 false를 준다.
		}
	}
}
