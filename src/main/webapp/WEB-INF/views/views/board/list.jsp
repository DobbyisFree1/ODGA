<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title> Spring Board </title>
	<meta charset="utf-8">
	<style>
		a{text-decoration:none}
	</style>
</head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<body>
<center>
<font color='gray' size='4' face='휴먼편지체'>
<hr width='600' size='2' color='gray' noshade>
<h3> Spring Board</h3>
<font color='gray' size='4' face='휴먼편지체'>
<a href='../'>인덱스</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href='write.do'>글쓰기</a><br/>
</font>
<hr width='600' size='2' color='gray' noshade>

<TABLE border='2' width='600' align='center' noshade>
<TR size='2' align='center' noshade bgcolor='AliceBlue'>
	<th bgcolor='AliceBlue'>no</th>
	<th color='gray'>writer</th>
	<th color='gray'>e-mail</th>
	<th color='gray'>subject</th>
	<th color='gray'>date</th>
	<th color='gray'>삭제</th>
</TR>

  <c:if test="${empty listResult.list}">
		<tr>
			<td align='center' colspan="5">데이터가 하나도 없음</td>
		</tr>
	</c:if>
	<c:forEach items="${listResult.list}" var="board">
		<tr>
			<td align='center'>${board.seq}</td>
			<td>${board.writer}</td>
			<td>${board.email}</td>
			<td><a href='content.do?seq=${board.seq}'>${board.subject}</a></td>
			<td>${board.rdate}</td>
			<td align='center'><a href='del.do?seq=${board.seq}'>삭제</a></td>
		</tr>
	</c:forEach>
   
</TABLE>
<br>

<hr width='600' size='2' color='gray' noshade>
<font color='gray' size='3' face='휴먼편지체'>
     (총페이지수 : ${listResult.totalPageCount})
    &nbsp;&nbsp;&nbsp;
<c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
        <a href="list.do?cp=${i}">
           <c:choose>
               <c:when test="${i==listResult.cp}">
                  <strong>${i}</strong>
               </c:when>
	           <c:otherwise>
	              ${i}
	           </c:otherwise>
           </c:choose>
        </a>&nbsp;
    </c:forEach>           
    
    ( TOTAL : ${listResult.totalCount} )
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       페이지 싸이즈 :
    <select id="psId" name="ps" onchange="f(this)">
       <c:choose>
          <c:when test="${listResult.ps == 3}">
              <option value="3" selected>3</option>
              <option value="5">5</option>
		      <option value="10">10</option>
          </c:when>
          <c:when test="${listResult.ps == 5}">
              <option value="3">3</option>
              <option value="5" selected>5</option>
		      <option value="10">10</option>
          </c:when>
	      <c:otherwise>
	          <option value="3">3</option>
	          <option value="5">5</option>
	          <option value="10" selected>10</option>
	      </c:otherwise>	
       </c:choose>	
    </select>
    <br>  
    <br>
	<!-- 검색 -->
    <form name="S" method="post" action="search.do">
    	<select name="searchOption" id="searchOption">
    		<option value="all" <c:out value="${map.searchOption == 'all'?'selected':''}"/> >전체</option>
    		<option value="writer" <c:out value="${map.searchOption == 'writer'?'selected':''}"/> >이름</option>
    		<option value="content" <c:out value="${map.searchOption == 'content'?'selected':''}"/> >내용</option>
    		<option value="subject" <c:out value="${map.searchOption == 'subject'?'selected':''}"/> >제목</option>
    	</select>
    	<%-- <input name="keyword" value="${map.keyword}"> 
    	<input type="submit" value="검색"/>  --%>
    	<input type="text" name="keyword" id="keyword"/>
	    <input type="button" value="검색" id="searchOk02"/>
    </form>
    	<br/><br/>          
		<div id="container"></div>
		<br/><br/>
    <!-- <div id="result"> -->
     <%-- <c:choose>
              <c:when test="${empty map.list}">
                <tr>
					<td align='center' colspan="5">검색 결과 없음</td>
				</tr>
              </c:when>
           <c:otherwise>
             ${map.count} 개의 게시물이 있습니다.
		    <table border="1" width="600px">
		    	<tr>
		    		<th bgcolor='AliceBlue'>no</th>
					<th color='gray'>writer</th>
					<th color='gray'>e-mail</th>
					<th color='gray'>subject</th>
					<th color='gray'>date</th>
				</tr>
				<c:forEach items="${map.list}" var="search">
					<tr>
						<td align='center'>${search.seq}</td>
						<td>${search.writer}</td>
						<td>${search.email}</td>
						<td><a href='content.do?seq=${search.seq}'>${search.subject}</a></td>
						<td>${search.rdate}</td>
					</tr>
				</c:forEach> 
			</table>
			 &nbsp;&nbsp;
			<a href='list.do'>목록</a>
           </c:otherwise>
          </c:choose>
    </div> --%>
		<%-- <c:if test="${empty map.list}">
			
		</c:if>
		<c:forEach items="${map.list}" var="search">
			<tr>
				<td align='center'>${search.seq}</td>
				<td>${search.writer}</td>
				<td>${search.email}</td>
				<td><a href='content.do?seq=${search.seq}'>${search.subject}</a></td>
				<td>${search.rdate}</td>
			</tr>
		</c:forEach> --%>
    
    <script language="javascript">
    $(function(){
    $("#searchOk02").on("click", function(){
    	var searchString = $("form[name=S]").serialize() ; //form에 값들을 자동으로 불러와줌 

		   $.ajax({
			   url: "../board/search02.json", 
			   type: "POST",
			   data: searchString,
			   success: function(responseData){
				  //var jsObj = JSON.parse(responseData); //jQuery 버젼을 올려서 필요 없음
				  //{ searchOption: $("#name").val(), name: $("#name").val() }
               if(!responseData){
					  alert("일치하는 게시글이 없습니다.");
					  return false;
				  }
				  var html= "";
				  html += "";
				  html += "<table border='1' width='50%'>";
				  html += "<tr>";
				  html += "<th>번호</th>";
				  html += "<th>작성자</th>";
				  html += "<th>제목</th>";
				  html += "<th>날짜</th>";
				  html += "</tr>";
				
				  if(responseData.length != 0){
					  for(var i=0; i<responseData.length; i++){
						  html += "<tr>";
						  html += "<td align='center'>"+responseData[i].seq+"</td>";
						  html += "<td align='center'>"+responseData[i].writer+"</td>";
						  html += "<td align='center'><a href='content.do?seq="+responseData[i].seq+"'>"+responseData[i].subject+"</a></td>";
						  var d = new Date(responseData[i].rdate);
						  html += "<td align='center'>"+d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+"</td>";
						  html += "</tr>";
					  }
				  }else{
					  html += "<tr>";
					  html += "<td colspan='4' align='center'>일치하는 게시글이 없습니다.</td>";
					  html += "</tr>";
				  }
				  html += "</table>";
				  $("#seq").val("");
				  
				  $("#container").html(html);
			   }
		   });
	   });
    });
    
    
   
    
       function f(select){
           //var el = document.getElementById("psId");
           var ps = select.value;
           //alert("ps : " + ps);
           location.href="list.do?ps="+ps;
       }
       
    </script>
    
</font>
<hr width='600' size='2' color='gray' noshade>
    
</center>
</body>
</html>
