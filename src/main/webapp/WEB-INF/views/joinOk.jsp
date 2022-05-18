<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## BORA Profile</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
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
					<td height="500" bgcolor="#D5D5D5" align="center">
						<table border="0" cellspacing="0" cellpadding="10">							
							<tr>
								<td class="td-type03">NO</td>
								<td class="td-type03">ID</td>
								<td class="td-type03">QUESTION</td>
								<td class="td-type03">NAME</td>
								<td class="td-type03">DATE</td>
							</tr>
							<c:forEach items="${list }" var="dto">
							<tr>
								<td class="td-type04">${dto.qnum }</td>
								<td class="td-type04">${dto.qid }</td>
								<td class="td-type04"><a href="qview?qnum=${dto.qnum }">${dto.qcontent }</a></td>
								<td class="td-type04">${dto.qname}</td>
								<td class="td-type04">${dto.qdate }</td>
							</tr>
							</c:forEach>
							<tr>
								<td colspan="5" align="right">
									<input id="button01" type="button" value="질문하기" onclick="javascript:window.location='question'">
								</td>
							</tr>	
						</table>
					</td>
				</tr>			
			</table>
		</tr>	
	</table>
	<center>
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>