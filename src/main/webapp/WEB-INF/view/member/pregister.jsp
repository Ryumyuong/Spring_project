<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="../include/header.jsp"%>
<head>
<body>
<%@include file="../include/header.jsp" %>
<br><br>
<section class="sign-section">
		<div class="container">
		<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="userid" name="userid" class="has-label" value="" maxlength="15" autocomplete="">
						<label for="userid">아이디 (4~15자 영문,숫자)</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
				</div>
			</section>

			<section class="sign-section passwd">
			<div class="container">
				<ul class="input-box-wrap">
					<li class="input-box">
						<input type="password" id="passwd" name="passwd" class="has-label" value="" autocomplete="new-password" required="">
						<label for="passwd">비밀번호<span>8-15자의 영문/숫자 또는 특수문자 조합</span></label>
						<button type="button" id="changePasswdType" class="password-view-btn" onclick="MemberCommonCLS.togglePwdInputView(this)">표시</button>
					</li>
					<li class="input-box">
						<input type="password" id="passwd2" name="passwd2" class="has-label" value="" maxlength="16" required="">
						<label for="passwd2">비밀번호 재입력</label>
					</li>
				</ul>
				<div class="valid-text">
					<p id="msg_passwd" class="msg"></p>
					<p id="msg_passwd2" class="msg"></p>
				</div>
				</div>
			</section>

			<section class="sign-section name">
			<div class="container">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="usernm" class="has-label" name="usernm" maxlength="20" value="">
						<label for="usernm">이름</label>
					</div>
					<div class="select-gender gender">
					<div style="text-align:center;margin:0 auto;">
					<input type="radio" id="male" name="gender" value="M"  ><label for="male">남</label>
					<input type="radio" id="female" name="gender" value="F"><label for="female">여</label>
					</div>
				</div>
				</div>
				<div class="valid-text">
					<p id="msg_usernm" class="msg"></p>
				</div>
				</div>
			</section>
			<section class="sign-section">
			<div class="container">
				<ul class="input-box-wrap">
					<li id="inputboxemail" class="input-box email hide-last-child">
						<input type="hidden" id="email1" name="email1" value="">
						<input type="hidden" id="email2" name="email2" value="">
						<input type="email" id="email" class="has-label" name="email" value="" maxlength="50" autocomplete="off">
						<label for="email">이메일</label>
						<button type="button" onclick="JoinRegFormPCLS.sendEmailCertNum();return false;" id="btnEmailCertSend" class="box-in-button" style="display:none">인증메일 전송</button>
						<button type="button" onclick="JoinRegFormPCLS.sendEmailCertNum();return false;" id="btnEmailCertResend" class="box-in-button" style="display:none">재전송</button>
					</li>
					<li class="input-box" id="emailcertnumbox" style="display:none">
						<input type="hidden" id="emailcertnumcheck" name="emailcertnumcheck" value="">
						<input type="hidden" id="emailcertsendyn" name="emailcertsendyn" value="N">
						<input type="hidden" id="emailcertyn" name="emailcertyn" value="N">
						<input type="tel" id="emailcertnum" class="has-label" value="" maxlength="6">
						<label for="emailcertnum" class="">인증번호</label>
						<button type="button" onclick="JoinRegFormPCLS.doSubmitEmailCertNum();" class="box-in-button">확인</button>
					</li>
				</ul>
				<!-- 이메일 자동완성 기능 -->
				<ul class="email-auto__list"></ul>
				<!-- //이메일 자동완성 기능 -->
				<div class="valid-text">
					<p id="msg_email" class="msg"></p>
				</div>
				</div>
			</section>

			<section class="sign-section">
			<div class="container">
				<ul class="input-box-wrap">
					<li class="input-box">
						<input type="hidden" id="htel1" name="htel1" value="">
						<input type="hidden" id="htel2" name="htel2" value="">
						<input type="hidden" id="htel3" name="htel3" value="">
						<input type="tel" id="htel" class="has-label" name="htel" value="" maxlength="11">
						<label for="htel">휴대폰 <span>('-' 없이 입력하세요.)</span></label>
						<button type="button" onclick="JoinRegFormPCLS.sendCertNum();return false;" id="btnCertSend" class="box-in-button">인증번호 요청</button>
						<button type="button" onclick="JoinRegFormPCLS.sendCertNum();return false;" id="btnCertResend" class="box-in-button" style="display:none;">재전송</button>
					</li>
					<li class="input-box">
						<input type="hidden" id="certnumcheck" name="certnumcheck" value="">
						<input type="hidden" id="certyn" name="certyn" value="N">
						<input type="tel" id="certnum" name="certnum" class="has-label" maxlength="6">
						<label for="certnum">인증번호</label>
						<button type="button" onclick="JoinRegFormPCLS.doSubmitCertNum();" class="box-in-button">확인</button>
					</li>
				</ul>
				<div class="valid-text">
					<span id="msg_htel" class="msg"></span>
					<p class="memo" id="CertGbnMobileContent2" style="display: none;">휴대폰으로 인증번호가 발송되었습니다.</p>
					<p class="memo" id="CertGbnCertContent" style="display: none;"><em>휴대폰 인증이 필요합니다.</em></p>
					<p class="memo complete" id="CertGbnMobileContent3" style="display: none;">휴대폰 번호 확인이 완료되었습니다.</p>
					<p class="memo" id="CertGbnFailureContent" style="display: none;"><em>입력하신 인증번호가 일치하지 않습니다. 인증번호 확인 후 정확히 입력해주세요.</em></p>
					<p class="memo" id="CertGbnEmptyContent" style="display: none;"><em>인증번호를 입력해 주세요.</em></p>
				</div>
				</div>
			</section>

			<!-- 개인정보 유효기간 선택 -->
			<section class="sign-section">
			<div class="container">
				<div class="sign-section__title">
					<div class="tooltip">
						<span class="tooltip__title">개인정보 유효기간 선택</span>
						<div class="tooltip__button-wrap">
							<a href="javascript:void(0);" class="tooltip__button" onclick="$(this).parents('.tooltip').addClass('on');">도움말</a>

							<div class="tooltip-explain">
								<div class="tooltip-explain__contents">
									<p class="tooltip-explain__contents-title">개인정보 유효기간</p>
									선택하신 기간 동안 로그인하지 않을 경우 개인정보를 별도로 분리 저장하게 됩니다.
								</div>
								<button type="button" onclick="$(this).parents('.tooltip').removeClass('on');" class="tooltip-explain__close">닫기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="sign-section__content">
					<div class="radio-group">
						<span class="input">
							<input type="radio" id="expireduration_1" name="expireduration" value="1">
							<label for="expireduration_1">1년</label>
						</span>
						<span class="input">
							<input type="radio" id="expireduration_3" name="expireduration" value="3">
							<label for="expireduration_3">3년</label>
						</span>
						<span class="input">
							<input type="radio" id="expireduration_99" name="expireduration" value="99" checked="">
							<label for="expireduration_99">회원탈퇴시</label>
						</span>
						<span id="SignExpireToast" class="sign-expire__toast" style="display: none;">
							장기 비로그인 시에도 계정 활성 상태 유지
							<a href="#SignExpireToast" class="sign-expire__toast-close" onclick="$('#SignExpireToast').hide();return false;">안내 닫기</a>
						</span>
					</div>
				</div>
				</div>	
			</section>
			<!-- //개인정보 유효기간 선택 -->
			<div class="container">
			<div class="btnAction">
				<a href="#" class="btn btnType1 submit" onclick="JoinRegFormPCLS.doSubmit();return false;">가입하기</a>
			</div>	
			</div>
			</body>
			
<!-- <form method="post" action="/pmember/pregister" name ="/pmember/pregister" > -->
<!-- 	<div class="container"> -->
<!-- 		<h1>회원가입</h1> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputId">아이디</label> -->
<!-- 			<input type="text" class="form-control" id="p_id" name="p_id" placeholder="사용자 아이디..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputpassword">비밀번호</label> -->
<!-- 			<input type="text" class="form-control" id="p_password" name="p_password" placeholder="사용자 비밀번호..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputpasswordcon">비밀번호 확인</label> -->
<!-- 			<input type="text" class="form-control" id="p_passwordcon" name="p_passwordcon" placeholder="비밀번호 확인..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputname">이름</label> -->
<!-- 			<input type="text" class="form-control" id="p_name" name="p_name" placeholder="사용자 이름..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputsex">성별 : </label> -->
<!-- 			 <input class="form-check-input" type="radio" name="p_sex" id="p_sex" value="남자"> -->
<!-- 			  <label class="form-check-label" for="남자">남자</label> -->

<!-- 			  <input class="form-check-input" type="radio" name="p_sex" id="p_sex" value="여자"> -->
<!-- 			  <label class="form-check-label" for="여자">여자</label> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputemail">이메일</label> -->
<!-- 			<input type="text" class="form-control" id="p_email" name="p_email" placeholder="사용자 이메일..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputphone">전화번호</label> -->
<!-- 			<input type="text" class="form-control" id="p_phone" name="p_phone" placeholder="사용자 전화번호..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputaddress">주소</label> -->
<!-- 			<input type="text" class="form-control" id="p_address" name="p_address" placeholder="회사주소..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputpath">가입경로</label> -->
<!-- 			<input type="text" class="form-control" id="p_path" name="p_path" placeholder="가입경로..."> -->
<!-- 		</div> -->
<!-- 		<div class="form-group"> -->
<!-- 			<label for= "inputvalid">가입정보 유효기간 : </label> -->
<!-- 			  <input class="form-check-input" type="radio" name="p_valid" id="p_valid" value="1년"> -->
<!-- 			  <label class="form-check-label" for="1년">1년</label> -->

<!-- 			  <input class="form-check-input" type="radio" name="p_valid" id="p_valid" value="3년"> -->
<!-- 			  <label class="form-check-label" for="3년">3년</label> -->

<!-- 			  <input class="form-check-input" type="radio" name="p_valid" id="p_valid" value="5년"> -->
<!-- 			  <label class="form-check-label" for="5년">5년</label> -->
<!-- 		</div> -->
<!-- 		<button type="submit" class="btn btn-default">확인</button> -->
<!-- 		<button type="reset" class="btn btn-default">취소</button><br><br> -->
<!-- 	</div> -->
<!-- </form> -->

</html>