<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알바후기</title>
	<%@include file="../include/header.jsp" %>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/boardGet.css?after" rel="stylesheet">
</head>
<body>
	<div class="header">
		<%@include file="../include/mainmenu.jsp" %>
	</div>
	<div class="main">
		<div class="content">
		<div class="heading"></div>
		<table>
			<tr>
				<td class="head">기업명</td>
				<td>${board.company }</td>
			</tr>
			<tr>
				<td class="head">내용</td>
				<td class="content">${board.satis }</td>
			</tr>
		</table>
		</div>
		<p style="display: inline;"><a href="/board/list" class="boardList">목록</a>
			<c:if test="${(LoginVo.p_id eq board.b_id) or LoginVo.p_id eq 'admin'}">
				<div class="boardComplete">
					<span id="boardModify"><a href="/board/modify?bno=${board.bno }" class="boardModify">수정</a></span>
					<span id="boardDelete"><a href="/board/remove?bno=${board.bno }" class="boardDelete">삭제</a></span>
				</div>
			</c:if>
		</p>
	</div>
	<div class="footer">
		<%@include file="../include/footer.jsp" %>
	</div>
</body>
</html>