<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">


<%@include file="../include/header.jsp" %>

<body class="bg-gradient-primary">

<script type="text/javascript">
		$(function() {
			
			let formObj = $("form");
			
			$('button').on("click",
					function(e)
					{
						e.preventDefault();
						
						const operation = $(this).data("oper");
						
						console.log(operation);
						
						if (operation === 'remove')
							{
								formObj.attr("action", "/pmember/remove");
							}
						else if (operation === 'clist')
							{
								formObj.find("#p_id").remove();
								formObj.attr("action", "/pmember/clist")
							}
							formObj.submit();
						});
			});
	</script>

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-5">
                <!-- Nested Row within Card Body -->
              	<div class="row">
              		<div class="col-lg-12">
              			<h1 class="page-header">회원조회</h1>
              		</div>
              		<!-- /.col-lg12 -->
              	</div>
              	<!-- /.row -->
              	</div>
              	</div>
              	
              	<div class="row">
              		<div class="col-lg-12">
              			<div class="panel panel-default">
              				<div class="panel-heading">pmember Read Page</div>
              				<!-- /.panel-heading -->
              				<div class="panel-body">
              					<div class="form-group">
              						<label>아이디</label> <input class="form-control" name='p_id'
              							value='<c:out value="${pmember.p_id }"/>' readonly="readonly">
              					</div>
              					
              					<div class="form-group">
              						<label>비밀번호</label> <input class="form-control" name='p_password'
              							value='<c:out value="${pmember.p_password}"/>' readonly="readonly">
              					</div>
              					
              					<div class="form-group">
              						<label>비밀번호확인</label> <input class="form-control" name='p_passwordcon'
              							value='<c:out value="${pmember.p_passwordcon}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>이름</label> <input class="form-control" name='p_name'
              							value='<c:out value="${pmember.p_name}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>성별</label> <input class="form-control" name='p_sex'
              							value='<c:out value="${pmember.p_sex}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>이메일</label> <input class="form-control" name='p_email'
              							value='<c:out value="${pmember.p_email}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>이메일</label> <input class="form-control" name='p_email'
              							value='<c:out value="${pmember.p_email}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>전화번호</label> <input class="form-control" name='p_phone'
              							value='<c:out value="${pmember.p_phone}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>회주소</label>
              						<textarea class="form-control" rows="3" name='p_address'
              							readonly="readonly"><c:out value="${pmember.p_address}" /></textarea>            					</div>
              					</div>
              					
              					<div class="form-group">
              						<label>가입경로</label> <input class="form-control" name='p_path'
              							value='<c:out value="${pmember.p_path}"/>' readonly="readonly">
              					</div>
              					<div class="form-group">
              						<label>정보유효기간</label> <input class="form-control" name='p_valid'
              							value='<c:out value="${pmember.p_valid}"/>' readonly="readonly">
              					</div>
                  		
            				<button type="submit" data-oper='pmodify' class="btn btn-default">Modify</button>
            				<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
            				<button type="submit" data-oper='clist' class="btn btn-info">List</button>
              			
              				<form id='operForm' action="/pmember/pmodify" method="get">
              					<input type='hidden' id='p_id' name='p_id' value='<c:out value="${pmember.p_id}"/>'>
            				</form>
              		</div>
              	</div>
              </div>
            </div>
         </body>
        </html>