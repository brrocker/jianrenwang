$(document).ready(function(){
	var select_conditions = {
			city:[],
			area:[],
			position:[]
	};
	
	//event binder
	$(".search_drop_ele").click(selectCondition);
	$(".search_input").focus(showDropdown);
	$("body").click(clearPage);
	
	function clearPage(e) { 
		//console.log($(e.target).attr("class"));
		//hide dropdown
		if(!$(e.target).parents(".search_box").attr("class")) {
			$(".search_dropdown").slideUp(50);
		}
	}
	
	function selectCondition(){
		var etype = $(this).parent().attr("etype");
		var conditions = select_conditions[etype];
		var valuestr = $(this).text();
		var index = _findEleInArray(valuestr,conditions);
		
		if(index === -1) {
			//does not selected
			select_conditions[etype].push(valuestr);
			$(this).addClass('selected');
		} else {
			select_conditions[etype].splice(index,1);
			$(this).removeClass('selected');
		}
		$(this).addClass('textselected');
	}
	
	function showDropdown(){
		$(".search_dropdown").slideDown(50);
	}
	
});