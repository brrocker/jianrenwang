$(document).ready(function(){
	$(".selectView").click(function(){
		list = $(this).find(".ds_list").get(0);
		$(list).slideToggle(200);
	});
	
	$(".ds_list > .dsl_cont > p").click(function(){
		text = $(this).html();
		$(this).parent().parent().parent().find(".ds_title").html(text);
	});
});