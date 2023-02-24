<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel ="stylesheet" href ="./css/menu.css">
<link rel ="stylesheet" href ="./css/method.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
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
	
	<section class="methodsection">
	
	<div class="methoddiv">
	<h1 class="methodh1">작업 방식을 선택해 주십시오</h1>
	<hr class="methodhr">
	</div>

	<div class="method">
	<input type="button" class="free" value ="자유" onclick="location.href='writecontent.jsp'">
	<input type="button" class="wizard" value="스토리 마법사">
	</div>
	
	<div class="container">
	
	<input class="cancel" type="button" value ="취소">
	<input class="next" type="button" value="다음">
	</div>
	</section>

</body>
</html>