<%@ page contentType="text/html; charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Bootstrap Core CSS -->
<link href="../assets/css/login.css" rel="stylesheet">
<link href="assets/css/profile2.css" rel="stylesheet">



<!DOCTYPE html>
<!-- 로그인  -->
<p class="tip"></p>
<div class="cont">
  <div class="form sign-in">
   <form action="login.do" method="post" id="LoginS"  > 
   
    <h2>여행시작하기,</h2>
    <label>
      <span>이메일</span>
      <input type="text" name="m_email" id="l_email" />
    </label>
    <label>
      <span>비밀번호</span>
      
      <input type="password" name="m_pwd" id="l_pwd" />
    </label>
	<a href="find_pwd">
    <p class="forgot-pass"><a href="findIdPwd">아이디 또는 비밀번호가 기억이 안나시나요?</a></p>
    </p>
    </a>

    <button type="submit" class="submit">시작</button>
    <center>
    <button class="loginBtn loginBtn--facebook"  >
  	Login with Facebook
	</button>
	<BR>
	<button class="loginBtn loginBtn--google"  >
	  Login with Google
	  </center>
	</button>
	</form>
  </div>
  
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>처음 오셨나요?</h2>
        <p></p>
      </div>
      <div class="img__text m--in">
        <h2>가입하기</h2>
        <p></p>
      </div>
      
      <div class="img__btn">
        <span class="m--up">가입하기</span>
        <span class="m--in">로그인 하기</span>
      </div>
    </div>
    
    <!-- 회원가입  -->
    
    <script>
 
	//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
    var idCheck = 0;
    var pwdCheck = 0;
    //아이디 체크하여 가입버튼 비활성화, 중복확인.
    function checkId() {
    	   	
        //var inputed = $('.m_email').val();
        var inputed = $("#email").val();
		
        $.ajax({
            data : {
                m_email : $("#email").val()
            },
            type : "post",
            url : "checkId.jy",
            success : function(data) {
            	
                if(inputed=="" && data=='0') {
                    $(".submit").prop("disabled", true);
                    $(".submit").css("background-color", "#aaaaaa");
                    $("#email").css("background-color", "#FFCECE");
                    idCheck = 0;
                } else if (data == '0') {
                    $("#email").css("background-color", "#B0F6AC");
                    idCheck = 1;
                    if(idCheck==1 && pwdCheck == 1) {
                        $(".submit").prop("disabled", false);
                        $(".submit").css("background-color", "#4CAF50");
                    } 
                } else if (data == '1') {
                    $(".submit").prop("disabled", true);
                    $(".submit").css("background-color", "#aaaaaa");
                    $("#email").css("background-color", "#FFCECE");
                    idCheck = 0;
                } 
            	
            	
            	console.log(data);
            	
            	
            },
            // 밑에 라인 참조 시작
            type : "POST",
            // 밑에 라인 참조 종료
            error : function(error) {
            	console.log(error);
            	alert("에러");
            }
        });
    }
    
    // 패스워드 확인
    function checkPwd() {
        var inputed = $("#m_pwd").val();
        var reinputed = $("#m_pwdcheck").val();
        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
            $(".submit").prop("disabled", true);
            $(".submit").css("background-color", "#aaaaaa");
            $("#m_pwdcheck").css("background-color", "#FFCECE");
        }
        else if (inputed == reinputed) {
            $("#m_pwdcheck").css("background-color", "#B0F6AC");
            pwdCheck = 1;
            if(idCheck==1 && pwdCheck == 1) {
                $(".submit").prop("disabled", false);
                $(".submit").css("background-color", "#4CAF50");
                
            }
        } else if (inputed != reinputed) {
            pwdCheck = 0;
            $(".submit").prop("disabled", true);
            $(".submit").css("background-color", "#aaaaaa");
            $("#m_pwdcheck").css("background-color", "#FFCECE");
       }
    }
	
    // email
    function emailAuth(){
    	
    	if ( confirm("인증 이메일을 발송하였습니다") ) {
    		
            $.ajax({
                data : {
                	m_email : $("#email").val()
                },
                type : "post",
                url : "/sign-up",
                success : function(data) {
                	alert("인증코드를 확인하세요.");
                	console.log(data);
                	$("#email_auth_chk").css("display","block");
                },
                error : function(error) {
                	console.log(error);
                	alert("에러");
                }
            });
    		
    	} else {
    		alert("다시 시도해주세요.");
    	}
    	
    }

    function emailAuth_key(){
    	
        $.ajax({
            data : {
            	Authkey : $("#email_AuthKey").val()
            },
            type : "post",
            url : "/emailConfirm",
            success : function(data) {
            	alert("인증성공하였습니다.");
            	console.log(data);
            	$("#email_auth_chk").css("display","none");
            	
            },
            error : function(error) {
            	console.log(error);
            	alert("에러");
            	alert("이메일인증을 다시하세요");
            }
        });
    }
    
    
    </script>
   
   <div class="form sign-up">
    <form action="join.do" method="post" id="joinS" enctype="multipart/form-data"  >
    
      <h2>두근두근 여행,</h2>
      <label>
        <span>이메일</span>
        <input type="text" name="m_email" id="email" oninput="checkId()" required/>
        <input type='button' value='이메일인증'  onclick="emailAuth()">
      </label>
     
      <label>
	      <div id="email_auth_chk" style="display:none">
	        <input type="text" name="m_email_AuthKey" id="email_AuthKey" />
	        <h2><input type='button' value='인증하기' onclick="emailAuth_key()" /></h2>
	      </div> 
      </label>     
      
      <label>
        <span>이름</span>
        <input type="text" name="m_name" id="m_name"  required/>
      </label>
      <label>
        <span>비밀번호</span>
        <input type="password" name="m_pwd" id="m_pwd" oninput="checkPwd()" required/>
      </label>
      
      <label>
        <span>비밀번호 확인</span>
        <input type="password" name="m_pwdcheck" id="m_pwdcheck" oninput="checkPwd()" />
      </label>
       
      <label>
        <span>휴대폰번호</span>
        <input type="text" name="m_phone" id="m_phone"  required/>
      </label>
      <label>
      <span>생년월일</span>
        <input type="date" name="m_birth" id="m_birth"  required/>
      </label>
      
      <div style="display:flex;justify-content:center; margin: 15;">
	      <input type="radio" value="male" id="male" name="m_gender" checked style="width:auto;"/>
	      <label for="squaredFour" style="margin:0;width:50;">남자</label>
	      <input type="radio" value="female" id="female" name="m_gender" checked style="width:auto;"/>
	      <label for="squaredFour" style="margin:0;width:50;">여자</label>
      </div>

      <!-- <CENTER>
	    <input type="radio" id="male" name="m_gender" value="male" checked>
		<label for="male" class="radio">Male</label><br>
		<input type="radio" id="female" name="m_gender" value="female">
		<label for="female" class="radio">Female</label><br>
      </CENTER> 
      </div>
      -->
      <label>
      <span>자기소개</span>
        <input type="text" name="m_about" id="m_about"  required/>
      </label>
      <label>
        <span>프로필사진등록</span>
        <input type="file" name="file" id="m_fname" required/>
      </label>
    <div class="row">
      <button type="submit" class="submit" >가입하기</button>
      <!-- <button type="button" class="fb-btn" >Join with <span>facebook</span></button> -->
    </div>
    </form>
   </div>
  </div>
</div>

<a href="https://dribbble.com/shots/3306190-Login-Registration-form" target="_blank" class="icon-link">
  <img src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
</a>
<a href="https://instagram.com/m1inyong" target="_blank" class="icon-link icon-link--twitter">
  <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
</a>
<script src="../assets/js/login.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script>
$(document).ready(function() {
    	
        var readURL = function(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.profile-pic').attr('src', e.target.result);
                }
        
                reader.readAsDataURL(input.files[0]);
            }
        }
       
        $(".file-upload").on('change', function(){
            readURL(this);
        });
        
        $(".upload-button").on('click', function() {
           $(".file-upload").click();
        });
    });
    </script>
<!-- jQuery-->
        