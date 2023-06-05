<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/header.css?ver=1" rel="stylesheet">
	<link rel = "stylesheet" href="/resources/css/bootstrap.min.css" />
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="/resources/js/menu.js"></script>
</head>
<body>
	<div class="top">
		<a href="/"><img src="/resources/img/Header_bi.png" ></a>
		<span class="search">
			<button type="submit" class="searchSubmit">검색</button>
		</span>
		<c:if test="${LoginVo.p_id == null }">
		<span class="registPerson"><a href="/member/plogin">로그인</a></span>
		</c:if>
		<c:if test="${LoginVo.p_id != null }">
		<span class="registPerson"><a href="/member/logout">로그아웃</a></span>
		</c:if>
		<span class="updatePerson"><a href="/pmember/pmodify" class="modify">회원정보 수정</a></span>
	</div>
	<div class="bottom">
		<ul>
			<li><a href="#">채용정보</a></li>
			<li><a href="#">인재정보</a></li>
			<li><a href="/board/list">알바스토리</a></li>
			<li><a href="#">고객지원</a></li>		  
		</ul>
	</div>
</body>
</html>