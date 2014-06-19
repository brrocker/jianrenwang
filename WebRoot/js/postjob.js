//global data
var jobdata = {};
$(document).ready(function(){
	
	//event binder
	$("#btnJobSave").click(savejob);
	
	var paramlist = ["position","city","company","mailAddr","beginsalary","endsalary","detail"];
	
	function savejob(){
		jobdata = getFormdata(paramlist);
		var func = function(data){
			console.log(data);
		};
		Jobdwr.saveJob(jobdata,func);
	}
	
	function getFormdata(paramlist){
		var data = {};
		for (var key in paramlist) {
			var keyname = paramlist[key];
			console.log(keyname);
			data[keyname] = $("#"+keyname).val();
		}
		console.log(data);
		return data;
	}
});