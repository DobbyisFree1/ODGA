package odga.bt.service;

import java.util.List;
import java.util.Map;

import odga.bt.domain.Admin;
import odga.bt.domain.Member;
import odga.bt.domain.Touritems;
import odga.bt.vo.Chart;
import odga.bt.vo.GenderChart;

public interface AdminService {	
	List<Chart> areaChart();
	List<Member> memberChart();
	List<GenderChart> genderChart();
	
	Map<String,Object> getStatistics();
	
	List<Member> listAdmin();
	
	Touritems bestTouritem();	
	
	// 회원리스트
	List<Member> m_listS();
}
