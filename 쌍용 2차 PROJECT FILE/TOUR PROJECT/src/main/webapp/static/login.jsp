<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="static/img/index/favicon.ico">
<title>JEJU LOGIN</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="author" content="Reverie Tech" />
<link rel="stylesheet" type="text/css" href="static/css/login/login.css" />
<link rel="stylesheet" type="text/css" href="static/css/login/tabs.css" />
<script src="static/script/mypage/jquery.js"></script>

<script>
    $(function(){
		$("#btnRegister").bind("click", function(){
			if($("#sign_id").val() != "" || $("#sign_email").val() != "" || $("#sign_password").val() != "" || $("#sign_confirmPassword").val() != "") {
				if($("#sign_password").val() == $("#sign_confirmPassword").val()) {
					if($("#terms").prop("checked")) {
						$.ajax({
							url : "/register",
							method : "POST", 
							dataType : "json",
							contentType : 'application/json; charset=UTF-8',
							data : JSON.stringify({
								"userid" : $("#sign_id").val(),
								"email" : $("#sign_email").val(),
								"password" : $("#sign_password").val(),
								"gender" : $("select option:selected").val(),
							}),
							success : function(data){
								if(data.result) {
									alert("Insert Success");
									location.href = "/";
								} else alert("Insert Failure\nPlease Try again.");
							},
							error : function(err){
								console.log("error 발생 : " + err);
							}
						});
					} else {
						alert("약관에 동의 부탁");
					}
				} else {
					alert('패스워드 일치 부탁');
				}
			} else {
				alert('빈칸 모두 입력 바람');
			}
		});
	});    
</script>
</head>

<body>
	<header>
		<h1>JEJU TOUR</h1>
	</header>
	<div class="container">
		<section class="tabblue">
			<ul class="tabs blue">
				<li><input type="radio" name="tabs blue" id="tab1" checked />
					<label for="tab1">가입하기</label>
					<div id="tab-content1" class="tab-content">
						<p>가입페이지</p>
						<form method="post" action="/register">
							<span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
							<input class="field" id="sign_id" required type="text" placeholder="userid" />
							<span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
							<input class="field" id="sign_email" required type="email" placeholder="user@email.com" />
							<span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
							<input class="field" id="sign_password" required type="password" placeholder="password" />
							<span class="tabaddon"><i class="fa fa-lock fa-2x"></i></span>
							<input class="field" id="sign_confirmPassword" required type="password" placeholder="password" />
							<select id="gender">
								<option value="남성">남성</option>
								<option value="여성">여성</option>
							</select>
							<div class="btn">
								<input type="checkbox" id="terms" required> <em>이용
									약관에 동의합니다.</em> <button type="button" id="btnRegister">Register</button>
							</div>
						</form>
					</div></li>
				<li><input type="radio" name="tabs blue" id="tab2" checked />
					<label for="tab2">로그인</label>
					<div id="tab-content2" class="tab-content">
						<form method="post" action="/login_check">
							<div class="social">
								<a class="facebook" href="#"><i class="fa fa-facebook"></i>
									Facebook</a> <a class="google" href="#"><i class="fa fa-google"></i>
									Google</a>
							</div>
							<h4>OR</h4>
							<span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
							<input class="field" name="login_id" required type="text" placeholder="userid" /> <span class="tabaddon">
							<i class="fa fa-lock fa-2x"></i></span> 
							<input class="field" name="login_password" required type="password" placeholder="password" />
							<div class="btn">
								<!-- <input type="checkbox" name="terms" required> <em>로그인
									유지하기</em> --> <input type="submit" value="LOGIN" />
							</div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div></li>

				<!--  <li>
            <input type="radio" name="tabs blue" id="tab3"  />
            <label for="tab3">비밀번호 찾기</label>
            <div id="tab-content3" class="tab-content">
              <form method="post" name="register" action="">
                <span class="tabaddon"><i class="fa fa-user fa-2x"></i></span>
                <input class="field" type="text" placeholder="JeJuTOUR" />
                <h4>OR</h4>
                <span class="tabaddon"><i class="fa fa-envelope fa-2x"></i></span>
                <input class="field" type="email" placeholder="JeJuTOUR@gmail.com"/>
                <div class="btn">
                  <input type="submit" value="찾기 !"/>
                </div>
              </form>
            </div>
          </li>         -->
			</ul>
		</section>
	</div>
<script>
	
</script>
</body>
</html>
