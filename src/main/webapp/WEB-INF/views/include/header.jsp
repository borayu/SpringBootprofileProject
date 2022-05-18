<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
	<table class="t-type02" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr height="50">
			<td width="69%">&nbsp;</td>
			<td width="5%"><a href="${pageContext.request.contextPath}/">home</a></td>
			<td width="5%">
				<% 
					String sessionId = (String) session.getAttribute("id"); 
					if(sessionId == null) {
				%>
					<a href="login">login</a>
				<%
					} else {
				%>
					<a href="logout">logout</a>
				<%
					}
				%>
			</td>
			<td width="5%">
				<% 
					if(sessionId == null) {
				%>
					<a href="join">join</a>
				<%
					} else {
				%>
				
					<a href="infoModify">modify</a>
				<%
					}
				%>
			</td>
			<td width="5%"><a href="profile">profile</a></td>
			<td width="6%"><a href="question">question</a></td>
			<td width="5%"><a href="contact">contact</a></td>		
		</tr>
		<tr>
			<td height="50" colspan="7" bgcolor="#FFFFFF">&nbsp;</td>
		</tr>
	</table>
</body>
</html>