package odga.bt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import odga.bt.domain.Member;
import odga.bt.domain.Planner;
import odga.bt.domain.Review;
import odga.bt.service.MemberService;
import odga.bt.service.PlannerService;
import odga.bt.service.ReviewService;


@Controller
/* @RequestMapping(value = "/member/*") */
public class MemberController {
	@Autowired
	private MemberService service;


	
	/*@GetMapping("login.do")
	public String Join() {		
		//service.Join(member);		
		return "login";
	}*/
    @PostMapping("/join.do")
	   public String joinS(@RequestParam(value = "file", required = false) MultipartFile file, Member member) {
		  Member member1 = member;
		  member1 = service.saveStore(member, file);
		/* String m_fname = file.getName(); */
	      String m_ofname = file.getOriginalFilename();
	      System.out.println("###"+member1.getM_fname()+m_ofname);
		/* member1.setM_fname(m_fname); */
	      member1.setM_ofname(m_ofname);
	      service.joinS(member);
		/* service.saveStore(file); */
	      
	      System.out.println("email: " + member.getM_email());
	      System.out.println("name: " + member.getM_name());
	      System.out.println("pwd: " + member.getM_pwd());
	      System.out.println("phone: " + member.getM_phone());
	      System.out.println("gender: " + member.getM_gender());
	      System.out.println("birth: " + member.getM_birth());
	      System.out.println("m_fname: " + member.getM_fname());
	      System.out.println("m_ofname: " + member.getM_ofname());
	      System.out.println("m_verify: " + member.getM_verify());
	      System.out.println("m_about: " + member.getM_about());
	      System.out.println("#service: " + service);
	      
	      return "redirect:index.do";
	   }
	/* 아이디/비밀번호 찾기 */
	@PostMapping("findId")
	public @ResponseBody String findId(Member member) {
		System.out.println(member.getM_name());
		System.out.println(member.getM_phone());
		
		String email = service.findIdS(member);
		if(email != null) {
			System.out.println("Controller : "+email);
			return email;
		}else {
			System.out.println("Controller : 조회가 되지 않는 정보값");
			return "??";
		}

	}
	@PostMapping("findPwd")
	public @ResponseBody String findPwd(Member member) {
		System.out.println(member.getM_email());
		System.out.println(member.getM_pwd());		
		
		service.findPwd(member);
		
		return "1";

	}
	// 아이디 중복 체크
	@RequestMapping(value = "checkId.jy", method = RequestMethod.POST)
	public @ResponseBody int checkId(@RequestParam String m_email, HttpServletResponse response) throws Exception {
		//System.out.println("★★★★★★★★★★★★★" + m_email);
		int checkid = service.checkId(m_email, response);
		return checkid;
	}
	
	// 회원정보 수정
		@RequestMapping(value = "/member.do", method = RequestMethod.POST)
		private String updateS(Member member, @RequestParam String m_newpwd, @RequestParam MultipartFile file, HttpSession session, RedirectAttributes rttr) throws Exception {
			Member member1 = member;
			if(file.getSize()!=0) {
				   member1 = service.saveStore(member, file); 
				   String m_ofname = file.getOriginalFilename(); 
				   System.out.println("###"+member1.getM_fname()+m_ofname);

					member1.setM_pwd(m_newpwd);
					
					member1.setM_ofname(m_ofname);
					System.out.println("★★★★★★★★★★★업데이트★★★★★★★★★★★");
					System.out.println(member.getM_pwd());
					if(session.getAttribute("LOGINUSER") == null) {
						System.out.println("★★★★★★★★★★★로그인되어있네?★★★★★★★★★★★");
						return "redirect:../login.do";
						//return null;
					}
					session.setAttribute("LOGINUSER", service.updateS(member1));
					rttr.addFlashAttribute("msg", "회원정보 수정 완료");
					return "redirect:member.do"; 
					//return null;
			}else {
				member1.setM_pwd(m_newpwd);
				if(session.getAttribute("LOGINUSER") == null) {
					System.out.println("★★★★★★★★★★★로그인되어있네?★★★★★★★★★★★");
						return "redirect:../login.do";
						//return null;
				}
				session.setAttribute("LOGINUSER", service.updateS(member1));
				rttr.addFlashAttribute("msg", "회원정보 수정 완료");
				return "redirect:member.do";
				//return null;
			}
		}
		// 회원 탈퇴
		@RequestMapping(value = "leaveM", method = RequestMethod.POST)
		private String leaveS(@ModelAttribute Member member, HttpSession session, HttpServletResponse response) {
			if(session.getAttribute("LOGINUSER") == null) {
				return "redirect:../login.do";
			}
			System.out.println("#>leaveMember 로그인되었음");
			System.out.println(member.getM_id());
			boolean result = service.leaveS(member, session, response);
			System.out.println("#>leaveMember result : " + result);
			if (result) {
				session.invalidate();
				return "index";
			}else {			
				return "leave";
			}
		}
	   
		
}

