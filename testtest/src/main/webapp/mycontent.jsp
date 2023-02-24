<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="test.free" %>
<%@ page import="test.freeDAO" %>
 <%@ page import="java.util.ArrayList" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href ="./css/menu.css">
<link rel ="stylesheet" href ="./css/mycontent.css">
<title>내작품</title>

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
	 int pageNumber = 1; 
	 //만약에 파라미터로 pageNumber가 넘어왔다면 해당 파라미터의 값을 넣어주도록 한다.
	if (request.getParameter("pageNumber") != null)
	{
		//파라미터는 항상 정수형으로 바꿔주는 parseInt를 사용해야 한다.
	    pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
	
	</div>
	<%
				// 접속하기는 로그인이 되어있지 않은 경우만 나오게한다.
			if (userID == null) {
			%>
			<span class="login"><a href="login.jsp">로그인</a></span>
			<span class="join"><a href="join.jsp">회원가입</a></span>
	
	<%
				// 로그인이 되어있는 사람만 볼수 있는 화면
			} else {
			%>
			<span class="logout"><a href="logoutAction.jsp">로그아웃</a></span>
			<%} %>
	
	</header>
	
	<nav class="mycontentnav">
	<span class="mycontent">내 작품</span>
	
	
	
	<span class="buttonspan">
	<input type="button" class="delete" value="+ 작품생성" onclick="location.href='createcontent2.jsp'">
	</span>
	<span class="createspan">
	<input type="button" class="create" value="삭제하기">
	</span>
	


	</nav>

	<section class="contentsection">
	<div class="contentbox">
	<input type="text" class="searchbox">
	<input type="button" class="search" value="검색">
	</div>
	</section>
	<section class="contentsection2">
		<%	
			freeDAO freeDAO = new freeDAO();
			ArrayList<free> list = freeDAO.getList(pageNumber);
			
			for ( int i= 0; i<list.size(); i++)
			{
		%>
	<ul class="ullist">
		<li class="content1">
		<div class="image"></div>
		<div class="contentdiv"></div>
		</li>
		
	</ul>
	<ul class="ullist">
		<li class="content1">
		<div class="image"></div>
		<div class="contentdiv"><%=list.get(i).getfTitle() %></div>
		</li>
		
	</ul>
	<ul class="ullist">
		<li class="content1">
		<div class="image"></div>
		<div class="contentdiv">작품1</div>
		</li>
		
	</ul>
	<ul class="ullist">
		<li class="content1">
		<div class="image"></div>
		<div class="contentdiv">작품1</div>
		</li>
		
	</ul>
		<%
			}
		%>
		</section>
		<footer class="contentfooter">
		
		
		</footer>
	
	
	

</body>
</html>