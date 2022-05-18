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
								<%
									int checkId = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
									int checkPw = Integer.parseInt(request.getAttribute("checkPwFlag").toString());

								
									if(checkId == 0) {
								%>	
									<script language="JavaScript">
										alert("입력하신 아이디는 존재하지 않는 아이디입니다. 아이디를 확인해 주세요.");
										history.go(-1);
									</script>	
								<%
									} else if (checkPw == 0){
								%>
									<script language="JavaScript">
										alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
										history.go(-1);
									</script>
								<%
									} else {
										
										session.setAttribute("ValidMem", "yes");
									}
								%>
															
								<tr>
									<td class="td-type02">
										<b>${mname }</b>님 안녕하세요.<br>
										아이디 <b>${mid }</b>로 로그인에 성공하셨습니다.																			
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