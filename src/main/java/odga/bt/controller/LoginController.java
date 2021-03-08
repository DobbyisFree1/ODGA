package odga.bt.controller;

import javax.servlet.ServletContext;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import odga.bt.domain.Member;
import odga.bt.service.MemberService;

@Controller
public class LoginController {
	@Autowired
	private MemberService service;
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	   private ModelAndView login(@ModelAttribute Member member, HttpSession session, HttpServletResponse response) throws Exception {
	      
	      ModelAndView mav = new ModelAndView();
	      
	      System.out.println("############### 로그인!!!");
	      Member m1 = service.login(member, response, servletContext);
	      if(m1 != null) {      
	         System.out.println("#####"+m1.getM_id());
	         session.setAttribute("LOGINUSER", m1);
	         mav.setViewName("index");
	         return mav;
	      }else {
	         System.out.println("비밀번호가 다름");
	         return new ModelAndView("login");
	      }
	   }
		//로그아웃 기능 
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		private String logout(HttpServletResponse response, HttpSession session) throws Exception {
			service.logout(response, session);
			return "index";
		}
		// 이메일&비밀번호 찾기
		@GetMapping("findIdPwd")
		private String findIdPwd() {
			return "forgot";
		}
}
