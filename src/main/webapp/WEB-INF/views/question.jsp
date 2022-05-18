<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## BORA Profile</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
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
							<form action="write" method="post" name="reg_frm">
								<tr>
									<td class="td-type01">ID</td>
									<td><input id="input01" type="text" name="qid" value="GUEST" readonly="readonly"></td>
								</tr>
								<tr>
									<td class="td-type01">NAME</td>
									<td><input id="input01" type="text" name="qname"></td>
								</tr>
								<tr>
									<td class="td-type01">QUESTION</td>
									<td><textarea id="input01" name="qcontent" rows="5" cols="26"></textarea></td>
								</tr>								
								<tr>
									<td class="td-type01">E-MAIL</td>
									<td><input id="input01" type="text" name="qemail"></td>
								</tr>
								<tr>
									<td colspan="2">
									<input id="button01" type="button" value="글쓰기" onclick="boardConfirm()">
									<input id="button01" type="button" value="글목록" onclick="javascript:window.location='list'">
									</td>
									
								</tr>
							</form>						
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