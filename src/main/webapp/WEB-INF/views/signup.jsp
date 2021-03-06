<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=dege">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
td{
	border:1px solid #000000;
	border-collapse:collapse;
}
</style>

<script type="text/javascript">


/*
// 모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식 
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/; 
// 비밀번호 정규식 
var pwJ = /^[A-Za-z0-9]{4,12}$/; 
// 이름 정규식
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; 
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; 
// 휴대폰 번호 정규식 
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/; /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/

/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/

var birthJ = false;

// 아이디 중복확인
	$("#username").blur(function(){
		var username = $('#username').val();
		if($('#username').val()==''){
		   $('#id_check').text('아이디를 입력하세요.');
		   $('#id_check').css('color', 'red');	
		 } else if(idJ.test($('#username').val())!=true){
			$('#id_check').text('4~12자의 영문, 숫자마 사용 가능합니다.');
			$('#id_check').css('color', 'red');
		 } else if($('#username').val()!=''){
			var username=$('username').val();
			$.ajax({
				async : true,
				type : 'POST',
				data : 
					{
						username: $('#username').val()
					}, 
				url : 'signup.jsp',
				dataType: 'json',
				conentType: "application/json; charset=UTF-8",
				success : function(data){
			if(data.cnt > 0){
				$('#id_check').text('중복된 아이디 입니다.');
					$('#id_check').css('color', 'red');
					$("usercheck").attr("disabled", true);
				}else{
					if(idJ.test(username)){
						$('#id_check').text('사용가능한 아이디 입니다.');
						$('#id_check').css('color', 'blue');
						$("usercheck").attr("disabled", false);
					} else if(username==''){
						$('#id_check').text('아이디를 입력해주세요.');
						$('#id_check').css('color', 'red');
						$('#usercheck').attr("disabled", true);
					}else {
						$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능");
						$('#id_check').css('color', 'red');
						$("usercheck").attr("disabled", true);
						}
					}
				}

				}); // ajax//
			 } // else if
		
		}); // blur
		
		$('form').on('submit', function(){
			var inval_Arr = new Array(8).fill(false);
			if(idJ.test($('#username').val())){
				inval_Arr[0] = true;
			} else {
				inval_Arr[0] = false;
				alert('아이디를 확인하세요.');
				return false;
			}
			
			// 비밀번호가 같은 경우 && 비밀번호 정규식
			if(($('#password').val() == ($('password').val()))
				&& pwJ.test($('#password').val())) {
				inval_Arr[1] = true;
			} else {
				inval_Arr[1] = false;
				alert('비밀번호를 확인해주세요.');
				return false;
			}

			// 이름 정규식
			if (nameJ.test($('#uName').val())) { 
				inval_Arr[2] = true; 
			} else { 
				inval_Arr[2] = false; 
				alert('이름을 확인하세요.'); 
				return false; 
			}

			// 생년월일 정규식
			if (birthJ) { 
				console.log(birthJ); 
				inval_Arr[3] = true; 
			} else { 
				inval_Arr[3] = false; 
				alert('생년월일을 확인하세요.'); 
				return false; 
			}

			// 이메일 정규식
			if (mailJ.test($('#uEmail').val())){ 
				console.log(phoneJ.test($('#uEmail').val())); 
				inval_Arr[4] = true; 
			} else { 
				inval_Arr[4] = false; 
				alert('이메일을 확인하세요.'); 
				return false; 
			} 

			// 휴대폰번호 정규식 
			if (phoneJ.test($('#uPhone').val())) { 
				console.log(phoneJ.test($('#uPhone').val())); 
				inval_Arr[5] = true; 
			} else { 
				inval_Arr[5] = false; 
				alert('휴대폰 번호를 확인하세요.'); 
				return false; 
			}

			// 성별확인
			if(user.uGender[0].checked==false&&user.uGender[1].checked==false){ 
				inval_Arr[6] = false; 
				alert('성별을 확인하세요.'); 
				return false; 
			} else { 
				inval_Arr[6] = true; 
			}

			// 전체 유효성 검사
			var validAll = true; 
			for(var i = 0; i < inval_Arr.length; i++){ 
				if(inval_Arr[i] == false){ 
					validAll = false; 
				} 
			} if(validAll == true){ // 유효성 모두 통과
				 alert('Kproject 가족이 되어주셔 감사합니다.');
			} else { 
				alert('정보를 다시 확인하세요.') 
			}

		});

		$('#username').blur(function() { 
			if (idJ.test($('#username').val())) { 
				console.log('true'); 
				$('#id_check').text(''); 
			} else { 
				console.log('false'); 
				$('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.'); 
				$('#id_check').css('color', 'red'); 
			} 
		});

		$('#password').blur(function() { 
			if (pwJ.test($('#password').val())) { 
				console.log('true'); 
				$('#pw_check').text(''); 
			} else { 
				console.log('false'); 
				$('#password').text('4~12자의 숫자 , 문자로만 사용 가능합니다.'); 
				$('#password').css('color', 'red'); 
			} 
		});

		//이름에 특수문자 들어가지 않도록 설정 
		$("#uName").blur(function() { 
			if (nameJ.test($(this).val())) { 
				console.log(nameJ.test($(this).val())); 
				$("#name_check").text(''); 
			} else { 
				$('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)'); 
				$('#name_check').css('color', 'red'); 
			} 
		}); 
		
		$("#uEmail").blur(function() { 
			if (mailJ.test($(this).val())) { 
				$("#email_check").text(''); 
			} else { 
				$('#email_check').text('이메일 양식을 확인해주세요.'); 
				$('#email_check').css('color', 'red'); 
			} 
		});

		// 생일 유효성 검사
		var birthJ = false;

		// 생년월일 birthJ 유효성 검사
		$('#uBirth').blur(function(){ 
			var dateStr = $(this).val(); 
			var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연) 
			var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월) 
			var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일) 
			var today = new Date(); // 날짜 변수 선언 
			var yearNow = today.getFullYear(); // 올해 연도 가져옴


			if (dateStr.length <=8) { // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다. 
				if (year > yearNow || year < 1900 ){ 
					$('#birth_check').text('생년월일을 확인해주세요'); 
					$('#birth_check').css('color', 'red'); 
				} else if (month < 1 || month > 12) { 
					$('#birth_check').text('생년월일을 확인해주세요 '); 
					$('#birth_check').css('color', 'red'); 
				} else if (day < 1 || day > 31) { 
					$('#birth_check').text('생년월일을 확인해주세요 '); 
					$('#birth_check').css('color', 'red'); 
				} else if ((month==4 || month==6 || month==9 || month==11) && day==31) { 
					$('#birth_check').text('생년월일을 확인해주세요 '); 
					$('#birth_check').css('color', 'red'); 
				} else if (month == 2) { 
					var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)); 

					if (day>29 || (day==29 && !isleap)) { 
						$('#birth_check').text('생년월일을 확인해주세요 '); 
						$('#birth_check').css('color', 'red'); 
					} else { 
						$('#birth_check').text(''); 
						birthJ = true; 
						} 
					} else { 
						$('#birth_check').text(''); 
						birthJ = true; 
					}//if 끝
					} else { 
						//1.입력된 생년월일이 8자 초과할때 : auth:false 
						$('#birth_check').text('생년월일을 확인해주세요 '); 
						$('#birth_check').css('color', 'red'); 
					} 
			}); // 메서드 끝 

			// 핸드폰번호 
			$('#uPhone').blur(function(){ 
				if(phoneJ.test($(this).val())){ 
					console.log(nameJ.test($(this).val())); 
					$("#phone_check").text(''); 
				} else { 
					$('#phone_check').text('휴대폰번호를 확인해주세요 '); 
					$('#phone_check').css('color', 'red'); 
				} 
			});

	});
				*/

	
		
</script>
</head>
<body>
	<article class="container">
	<div class="page-header">
		<div class="col-md-6 col-md-offset-3">
			<h2>회원 가입</h2>
		</div>
	</div>

	<div class="col-sm-6 col-md-offset-3">
	<form action="/signup" method="post">
	<!-- csrf -->
	<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" class="form-control" id="username" name="username" placeholder="ID 입력">
			<div class="check_font" id="id_check"></div> <!-- 미리 div를 통해 경고문이 들어갈 자리 만들어놓는다 -->
		</div>
		
		<div class="form-group">
			<label for="password">비밀번호</label>
			<input type="password" class="form-control" id="password" name="password" placeholder="Password"><br>
			<div class="check_font" id="pw_check"></div>
		</div>
		
		<div class="form-group">
			<label for="uName">이름</label>
			<input type="text" class="form-control" id="uNmae" name="uName" placeholder="Name">
			<div class="check_font" id="name_check"></div>
		</div>
		
		<div class="form-group">
			<label for="uBirth">생년월일</label>
			<input type="tel" class="form-control" id="uBirth" name="uBirth" placeholder="ex)19990219"><br>
			<div class="check_font" id="birth_check"></div>
		</div>
		
		<div class="form-group">
			<label for="uEmail">이메일</label>
			<input type="email" class="form-control" id="uEmail" name="uEmail" placeholder="E-mail">
			<div class="check_font" id="email_check"></div>
		</div>
		
		<div class="form-group">
			<label for="uPhone">핸드폰번호('-'없이 번호만 입력)</label>
			<input type="tel" class="form-control" id="uPhone" name="uPhone" placeholder="Phone Number">
			<div class="check_font" id="email_check"></div>
		</div>
	
		<div class="form-group">
			<label>성별 </label>
			<input type="checkbox" id="uGender" name="uGender" value="남">남
			<input type="checkbox" id="uGender" name="uGender" value="여">여
		</div>
		
	
		
		<div class="form-group text-center">
			<button type="submit" class="btn btn-primary">회원가입</button>
		</div>
		</form>
		
		</div>
	</article>
	
<script type="text/javascript">
$(document).on('focusout', '#username', function () {
	$.ajax({
		method: "POST",
		url: "/aj/chkid",
		data: { username: $('#username').val() }
	})
	.done(function( html ) {
		$('#id_check').html(html);
	});	
});

</script>
</body>
</html>