package odga.bt.service;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import odga.bt.domain.Member;
import odga.bt.emailutill.MailHandler;
import odga.bt.emailutill.TempKey;
import odga.bt.mapper.MemberMapper;
import odga.bt.mapper.MypageMapper;

@Log4j
@Service


@AllArgsConstructor
public class MemberServiceImpl implements MemberService {
	@Autowired
	public MemberMapper memberMapper;
	@Autowired
	public MypageMapper mypageMapper;
	@Autowired
	HttpSession session;
	
	@Autowired
	private JavaMailSender mailSender;

	@Override
	public boolean joinS(Member member) {
		System.out.println("#MemberServiceImpl joinS() member: " + member);
		try {
			memberMapper.joinS(member);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	// 이메일 중복검사 AJAX 
	@Override
	public int checkId(String m_email, HttpServletResponse response) throws Exception {
		int i = memberMapper.checkId(m_email);

		System.out.println("아이디 있음");
		return i;
	}	
	
	@Override
	public Member login(Member member, HttpServletResponse response, ServletContext servletContext) throws Exception {
		System.out.println("############로그인 서비스#############");
		response.setContentType("text/html;charset=utf-8");
		//String check = member.getM_email();
		//log.info("##check"+check);
		if(memberMapper.checkId(member.getM_email()) == 0) {
			System.out.println("<script>");
			System.out.println("alert('등록된 이메일이 없습니다.');");
			System.out.println("history.go(-1);");
			System.out.println("</script>");
			return null;
		} else {
			System.out.println("************");
			/*String pwd = member.getM_pwd();
			System.out.println(pwd);*/
			Member member1 = memberMapper.loginS(member.getM_email());
			String pwd1 = member1.getM_pwd();
			String pwd2 = member.getM_pwd();
			System.out.println("Service: "+ pwd1 + " ## 받아온거 : "+ pwd2);
			if(pwd1.equals(pwd2)) {
				return member1;
			}else {
				return null;
			}
		}
	}
	
	@Override
	public void logout(HttpServletResponse response, HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 완료");
		//logout(session);

	}
	
	@Override
	public Member updateS(Member member) throws Exception {
		if(member.getM_fname() !=null) {
			System.out.println("1");
			System.out.println("#>member:" + member);
			
			mypageMapper.updateS(member);
			return memberMapper.loginS(member.getM_email());
		}else {
			System.out.println("2");
			System.out.println("#>member:" + member);
			mypageMapper.updateNofile(member);
			return memberMapper.loginS(member.getM_email());
		}		
	}
	//회원탈퇴 
	@Override
	public boolean leaveS(Member member, HttpSession session, HttpServletResponse response){
		Member m1 = memberMapper.loginS(member.getM_email());
		System.out.println("#>member비밀번호(1) : "+m1.getM_pwd());
		response.setContentType("text/html;charset=utf-8");
		//member = memberMapper.login(member.getEmail());

		System.out.println("#>member비밀번호(2) : "+member.getM_pwd());
		String pwd1 = m1.getM_pwd();
		String pwd2 = member.getM_pwd();
		if(pwd1.equals(pwd2)) { //
			System.out.println(1);
			mypageMapper.leaveS(member);
			System.out.println(2);
			return true;
		}else {
			
			return false;
		}
	}
	
/*---------------------------------------------
 *  이메일 관련 메서드 시작
 *--------------------------------------------*/
	
   public void regist(Member member) throws Exception {
        String key = new TempKey().generateKey(30);  // 인증키 생성
        member.setAuthkey(key);
        System.out.println("key : " + key);
        
        
        System.out.println("보내기전 값들");
        System.out.println("보내기전 값들====" + member.toString());
        // 이메일 보내기전에 인증키값을 테이블에 저장
        memberMapper.emailAuthIns(member);
        
        //메일 전송
        MailHandler sendMail = new MailHandler(mailSender);
        sendMail.setSubject("서비스 이메일 인증");
        sendMail.setText(
                new StringBuffer()
                .append("<h1>메일인증</h1>")
                .append("<h1>TEST 이민용</h1>")
                //.append("<a href='http://localhost:8080/emailConfirm?authKey=")
                .append("<h1>아래의 인증키를 입력하세요</h1>")
                .append(key)
                //.append("' target='_blank'>이메일 인증 확인</a>")
                .toString());
        //deathcobra00@naver.com
        sendMail.setFrom("thecolorpoetic@gmail.com", "오디가 프로젝트");
        sendMail.setTo(member.getM_email());
        sendMail.send();
    }
 
    //이메일 인증 키 검증
    public String userAuth(String authkey) throws Exception {
    	
    	String resultVal = "";
    	
        Member member = new Member();

        if(member!=null){
            try{
            	
            	System.out.println("보내기전 값들 ==" + authkey);
            	
            	String dv = memberMapper.emailAuthChk(authkey);
            	System.out.println("결과 = " + dv);
            	
            	if ( dv != null ) {
            		memberMapper.emailAuthDel(authkey);
            		resultVal = "yes";
            	}else {
            		System.out.println("삭제안됨");
            		resultVal = "no";
            	}
            	
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        return resultVal;
    }

	@Override
	public boolean writeFile(MultipartFile file, String saveFileName) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String saveStore(MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member saveStore(Member member, MultipartFile file) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findIdS(Member member) {
		System.out.println("Service : "+member.getM_name());
		System.out.println("Service : "+member.getM_phone());
		String email = memberMapper.findId(member);
		System.out.println(email);
		return email;
	}
	@Override
	public void findPwd(Member member) {
		System.out.println("Service : "+member.getM_email());
		System.out.println("Service : "+member.getM_pwd());	
		memberMapper.findPwd(member);
	
	}
}
/*---------------------------------------------
 *  이메일 관련 메서드 끝
 *--------------------------------------------*/
   
