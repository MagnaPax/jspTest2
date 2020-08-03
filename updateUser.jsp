<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	//get 방식으로 들어온 오류 처리
 	
	
 	String uidx	= request.getParameter("uidx");
 	String uname	= request.getParameter("uname");
 	String userid	= request.getParameter("userid");
 	String userpw = request.getParameter("userpw");
 	String uemail	= request.getParameter("uemail");
 	String sql = "";
 	if (uidx == null) {// uidx가 없으면 업데이트 대상이 없으므로 뒤로 돌아가기
 		out.print("udix 없어!!");
 		out.print("<script>window.location.href='users.jsp'</script>");
 		return;
 	} else {
 		//out.print("eid:"+eid);
 		sql = " update USERS set uname='" + uname + "',userid='" + userid + "',userpw='" + userpw
 				+ "',uemail='" + uemail +"' where  uidx='" + uidx + "'";
 	}
 %>
<%@ include file="inc/DBconn.jsp" %>
<%
out.print(sql);
//	out.print("<script>alert('OK update');window.location.href='users.jsp'</script>");
 %>
