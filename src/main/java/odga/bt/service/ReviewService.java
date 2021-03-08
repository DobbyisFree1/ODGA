package odga.bt.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import odga.bt.domain.Like_t;
import odga.bt.domain.Reply;
import odga.bt.domain.Review;
import odga.bt.domain.Support;
import odga.bt.vo.ReviewDetail;

public interface ReviewService {
	List<Review> reviewS();
	void insertS(Review review);
	void insertI(Support support);  //문의하기
	//문의게시판(관리자)
	List<Support> notificationsS();
	//문의게시판상세페이지(관리자)
	Support selectByTitle(String s_subject);
	List<Review> selectBestReviewS();
	//List<Review> selectByReviewS(long m_id);
	String saveStore(MultipartFile file);
	boolean writeFile(MultipartFile file, String name);
	
	List<Review> searchList(String searchOption, String keyword);
	int countSearch(String searchOption, String keyword);
	
	List<Review> catgoList(String catgo);
	int countCatgo(String catgo);
	Map<String, Object> reviewSidebar();	
	void insert_re(Reply reply);
	void deleteReply(long re_id);
	
	void likeUp(Review review);
	void likeDown(Review review);
	void insertLike(Like_t liket);	
	void likeClick(Like_t liket);
	void likeUnclick(Like_t liket);
	Like_t listLike(long b_id, long m_id);
	
	ReviewDetail reviewDetail(long b_id);
	Review getReviewS(long b_id);
	
	Map<String, Object> getOtherReview(long b_id);	

}
