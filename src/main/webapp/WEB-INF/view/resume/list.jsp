<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>이력서</title>
	<%@include file="../include/header.jsp" %>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/resumeList.css?after" rel="stylesheet">
</head>
<body>
	<div class="header">
		<%@include file="../include/mainmenu.jsp" %>
	</div>
	<div class="main">
		<div class="content">
		<c:forEach items="${list}" var="resume">
			<c:if test="${resume.r_id == LoginVo.p_id}">
				<div class="resume_register">
					<a href="/resume/get?r_id=${LoginVo.p_id }" class="register" style="box-sizing: content-box;">이력서 보기</a>
				</div>
			</c:if>
		</c:forEach>
			<br/>
			<table class="resume_list">
				<tbody>
					<tr>
						<th>아이디</th>
						<th>제목</th>
						<th>학력</th>
						<th>희망직종</th>
					</tr>
					<c:forEach items="${list}" var="resume">
						<c:if test="${(resume.r_id ==  LoginVo.p_id) or LoginVo.p_id == 'admin'}">
							<tr>
								<td><c:out value="${resume.r_id }"/></td>
								<td><a href="/resume/get?r_id=<c:out value="${resume.r_id }" />"><c:out value="${resume.title }" /></a></td>
								<td><c:out value="${resume.ability }" /></td>
								<td><c:out value="${resume.job }" /></td>
							</tr>
							<tr></tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
			<br/>
		</div>
	</div>
	<div class="footer">
		<%@include file="../include/footer.jsp" %>
	</div>
</body>
</html>