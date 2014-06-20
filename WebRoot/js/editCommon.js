function checkNumbers(intArr){
	//对输入进行正则校验
	//校验大于0的整数
	var numPattern=/^[0-9]*$/;
	for( i in intArr){
		if(!numPattern.test(intArr[i])){
			return false;
		}
	}
	return true;
}

function checkChoosed(strArr){
	//对输入进行正则校验
	//校验大于0的整数
	var strPattern="请选择";
	for( i in strArr){
		if(strPattern == strArr[i]){
			return false;
		}
	}
	return true;
}

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
		titileDiv.attr("value",text);
	});
	
});