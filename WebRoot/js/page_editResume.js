/**
 * edit resume view, need load Resume.js first
 */
$(document).ready(function(){
	function updateResume(){
		console.log("update resume");
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
		var education_0_school = $("#education_school0").val();
		var education_0_major = $("#education_major0").val();
		//*教育经历
		var education = [education_div_0,education_0_school,education_0_major].join(",");
		
		//目标城市
		var interestcitys = $("#interestcitys").val();
		//目标职位
		var interestjobs = $("#interestjobs").val();
		//隐私设置
		var privatestatus = $("#privatestatus").attr("value");
		
		//-----------(can be null)
		//业余爱好
		var hobbies = $("#hobbies").val();
		
		//社交账号
		var gam_type = $("#gam_div_0 .ds_title").attr("value");
		var social_0_info = $("input[name='social[0][info]'").val();
		var gam = [gam_type,social_0_info,].join(",");
		
		//salary 期望月薪
		var salary = $("#salary").val();
		//是否订阅
		var mailSubscription = $("#mailSubscription").val();
		if(!checkNumbers([mobile,birthyear,workage,salary])){
			alert("输入整数");
			return
		}
		//checkChoosed
		if(!checkChoosed([privatestatus,education_div_0,mailSubscription])){
			alert("请选择");
			return
		}
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
			hobbies:hobbies,
			gam:gam,
			salary:salary,
			mailSubscription:mailSubscription,
		};
		
		var func = function(data){
			console.log("update resume result" + data);
			console.log("update resume result" + JSON.parse(data)["result"]);
			if(JSON.parse(data)["result"]==true){
				window.location.href = "myResume.jsp";
			}
		};
		Resume.saveResume(resume,func);
	}
	
	$("#btnResume").click(updateResume);
});