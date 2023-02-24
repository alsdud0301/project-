<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href ="./css/menu.css">
<link rel ="stylesheet" href ="./css/writecontent.css">
<meta name="viewport" content="width=device-width" initial-scale="1">
</head>

<body>
<%
	//로그인이 된 사람들은 로그인정보를 담을 수 있도록한다.
	String userID = null;
	//만약에 현재 세션이 존재한다면
	if (session.getAttribute("userID") != null) {
		//그 아이디값을 받아서 userID인스턴스로 관리할 수 있도록 한다.
		userID = (String) session.getAttribute("userID");
	}
	%>
<header class = "menubar">
	<div class="main"><a href ="#">Epicus</a></div>
	<div class="menu">
		
		<ul class ="menuul">
		<li class= "menuli"><a href ="#" >홈</a></li>
		<li class= "menuli"><a href ="mycontent.jsp">내작품</a></li>
		<li class= "menuli"><a href ="#">게시판</a></li>
		<li class= "menuli"><a href ="#">공동작가</a></li><li class= "menuli"><a href ="#">공모전</a></li>
		</ul>
	<%
				// 접속하기는 로그인이 되어있지 않은 경우만 나오게한다.
			if (userID == null) {
			%>
			<span class="login"><a href="login.jsp">로그인</a></span>
			<span class="join"><a href="join.jsp">회원가입</a></span>
	</div>
	<%
				// 로그인이 되어있는 사람만 볼수 있는 화면
			} else {
			%>
			<span class="logout"><a href="logoutAction.jsp">로그아웃</a></span>
			<%} %>
	
	</header>
	
	<form method="post" action ="createcontentAction.jsp">
	
	<nav class="createnav">
	<h1 class="createnew">새 작품 만들기</h1>
	<hr class="underline">
	
	<hr class="createhr">
	</nav>
	
	<section class="newsection">
	
	<div class = "inputbox">
	<h2 class="imageh2">표지 이미지</h2>
	
	<div class="imagebox">
	<input type="file" class="imagefile" value="이미지 불러오기">
	
	</div>
	<div class="checkbox">
	<input class="check" type="checkbox"> 
	<label for="check"> 이미지 없음 </label>
	</div>

	</div>
	<div class="inputbox2">
	<h2 class="titleh2">제목</h2>
	<input type="text" name="fTitle" placeholder ="제목을 입력해주세요" style="width:600px; height:40px;">
	<h2 class="introduceh2">작품 소개</h2>
	<input type="text" name="fInto" placeholder ="작품 소개를 입력해주세요" style="width :600px; height : 180px; ">
	
	
	</div>
	
	</section>
		<hr class="createhr2">
	<footer class="footerinput">

	<input type="button" class="cancel"value="취소하기">
	<input type="submit" class="create" value="생성하기" onclick ="location.href='mycontentlist.jsp'">
	
	</footer>
	</form>
	
	

	
	
	
	



</body>
</html>