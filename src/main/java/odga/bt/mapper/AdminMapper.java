package odga.bt.mapper;

import java.util.List;

import odga.bt.domain.Admin;
import odga.bt.domain.Member;
import odga.bt.domain.Touritems;
import odga.bt.vo.Chart;
import odga.bt.vo.GenderChart;
import odga.bt.vo.Statistics;


public interface AdminMapper {
	List<Chart> areaChart();
	List<Member> memberChart();
	GenderChart female(); 
	GenderChart male();
	
	Statistics countMemeber();
	Statistics countBoard();
	Statistics countTouritem();
	Statistics lastestMember();
	Statistics lastestBoard();
	Statistics lastestPlanner();
	
	List<Member> listAdmin();
	Statistics lastestAdmin();
	
	Touritems bestTouritem();
	
	//회원리스트
	List<Member> list();
}
