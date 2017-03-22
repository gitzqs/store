var strPath = window.document.location.pathname;
var postPath = strPath.substring(0, strPath.substr(1).indexOf('/') + 1);

/** 注册 */
function register(){
	var user = {
			'userName' : $("#userName").val(),
			'password' : $("#password").val(),
			'passwordAgain' : $("#passwordAgain").val(),
			'mobile' : $("#mobile").val(),
			'messageCode' : $("#messageCode").val(),
			'imgCode' : $("#imgCode").val()
	};
	$.ajax({
		url : postPath + '/register/handle',
		type : 'POST',
		data: JSON.stringify(user),
		contentType : "application/json;charset=utf-8",
		dataType : 'json',
		cache : false,
		success : function(data){
			if(data.response.returnCode = '0000'){
				//跳转到登录页面
			}else{
				alert(data.response.returnMsg);
			}
			
		}
	});
}

/** 登录 */
function login(){
	var user = {
		'loginName' : $("#mobile").val(),
		'password' : $("#password").val()
	};
	$.ajax({
		url : postPath + "/login/handle",
		type : 'POST',
		data : JSON.stringify(user),
		contentType : "application/json;charset=utf-8",
		dataType : 'json',
		cache : false,
		success : function(data){
			if(data.response.returnCode == '0000'){
				//跳转到登录之前页面
			}else{
				alert(data.response.returnMsg);
			}
		}
	});
}