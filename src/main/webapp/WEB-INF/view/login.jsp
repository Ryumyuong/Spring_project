<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="Section">
	<div class="loginCombine">
		<div class="login-head">
			
				<h1 class="login-head__title">로그인 후 다양한 서비스를 이용해 보세요.</h1>
				<div class="login-head__guide">아직 알바천국 회원이 아니시면, 지금 <a href="/membership">회원가입</a>을 해주세요.</div>
			
		</div>

	<form  method="post" action="/pmember/plogin">
<label>기업 아이디 : </label>
<input type="text" id="p_id" name="p_id" placeholder="아이디를 입력하세요" /><br><br>

<!-- 비밀번호 -->
<label>비밀번호 : </label>
<input type="password" id="p_password"  name="p_password" placeholder="비밀번호를 입력하세요"  /><br><br>

 <!--제출 -->
<button type="submit">로그인</button>
<button type="reset">로그아웃</button>
</form>
</div>
</section>


</body>
</html>