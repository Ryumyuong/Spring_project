<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="Section" class="oldApp">
	<input type="hidden" id="gourl" name="gourl" value="http://www.alba.co.kr">
	
		<h1 class="sign__title">알바천국 회원가입을 환영합니다.</h1>
	

	<article id="Contents" class="join">
		<div class="container">
			<div class="join-type person">
				<div class="join-guide">
					<a href="./pmember/pregister" class="join-guide__link" onclick="MemberCommonCLS.goAdLink({action:'try_join_P'});">
						<p class="join-guide__title join-guide__title--person">개인 회원</p>
						<span class="join-guide__text">알바, 천국에 다 있어요.</span>
					</a>
				</div>
				<div class="btnAction">
					<a class="join-btn__action join-btn__action--person id" href="./pmember/pregister" >개인회원 가입하기</a>
				</div>
			</div>
		<div class="join-type biz">
			<div class="join-guide">
				<a href="./cmember/cregister" class="join-guide__link" onclick="MemberCommonCLS.goAdLink({action:'try_join_C'});">
					<p class="join-guide__title join-guide__title--biz">기업 회원</p>
					<span class="join-guide__text">알바생, 천국에 다있어요.<br>(사업자등록번호 필수입력)</span>
				</a>
			</div>
			<div class="btnAction">
				<a class="join-btn__action join-btn__action--biz" href="./cmember/cregister">기업회원 가입하기</a>
			</div>
			</div>
			
			<div class="proxy">
				<a href="http://www.alba.co.kr/agency/main.asp" target="_blank" class="proxy__button">빠르고 간편한 공고등록대행 <span class="proxy__button--link">1661-2544</span></a>
			</div>
			<script>
				$(".proxy-button").on('click', function() {
					ga('send', 'event', 'CRM 배너', '회원가입 하단');
					BA.Collect("EVENT", {
						"pageurl" : location.pathname
					,	"category1" : "CRM 배너"
					,	"category2" : "회원가입 하단"
					});
				});

			</script>
			
		</div>
		
	</article>
</section>
</form>                         
</body>
</html>