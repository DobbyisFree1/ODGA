package odga.bt.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import odga.bt.domain.Member;
import odga.bt.domain.Planner;
import odga.bt.domain.Review;
import odga.bt.vo.DetailVo;

public interface MypageService {
	//나의 좋아요
	List<Review> listMyLike(long m_id);
	//회원정보 수정
	Member updateS(Member member) throws Exception;
	boolean leaveS(Member member, HttpSession session, HttpServletResponse response);
	//나의 일정
	public List<Planner> myPlanS(long m_id);
	public DetailVo planDetails(long m_id, long p_id);
	//나의후기
	List<Review> selectByReviewS(long m_id);
	void deleteByB_idS(long b_id);
	void updateByB_idS(Review review);
	void updateWithoutImgS(Review review);
}
