/**
 * 
 */
 
function boardConfirm() {
	
	if(document.reg_frm.qname.value.length == 0) {
		alert("이름은 필수사항입니다.");
		reg_frm.qname.focus();
		return;
	}
	
	if(document.reg_frm.qemail.value.length == 0) {
		alert("이메일은 필수사항입니다.");
		reg_frm.qemail.focus();
		return;
	}
	
	if(document.reg_frm.qcontent.value.length < 10 ) {
		alert("질문은 10글자 이상이어야 합니다.");
		reg_frm.qcontent.focus();
		return;
	}

	document.reg_frm.submit();
}