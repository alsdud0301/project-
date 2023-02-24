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
</head>

<body>
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
	
	</header>
	<nav class="createnav">
	<h1 class="createnew">새 작품 쓰기</h1>
	<hr class="underline">
	<h4 class="free">자유</h4>
	<hr class="createhr">
	</nav>
	<form method="post" action="writecontent.jsp">
	<section class="round">
	
	</section>
	
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
	<input type="text" placeholder ="제목을 입력해주세요" style="width:600px; height:40px;">
	<h2 class="introduceh2">작품 줄거리</h2>
	<input type="text" placeholder ="작품 줄거리를 입력해주세요" style="width :600px; height : 180px; ">
	
	
	</div>
	
	</section>
		<hr class="createhr2">
	<footer class="footerinput2">

	<input type="button" class="before" value="< 이전">
	<input type="submit" class="next" value="다음 >">
	
	</footer>
	</form>
	
	

	
	
	
	



</body>
</html>