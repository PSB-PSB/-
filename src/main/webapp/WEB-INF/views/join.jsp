<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>  
	<title>회원가입</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script>
		$(document).ready(function(){
			// 취소
			$("#cencle").on("click", function(){
			location.href = "${contextPath }/";
			})
		    
            //아이디 유효성검사
			$("#join").on("click", function(){
				if($("#car_uid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#car_uid").focus();
					return false;
				}
            //비밀번호 유효성검사
				if($("#car_upw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#car_upw").focus();
					return false;
				}
            //이름 유효성검사
				if($("#car_uname").val()==""){
					alert("이름을 입력해주세요.");
					$("#car_uname").focus();
					return false;
				}
            //핸드폰번호 유효성검사
				if($("#car_uphone").val()==""){
					alert("핸드폰번호를 입력해주세요.");
					$("#m_phone").focus();
					return false;
				}
            //생년월일 유효성검사
				if($("#car_uyear").val()==""){
					alert("생년월일을 입력해주세요.");
					$("#m_brith").focus();
					return false;
				}
            //주소 유효성검사
				if($("#m_addr").val()==""){
					alert("주소를 입력해주세요.");
					$("#car_uaddr").focus();
					return false;
				}
			});
		})
	</script>

	
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    	<c:if test="${user == null}">
	<a class="nav-link" href="/login">로그인</h1>
	</c:if>

<c:if test="${user != null}">
	<a class="nav-link" href="/logout">로그아웃</a>
</c:if>
    </a>
  </li>
</ul>




<h1>
	회원가입  
</h1>
	<form method="post" action="join">
	<label for="userID">ID</label>
		<input type="text" id="car_uid" name="car_uid" placeholder="아이디">
	<label for="userPW">비밀번호</label>
		<input type="password" id="car_upw" name="car_upw" placeholder="비밀번호"><br>
	<label for="upw_c">비밀번호 확인</label>
		<input type="password" id="upw_c" name="upw_c" placeholder="비밀번호확인"><br>
		
	<label for="userName">이름</label>
		<input type="text" id="car_uname" name="car_uname" placeholder="이름"><br>
		
	<label for="userYear">생년월일</label>
		<input type="date" id="car_uyear" name="car_uyear" placeholder="생년월일"><br>
		
	<label for="userName">이메일</label>
		<input type="text" id="car_uemail" name="car_uemail" placeholder="이메일"><br>
		
	<label for="userAddr">주소</label>
		<input type="text" id="car_uaddr" name="car_uaddr" placeholder="주소"><br>
		
	<label for="userPhone">핸드폰</label>
		<input type="text" id="car_uphone" name="car_uphone" placeholder=" '-' 없이 입력해주세요 "><br>
	<label for="userPhone">운전등록번호</label>
		<input type="text" id="car_udriverid" name=car_udriverid placeholder="운전등록번호"><br>
		
	<select name="car_ptype">
		<option>선호 차량</option>
		<option value="zeus560A">제우스560 A / 4 ~ 5인취침</option>
		<option value="zeus640B">제우스640 B / 5 ~ 6인취침</option>
		<option value="zeus640C">제우스640 C / 5 ~ 6인취침</option> 
		<option value="zeus640D">제우스640 D / 5 ~ 6인취침</option>
		<option value="zeus640E">제우스640 E / 5 ~ 6인취침</option>
		<option value="zeus640F">제우스640 F / 5 ~ 6인취침</option>
	</select>
		<input type="submit" value="작성완료" id="join">
		<input type="reset" value="다시쓰기" id="cencle">
		
	</form>
<hr>


<a href="/login">로그인하기</a>
<a href="/list">회원정보 리스트</a>


</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("car_uaddr").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("car_uaddr").value = data.address; // 주소 넣기
                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}


</script>
</html>
