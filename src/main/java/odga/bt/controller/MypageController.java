package odga.bt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import odga.bt.domain.ListResult;
import odga.bt.domain.Planner;
import odga.bt.domain.Review;
import odga.bt.service.MypageService;
import odga.bt.service.PlannerService;
import odga.bt.service.ReviewService;
import odga.bt.service.TouritemsService;
import odga.bt.vo.DetailVo;

@Controller
@RequestMapping("/")
public class MypageController {
	@Autowired
	private MypageService service;	
	@Autowired
    private ReviewService rservice;    
    @Resource
    private PlannerService serviceP;
    @Resource
    private TouritemsService tservice;
    
  //���� ���ƿ�
	@GetMapping("myLike.do")
	public ModelAndView tables(long m_id) {	
		//m_id �޾��ֱ�
		List<Review> mylike = service.listMyLike(m_id);
		ModelAndView mv = new ModelAndView("myLike","mylike",mylike);
		return mv; 
	}
	@RequestMapping("/member.do")
	   public String member(HttpSession session) {
			if(session.getAttribute("LOGINUSER") == null) {
				return "login";
			}else {
				return "member"; 
			}			
	   }
	   @RequestMapping("/leaveM")
	   public String leave(HttpSession session) {
		   if(session.getAttribute("LOGINUSER") == null) {
				return "login";
		   }else {
			   return "leave"; 
		   }
	   }
	   @RequestMapping("/member_edit.do")
	   public String member_edit(HttpSession session) {
		   if(session.getAttribute("LOGINUSER") == null) {
				return "login";
		   }else {
			   return "member_edit"; 
		   }
	   }
	   //���� ����
	   @RequestMapping("/member_plan.do")
	   public ModelAndView member_plan(long m_id,HttpSession session) {
		   if(session.getAttribute("LOGINUSER") == null) {
				return new ModelAndView("login");
		   }else {
			   System.out.println("###"+m_id);
			   List<Planner> myPlans = service.myPlanS(m_id);
	
			   int min=1, max=15;
			   for(Planner plan : myPlans) {		   
				   int ranNum =(int)(Math.random() * (max - min + 1) + min);
				   String li = ranNum+".jpg";
				   plan.setRandomImg(li);
			   }
			   if(myPlans!=null) return new ModelAndView("myPlan", "myPlans", myPlans);
			   else {
				   System.out.println("myPlans�� ����ֳ�?");
				   return new ModelAndView("myPlan"); 
			   }
		   }
	   }
	   //���� ������
	   @RequestMapping("/plan_detail.do")
	   public ModelAndView plan_detail(long m_id, long p_id,HttpSession session) {
		   if(session.getAttribute("LOGINUSER") == null) {
				return new ModelAndView("login");
		   }else {
			   System.out.println(p_id);	   
			   DetailVo planDetail = service.planDetails(m_id, p_id);
			   if(planDetail!=null) {
				   System.out.println(1);
				   return new ModelAndView("plan_detail", "planDetail", planDetail);
			   }else{
				   System.out.println(2);
				   return new ModelAndView("plan_detail"); 
			   }	     
		   }
	   }
	   //���������� ���� ����
	   @RequestMapping("delPlan")
	   public String delPlan(long p_id, long m_id, HttpSession session) {
		   if(session.getAttribute("LOGINUSER") == null) {
				return "login";
		   }else {
			   //System.out.println("pid : "+p_id+" m_id : "+m_id);
			   serviceP.delPlan(p_id);
			   
			   String view = "forward:/member_plan.do";
			   return view;
		   }
	   }
	   @RequestMapping("/member_review.do")
	   public ModelAndView member_review(@RequestParam long m_id, HttpServletRequest request) {
		   HttpSession session = request.getSession();
		   if(session.getAttribute("LOGINUSER") == null) {
				return new ModelAndView("login");
		   }else {
				System.out.println("#m_id: " + m_id);
				String cpStr = request.getParameter("cp");
				String psStr = request.getParameter("ps");
				//(1) cp 
						int cp = 1;
						if(cpStr == null) {
							Object cpObj = session.getAttribute("cp");
							if(cpObj != null) {
								cp = (Integer)cpObj;
							}
						}else {
							cpStr = cpStr.trim();
							cp = Integer.parseInt(cpStr);
						}
						session.setAttribute("cp", cp);
						
						//(2) ps 
						int ps = 10;
						if(psStr == null) {
							Object psObj = session.getAttribute("ps");
							if(psObj != null) {
								ps = (Integer)psObj;
							}
						}else {
							psStr = psStr.trim();
							int psParam = Integer.parseInt(psStr);
							
							Object psObj = session.getAttribute("ps");
							if(psObj != null) {
								int psSession = (Integer)psObj;
								if(psSession != psParam) {
									cp = 1;
									session.setAttribute("cp", cp);
								}
							}else {
								if(ps != psParam) {
									cp = 1;
									session.setAttribute("cp", cp);
								}
							}
							
							ps = psParam;
						}
						session.setAttribute("ps", ps);
						
					int rangeSize = 10;
						
					List<Review> review = service.selectByReviewS(m_id);
					ListResult listResult = tservice.getTouritemsListResult(cp, ps, rangeSize);
					ModelAndView mv = new ModelAndView();
					mv.setViewName("member_review");
				    mv.addObject("review", review);
					mv.addObject("listResult", listResult);
					System.out.println("#review: " + review);
					return mv;
		   }

	   }
}
