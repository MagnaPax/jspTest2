<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
	<div class="container">
	<br><br><br><br><br>
		<div class="row">
			<div class="col-md-12">
	      	<h1>인사 관리</h1>
	<%
	String sql=" select UIDX,UNAME,USERID,UEMAIL,USTAT from USERS ";
	%>
	<%@ include file="inc/DBconn.jsp" %>
			<div class="panel panel-success">
	            <div class="panel-heading">
	              
	              <div class="pull-right">
	              	<a href='addUser.jsp' class='btn btn-sm btn-info'>사용자 추가</a>
	              </div>
	              <h3 class="panel-title">사용자 리스트</h3>
	            </div>
	            <div class="panel-body">
	<%@ include file="inc/user_c.jsp" %>
	            </div>
	          </div>
	
	<%@ include file="inc/DBclose.jsp" %>
			</div>
		</div><!-- row -->
	</div><!-- container -->
</body>
</html>