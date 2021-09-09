<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
로그인
<c:if test="${AdminLoginIdx == null || AdminLoginIdx == ''}">
	<a href="/cong/admin/login.do">로그인</a>
</c:if>
<c:if test="${AdminLoginIdx != null && AdminLoginIdx != ''}">
	<a href="/cong/admin/logout.do">Logout</a>
	<a href="/cong/admin/portfolioView.do">Portfolio</a>
	<a href="/cong/admin/faqView.do">FAQ</a>
	<a href="/cong/admin/contact.do">Contact</a>
</c:if>
</body>
</html>