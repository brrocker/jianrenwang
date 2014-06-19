$(document).ready(function(){
	$(".selectView").click(function(){
		var list = $(this).find(".ds_list").get(0);
		$(list).slideToggle(200);
	});
	
	$(".ds_list > .dsl_cont > p").hover(
		function () {
			$(this).addClass("selected");
		},
		function () {
			$(this).removeClass("selected");
		}
	);
	
	$(".ds_list > .dsl_cont > p").click(function(){
		var text = $(this).html();
		var titileDiv = $(this).parent().parent().parent().find(".ds_title");
		titileDiv.html(text);
		var defaultText = $(this).parent().find("p").html();
		if(text == defaultText){
			text = "";
		}
		titileDiv.attr("value",text);
	});
	
	function checkFileds(){
		//对输入进行正则校验
		//校验大于0的整数
		var workage = $("input[name='workage']").val();
		var salary = $("#salary").val();
		var numPattern=/^[1-9]{1}[0-9]*$/;
		return numPattern.test(workage) && numPattern.test(salary);
	}
	
});