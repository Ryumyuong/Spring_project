<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


<%@include file="../include/header.jsp" %>
<body>
<form method="post" action="/pmember/pmodify" name ="/pmember/pmodify" >
<input type="hidden" name="p_id" value="${pmember.p_id}">
	<div class="container">
		<h1>회원수정</h1><br>
		<div class="form-group">
			<h3>아이디 : ${pmember.p_id}</h3>
		</div>
		<div class="form-group">
			<label for= "inputpassword">비밀번호</label>
			<input type="text" class="form-control" id="p_password" name="p_password" value="${pmember.p_password}">
		</div>
		<div class="form-group">
			<label for= "inputpasswordcon">비밀번호 확인</label>
			<input type="text" class="form-control" id="p_passwordcon" name="p_passwordcon" value="${pmember.p_passwordcon}">
		</div>
		<div class="form-group">
			<label for= "inputemail">이름</label>
			<input type="text" class="form-control" id="p_name" name="p_name" value="${pmember.p_name}">
		</div>
		<div class="form-group">
			<label for= "inputemail">성별 : </label>
			<input class="form-check-input" type="radio" name="p_sex" id="p_sex" value="남자">
			  <label class="form-check-label" for="남자">남자</label>

			  <input class="form-check-input" type="radio" name="p_sex" id="p_sex" value="여자">
			  <label class="form-check-label" for="여자">여자</label>
		</div>
		<div class="form-group">
			<label for= "inputemail">이메일</label>
			<input type="text" class="form-control" id="p_email" name="p_email" value="${pmember.p_email}">
		</div>
		<div class="form-group">
			<label for= "inputphone">전화번호</label>
			<input type="text" class="form-control" id="p_phone" name="p_phone" value="${pmember.p_phone}">
		</div>
		
		<div class="form-group">
			<label for= "inputaddress">주소</label>
			<input type="text" class="form-control" id="p_address" name="p_address" value="${pmember.p_address}">
		</div>
		<div class="form-group">
			<label for= "inputpath">가입경로</label>
			<input type="text" class="form-control" id="p_path" name="p_path" value="${pmember.p_path}">
		</div>
		<div class="form-group">
			<label for= "inputpath">가입정보 유효기간 : </label>
			  <input class="form-check-input" type="radio" name="p_valid" id="1년" value="1년">
			  <label class="form-check-label" for="1년">1년</label>

			  <input class="form-check-input" type="radio" name="p_valid" id="p_valid" value="3년">
			  <label class="form-check-label" for="3년">3년</label>

			  <input class="form-check-input" type="radio" name="p_valid" id="5년" value="5년">
			  <label class="form-check-label" for="5년">5년</label>
		</div>
			<button type="submit" data-oper='modify' class="btn btn-default">수정</button>
              				
			<button data-oper='remove' class="btn btn-danger">
				<a href="/project5/pmember/remove?p_id=${pmember.p_id}"/></a>회원탈퇴
				</button>
		</div>
</form>
         </body>
        </html>