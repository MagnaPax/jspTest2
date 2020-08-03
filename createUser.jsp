<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	//get 방식으로 들어온 오류 처리

 	String uname = request.getParameter("uname");
 	String userid = request.getParameter("userid");
 	String userpw = request.getParameter("userpw");
 	String uemail = request.getParameter("uemail");


 	String sql = "";
 	if (userid == null) {// idx가 없으면 업데이트 대상이 없으므로 뒤로 돌아가기
 		out.print("<script>window.location.href='users.jsp'</script>");
 		return;
 	} else {
 		//out.print("eid:"+eid);
 		sql = " INSERT INTO USERS (UIDX, UNAME, USERID, USERPW, UEMAIL, USTAT) VALUES (USERS_SEQ.NEXTVAL,'"
 		+uname+"','"+userid+"','"+userpw+"','"+uemail+"','0')";
 	}
 	
 %>
<%@ include file="inc/DBconn.jsp" %> <%----%>
<%
	//out.print(sql);
	out.print("<script>window.location.href='users.jsp'</script>");

 %>
