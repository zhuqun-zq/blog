/**
 * 
 */
function smbmitPlan(){
	var planTitle=$("#planTitle").val();
	var planContext=$("#planContext").val();
	console.log(planTitle+"   "+planContext);
	var data={"planId":"","planTitle":planTitle,"planContext":planContext};
	var jsonStr = JSON.stringify(data)
	$.ajax({
		type: "Post",
		   url: "/blog/page/submitPlanContext",
		   contentType: "application/json",
		   dataType:"json",
		   data:jsonStr,
		   success: function(result){
		      console.log(result);
		      var html="<h1>"+result.planTitle+"</h1>"+"<h2>"+result.planContext+"</h2>"
		      $(".list-group").append(html)
		   }
		});
}