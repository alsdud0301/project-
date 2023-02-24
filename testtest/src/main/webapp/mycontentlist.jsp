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
<title>Insert title here</title>
<link rel ="stylesheet" href ="./css/menu.css">
<link rel ="stylesheet" href="./css/mycontentlist.css">
</head>
<body>


<%
	String userID = null;
	if (session.getAttribute("userID") != null)
	{
	    userID = (String)session.getAttribute("userID");
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
		<li class= "menuli"><a href ="#">공동작가</a></li>
		<li class= "menuli"><a href ="#">공모전</a></li>
		<%
			if (userID == null) {	
		%>
		<li class="menuli"><a href="login.jsp">로그인</a></li>
		<li class="menuli"><a href="join.jsp">회원가입</a></li>
		<%
		} else{
		%>
		<li class="menuli"><a href="logoutAction.jsp">로그아웃</a></li>
		<% 
		}
		%>
		</ul>
		
		
	
	</div>
	
	</header>
	
	
<!-- 	<nav class="mycontent"> -->
<!-- 	<h1 class="mycontenth1">내 작품</h1> -->
<!-- 	<hr class="mycontenthr"> -->
<!-- 	</nav> -->
<!-- 	<section class="section1"> -->
<!-- 	<div class="cover"> -->
	
<!-- 	</div> -->
<!-- 	<div class="sectiondiv"> -->
<!-- 	<h1 class="contenttitle">작품 제목</h1> -->
<!-- 	<h3 class="contentintroduce">작품 소개에 대한 내용 들어감</h3> -->
<!-- 	</div> -->
<!-- 	<hr class="mycontenthr2"> -->
<!-- 	</section> -->
	
<!-- 	<section class="section2"> -->
<!-- 	<h4 class="round">작품회차[]</h4> -->
<!-- 	<hr class="mycontenthr3"> -->
	
	<nav class="mycontent">
	<h1 class="mycontenth1">내 작품</h1>
	
	
	
	</nav>
	
	
	
	
	<section class="mycontentsection">
		<%	
			freeDAO freeDAO = new freeDAO();
			ArrayList<free> list = freeDAO.getList(pageNumber);
			
			for ( int i= 0; i<list.size(); i++)
			{
		%>
		

		
	
		
		
		<div class="contenttitle"><%=list.get(i).getfTitle() %></div>
		<div class="introduce"> <%=list.get(i).getfInto() %></div>
		
<!-- 		<div class="roundbutton"> -->
<!-- 		<input type="button" class="plusbutton" value=">"> -->
<!-- 		</div> -->
	
		<%
			}
		%>
				<span class="first"><input type="button" class="firstbutton" value="최신순"></span>
		<span class="new"><input type="button" class="newbutton" value="1화부터"></span>
		
		
	</section>
	
	
	<nav class="round">
	<span class="roundspan">작품회차()</span>
	

	<input type="button" class="pluswrite" value="+ 글쓰기">
	</nav>
	
	<section class="list">
<!-- 	<hr class="mycontenthr2"> -->
	
	
	<ul class="listul">
		<li class="listli">
	
		
			<div class="titlediv"><strong>글쓰기에 대한 제목</strong></div>
			<div class="contentinfo">작품설명에 대한 내용</div>
		
		</li>
		
			</ul>
			
		<ul class="listul">
		<li class="listli">
		
		<div class="titlediv"><strong>글쓰기에 대한 제목</strong></div>
		<div class="contentinfo">작품설명에 대한 내용</div>
		</li>
			</ul>
		<ul class="listul">
		<li class="listli">
		<div class="titlediv"><strong>글쓰기에 대한 제목</strong></div>
		<div class="contentinfo">작품설명에 대한 내용</div>
		</li>
			</ul>
			<ul class="listul">
		<li class="listli">
		<div class="titlediv"><strong>글쓰기에 대한 제목</strong></div>
		<div class="contentinfo">작품설명에 대한 내용</div>
		</li>
	</ul>
	
<!-- 	<input type="button" class="dropbutton" src="dots.png"> -->
	

	</section>
	

</body>
</html>