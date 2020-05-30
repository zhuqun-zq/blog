/**
 * 
 */
$(document).ready(function() {
	$("#addUserName").blur(function() {
		var patrn = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/;
		var s = $("#addUserName").val();
		console.log(s + "11111");
		if (!patrn.exec(s)) {
			console.log("false");
		} else {
			console.log("true");
		}

	});
});

function addNewUser(){
	var userName=$("#addUserName").val();
	var password=$("#addPassword").val();
	console.log(userName+"   "+password);
	var data={"userName":userName,"password":password};
	var jsonStr = JSON.stringify(data)
	$.ajax({
		type: "Post",
		   url: "/blog/page/login/addNewUser",
		   contentType: "application/json",
		   dataType:"json",
		   data:jsonStr,
		   success: function(result){
		      console.log(result);
		   }
		});
}