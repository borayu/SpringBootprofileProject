<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## BORA Profile</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
	<%@ include file="include/header.jsp" %>

	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td><span class="title01">DEVELOPER BORA PROFILE</span></td>
		</tr>
		<tr>
			<td><span class="title02">BORA, a developer who wants a development job. Please call me back.</span></td>
		</tr>
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr>
					<td bgcolor="#D5D5D5"><span class="s-text01">J</span><span class="s-text02">AVA</span></td>
					<td height="500" bgcolor="#353535" rowspan="6" align="center">
						<!--  <img alt="BORA Home" src="${pageContext.request.contextPath}/resources/img/littledeep.png"> -->
						<img src="<c:url value="/resources/img/littledeep.png" />">
					</td>
				</tr>	
				<tr>
					<td bgcolor="#D5D5D5"><span class="s-text01">J</span><span class="s-text02">SP</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="s-text01">S</span><span class="s-text02">PRING</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="s-text01">J</span><span class="s-text02">AVASCRIPT</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="s-text01">H</span><span class="s-text02">TML5</span></td>
				</tr>
				<tr>
					<td bgcolor="#D5D5D5"><span class="s-text01">D</span><span class="s-text02">ATABASE</span></td>
				</tr>
							
			</table>
		</tr>	
	</table>
	<center>
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>