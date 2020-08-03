<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<jsp:include page="include/header.jsp"></jsp:include>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
        <div class=" col-md-6">
 <%
 request.setCharacterEncoding("UTF-8");
 //get 방식으로 들어온 오류 처리
 	String eid=request.getParameter("id");
   	String sql="";
    if(eid==null){
      out.print("<script>window.location.href='board.jsp'</script>");
      return;
    }else{
    //out.print("eid:"+eid);
    sql=" select * from USERS where uidx='"+eid+"'";
    }
 %>
<%@ include file="inc/DBconn.jsp" %>
<%
int flag=0;
String uidx= null;
String uname= null;
String userid= null;
String userpw= null;
String uemail= null;

while(rs.next()){
	flag++;
	uidx	= rs.getString("uidx");
	uname	= rs.getString("uname");
	userid	= rs.getString("userid");
	userpw = rs.getString("userpw");
	uemail	= rs.getString("uemail");

}
if(flag>0){
	//out.print(uname+":"+userid);	
}else{
	out.print("<script>alert('데이터가 없습니다.');window.location.href='users.jsp'</script>");
	return;
}

%>
	<div class="container">
	<br><br><br><br><br>
		<div class="panel panel-warning">
			<div class="panel-heading">
				<h3 class="panel-title"> 사용자 수정</h3>
			</div>
			<div class="panel-body">

				<form class="form-signin" action="updateUser.jsp" method="post">
					<label for="uname" class="">이름</label> 
					<input type="text" id="uname" name="uname" class="form-control" value="<%=uname %>" />
					 
					<label for="userid" class="">아이디</label>
					<input type="text" id="userid" name="userid" class="form-control"  value="<%=userid %>" />
					
					<label for="userpw" class="">패스워드</label>
					<input type="password" id="userpw" name="userpw" class="form-control"  value="<%=userpw %>" />
					
					<label for="uemail" class="">이메일</label>
					<input type="text" id="uemail" name="uemail" class="form-control"  value="<%=uemail %>" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">전송하기</button>
				</form>
			</div>
			</div>

	</div>

    </div> <!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>