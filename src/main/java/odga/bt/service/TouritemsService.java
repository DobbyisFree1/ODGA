package odga.bt.service;

import odga.bt.domain.Touritems;
import odga.bt.domain.ListResult;
import odga.bt.domain.Member;
import odga.bt.vo.TouritemsVo;

public interface TouritemsService {
	ListResult getTouritemsListResult(int cp, int ps, int rangeSize);
	ListResult getTouritemsListResult(String catgo, String keyword, int cp, int ps, int rangeSize);  //keyword 추가로 받으면 where 조건절이 생긴다.  서비스랑 Mapper랑 같을 필요가없다. 이름이
	
	Touritems selectByTitleS(String title);

	

}

