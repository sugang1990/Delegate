$(function(){
	$("#login").click(function(){
		var code=$("#codes").attr("data-code");
		var code1=$("#icode").val();
		if(code!=code1){
			alert("��֤���д���");
			return false;
		}
	});
});