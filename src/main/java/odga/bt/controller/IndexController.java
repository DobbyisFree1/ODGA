package odga.bt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import odga.bt.domain.Review;
import odga.bt.service.ReviewService;


@Controller
public class IndexController {

   @Autowired
   private ReviewService rservice;
	
   @RequestMapping("/")
   public ModelAndView index(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  List<Review> review = rservice.selectBestReviewS();
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("index");
	  session.setAttribute("review", review);
	  
	  System.out.println("#review: " + review);
	  return mv;
   }
   @RequestMapping("/index.do")
   public ModelAndView index2(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  List<Review> review = rservice.selectBestReviewS();
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("index");
	  session.setAttribute("review", review);
	  
	  //System.out.println("#review: " + review);
	  return mv;
	}
   @RequestMapping("/use")
   public String use() {
      return "use"; 
   }
   /*@RequestMapping("/member.do")
   public String member() {
      return "member"; 
   }
   @RequestMapping("/member_edit.do")
   public String member_edit() {
      return "member_edit"; 
   }
   @RequestMapping("/member_plan.do")
   public String member_plan() {
      return "member_plan"; 
   }*/
   @RequestMapping("/login.do")
   public String login() {
      return "login"; 
   }
}