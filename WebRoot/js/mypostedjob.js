var joblist = [];

$(document).ready(function(){
	//event binder
	
	//init page
	showJoblist();
	
	function showJoblist(){
		var func = function(data){
			console.log(data);
			data = JSON.parse(data);
			data = data.data;
			joblist = data;
			listlength = data.length;

			$('.jobListBox').empty();
			for(var i=0;i<data.length;i++){
				var job = data[i];
				var html = 
					'<div class="jobRow"><div class="jobRowLeft">' +
							'<img src="http://q.qlogo.cn/qqapp/101016468/EEF8E24835329D1A33C5900E5F5A471F/100" width="50" class="icon" alt="lemon"></div>' +
   				'<div class="jobRowRight">'+
   					'<div class="title"><span class="perName">'+
   					job.publisherName + '</a></span>&nbsp;发布了&nbsp;<span class="jobName"><a href="jobDetail.jsp?jobid='+job.id +'" target="blank">'+
   					job.position + '</span></div>'+
   					'<div class="prize">推荐奖 ：<span class="brprice">'+
   						'2100元</span> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 被推荐奖 ：<span class="brprice">900元</span> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 自荐奖：<span class="brprice">3000元</span></a>'+
   					'</div><div class="jobInfo">'+
   						'公司：<a href="#" target="_blank" title="珍爱网">'+
   					job.company+'</a> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> '+
		             	'地点：<a href="#" target="_blank">'+
		            job.city+'</a> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 月薪：'+
		            job.beginsalary +'k ~ '+
		            job.endsalary +'k</div>'+
   					'<div class="jobDescript">'+
   					job.detail+
   					'</div></div></div>';
				$('.jobListBox').append(html);
				/*var textobj = $("#"+text.id);
				textobj.data("text", text);
				textobj.children('.textcontent').click(edittext);
				textobj.find('.namefield').click(editname);*/
			}
		}
		Jobdwr.getJobsByPublisherID(accountid,func);
	}
	
});