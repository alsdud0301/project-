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
		<li class= "menuli"><a href ="#" >Ȩ</a></li>
		<li class= "menuli"><a href ="mycontent.jsp">����ǰ</a></li>
		<li class= "menuli"><a href ="#">�Խ���</a></li>
		<li class= "menuli"><a href ="#">�����۰�</a></li><li class= "menuli"><a href ="#">������</a></li>
		</ul>
	
	</div>
	
	</header>
	
	<section class="methodsection">
	
	<div class="methoddiv">
	<h1 class="methodh1">�۾� ����� ������ �ֽʽÿ�</h1>
	<hr class="methodhr">
	</div>

	<div class="method">
	<input type="button" class="free" value ="����" onclick="location.href='writecontent.jsp'">
	<input type="button" class="wizard" value="���丮 ������">
	</div>
	
	<div class="container">
	
	<input class="cancel" type="button" value ="���">
	<input class="next" type="button" value="����">
	</div>
	</section>

</body>
</html>