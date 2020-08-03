<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doc add</title>

<jsp:include page="include/header.jsp"></jsp:include>
	<div class="container">
	<br><br><br><br><br>
      <!-- Main component for a primary marketing message or call to action -->
   <div class="row">
	<div class=" col-md-6">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">글작성</h3>
			</div>
			<div class="panel-body">

				<form class="form-signin" action="createUser.jsp" method="post">
					<label for="uname" class="">이름</label> 
					<input type="text" id="uname" name="uname" class="form-control" required />
					 
					<label for="userid" class="">아이디</label>
					<input type="text" id="userid" name="userid" class="form-control" required />
					
					<label for="userpw" class="">패스워드</label>
					<input type="password" id="userpw" name="userpw" class="form-control" required />
					
					<label for="uemail" class="">이메일</label>
					<input type="text" id="uemail" name="uemail" class="form-control" required />
					<button class="btn btn-lg btn-primary btn-block" type="submit">전송하기</button>
				</form>
			</div>
			</div>
		</div>

	</div>	<!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>