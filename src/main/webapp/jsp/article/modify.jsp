<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Map<String, Object> articleMap = (Map<String, Object>) request.getAttribute("articleMap");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
	<form action="doModify" method="POST">
		<input name="id" type="hidden" value="<%= (int) articleMap.get("id") %>" />
		<h1><%= (int) articleMap.get("id") %>번 게시물</h1>
		<div>글번호 : <%= (int) articleMap.get("id") %></div>
		<div>작성일 : <%= (LocalDateTime) articleMap.get("regDate") %></div>
		<div>제목 : <input name="title" type="text" value="<%= (String) articleMap.get("title") %>"/></div>
		<div>내용 : <textarea name="body"><%= (String) articleMap.get("body") %></textarea></div>
		<div>
			<input type="submit" value="수정"/>
			<a href="detail?id=<%= (int) articleMap.get("id") %>">취소</a>
		</div>
	</form>
</body>
</html>