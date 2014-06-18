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
		console.log("default value =" + defaultText);
		if(text == defaultText){
			text = "";
		}
		titileDiv.attr("value",text);
	});
	
	$("#btnResume").click(updateResume);
	
	function checkFileds(){
		//对输入进行正则校验
		//校验大于0的整数
		var workage = $("input[name='workage']").val();
		var salary = $("#salary").val();
		var numPattern=/^[1-9]{1}[0-9]*$/;
		return numPattern.test(workage) && numPattern.test(salary);
	}
	
	function updateResume(){
		console.log("update resume");
		if(!checkFileds()){
			alert("输入有误");
		}
		//check each field
		//姓       名
		var realName = $("#realname").val();
		//手       机
		var mobile = $("#mobile").val();
		var email = $("#email").val();
		var birthyear = $("#ageDiv .ds_title").attr("value");
		var currentcompany = $("input[name='currentcompany']").val();
		var currentjob = $("input[name='currentjob']").val();
		//工作年限
		var workage = $("input[name='workage']").val();
		var city = $("input[name='city']").val();
		var experience = $("#experience").val();
		//get edu info
		var education_div_0 = $("#education_div_0 .ds_title").attr("value");
		var education_0_school = $("#education[0][school]").val();
		var education_0_major = $("#education[0][major]").val();
		//*教育经历
		var education = [education_div_0,education_0_school,education_0_major].join(",");
		
		//目标城市
		var interestcitys = $("#interestcitys").val();
		//目标职位
		var interestjobs = $("#interestjobs").val();
		//隐私设置
		var privatestatus = $("#privatestatus .ds_title").attr("value");
		
		//-----------(can be null)
		//作品地址
		var portfolio = $("#portfolio").val();
		
		//社交账号
		var gam_type = $("#gam_div_0 .ds_title").attr("value");
		var social_0_info = $("input[name='social[0][info]'").val();
		var gam = [gam_type,social_0_info,].join(",");
		
		//salary 期望月薪
		var salary = $("#salary").val();
		
		resume = {
			realName:realName,
			mobile:mobile,
			email:email,
			birthyear:birthyear,
			currentcompany:currentcompany,
			currentjob:currentjob,
			workage:workage,
			city:city,
			experience:experience,
			education:education,
			interestcitys:interestcitys,
			interestjobs:interestjobs,
			privatestatus:privatestatus,
			portfolio:portfolio,
			gam:gam,
			salary:salary
		};
		
		var func = function(data){
			console.log("update resume result" + data);
		};
		
		Resume.saveResume(resume,func);
	}
});