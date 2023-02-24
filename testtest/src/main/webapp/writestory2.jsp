<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href ="./css/menu.css">
<link rel ="stylesheet" href ="./css/writestory2.css">
<meta name="viewport" content="width=device-width",initial-scale="1" >


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
	
	<nav class="titlenav">
	<div class="titlediv">
	<span class="titlespan">작품 제목</span>
	
	
	<span class="round">몇부 몇화</span></div>
	</nav>
	<section class="writebox">
		<div class="writediv">
		<h3 class="subtitle">부제목</h3>
		</div>
		<div class="contentdiv">
		사건 줄거리
		</div>
		<div class="inputdiv">
		<input type="text" class="inputbox" placeholder ="내용을 입력해주세요.">
		</div>
	</section>

	
	<footer class="footerbutton">
	<div class="DBbutton">
	<hr class ="footerhr">
	<input class ="before" type="button" value="< 이전">
	<input class="next" type="submit" value = "다음 >">
	</div>
	
	
	</footer>
	
	

</body>
</html>