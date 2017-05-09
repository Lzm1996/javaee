<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.cugb.xg.javaee.bean.Users"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- <h4>传统方式</h4> -->
<%-- <%
	pageContext.setAttribute("name", "10", pageContext.REQUEST_SCOPE);
	Users user = new Users();
	user.setUsername("张三");
	user.setPassword("123");
	request.setAttribute("user", user);
%>
${ user.username } --%>
<h4>JSTL方式</h4>
<c:set var="i" value="10" scope="request" ></c:set>
${ i }
<br>
<jsp:useBean id="user" class="edu.cugb.xg.javaee.bean.Users" scope="request"></jsp:useBean>
<c:set target="${user}" property="username"  value="张三"></c:set>
${ user.username }
</body>
</html>







