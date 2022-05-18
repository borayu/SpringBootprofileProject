/**
 * 
 */
 
function infoConfirm() {

	if(document.reg_frm.id.value.length == 0) {
		alert("아이디는 필수 입력사항입니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.id.value.length < 4 ) {
		alert("아이디는 4글자 이상이어야 합니다.");
		reg_frm.id.focus();
		return;
	}
	
	if(document.reg_frm.pw.value.length == 0) {
		alert("비밀번호는 필수 입력사항입니다.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw_check.value.length == 0) {
		alert("비밀번호 체크는 필수사항입니다.");
		reg_frm.pw_check.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
		alert("비밀번호가 일치하지 않습니다. 다시 확인 후 입력해주세요.");
		reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.name.value.length == 0) {
		alert("이름은 필수사항입니다.");
		reg_frm.name.focus();
		return;
	}
	
	if(document.reg_frm.email.value.length == 0) {
		alert("이메일은 필수사항입니다.");
		reg_frm.email.focus();
		return;
	}

	document.reg_frm.submit();
}