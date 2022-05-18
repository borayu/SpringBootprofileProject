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
								<td colspan="2" class="td-type01">${memberDto.mid}님의 회원정보를 수정하였습니다.</td>
							</tr>							
							<form action="infoModifyOk" method="post" name="reg_frm">
								<tr>
									<td class="td-type01">MEMBER ID</td>
									<td class="memberinfo">${memberDto.mid }</td>
								</tr>
								<tr>
									<td class="td-type01">PASSWORD</td>
									<td class="memberinfo">${memberDto.mpw }</td>
								</tr>								
								<tr>
									<td class="td-type01">NAME</td>
									<td class="memberinfo">${memberDto.mname }</td>
								</tr>
								<tr>
									<td class="td-type01">E-MAIL</td>
									<td class="memberinfo">${memberDto.memail }</td>
								</tr>
								<tr>
									<td class="td-type01">JOIN DATE</td>
									<td class="memberinfo">${memberDto.mdate }</td>
								</tr>
								
								<tr>
									<td colspan="2">
									<input id="button01" type="button" value="정보수정" onclick="javascript:window.location='infoModify'">&nbsp;&nbsp;
									<input id="button01" type="button" value="홈바로가기" onclick="javascript:window.location='index'">
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