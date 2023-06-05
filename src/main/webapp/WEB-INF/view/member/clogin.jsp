<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<br>
<form  method="post" action="/cmember/clogin">
<label>기업 아이디 : </label>
<input type="text" id="c_id" name="c_id" placeholder="아이디를 입력하세요" /><br><br>

<!-- 비밀번호 -->
<label>비밀번호 : </label>
<input type="password" id="c_password"  name="c_password" placeholder="비밀번호를 입력하세요"  /><br><br>

 <!--제출 -->
<button type="submit">로그인</button>
<button type="reset">로그아웃</button>

</form>                         
</body>
</html>