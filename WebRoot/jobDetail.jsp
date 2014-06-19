<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jianrenwang.commonservice.Constants"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.jianrenwang.data.service.JobService"%>
<%@page import="com.jianrenwang.data.pojo.Job"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/pages.css">
    <link rel="stylesheet" type="text/css" href="css/contents.css">
	
	<script type='text/javascript' src='dwr/engine.js'></script>
	<script type='text/javascript' src='dwr/util.js'></script>
	<script type='text/javascript' src='dwr/interface/Jobdwr.js'></script>
	<script type="text/javascript" src="jslib/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="jslib/json2.js"></script>
	
    <script type="text/javascript" src="js/util.js"></script>
	<title>网络小口袋</title>
</head>

<%
String accountid = (String)session.getAttribute(Constants.SESSION_ID);
String username = (String)session.getAttribute(Constants.SESSION_NAME);

String jobid = request.getParameter("jobid");

ApplicationContext ctx = WebApplicationContextUtils
.getRequiredWebApplicationContext(this.getServletConfig()
		.getServletContext());
JobService jobService = (JobService) ctx.getBean("jobService");
Job job = null;
if(jobid!=null)
	job = jobService.getJobById(jobid);

%>
<script>
var accountid = "<%= accountid%>";
var username = "<%= username%>";
if(accountid == "null") {
	window.location.href = "index.jsp";
}
</script>
<body>
<jsp:include page="frameheader.jsp"></jsp:include>

<div id="center_box">
    
    <!--left_box-->
   	<div class="l_content_box">
   	
   		
   		<!-- header -->
   		<div class="pageHeader">
   			职位详情
   		</div>
   		
   		<!-- jobListBox -->
   		<div class="jobRowLeft">
			<img src="http://q.qlogo.cn/qqapp/101016468/EEF8E24835329D1A33C5900E5F5A471F/100" width="50" class="icon" alt="lemon">
		</div>
		<div class="jobRowRight">
			<div class="title"><span class="perName"><%=job.getPublisherName() %></span>&nbsp;发布了&nbsp;<span class="jobName"><%=job.getPosition() %></span></div>
			<div class="prize">
				推荐奖 ：<span class="brprice">2100元</span> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 被推荐奖 ：<span class="brprice">900元</span> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 自荐奖：<span class="brprice">3000元</span></a>
			</div>
			<div class="jobInfo">
           	公司：<a href="#" target="_blank" title="珍爱网"><%=job.getCompany() %></a> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 
          	地点：<a href="#" target="_blank"><%=job.getCity() %></a> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 
           	月薪：<%=job.getBeginsalary() %>k ~ <%=job.getEndsalary() %>k
			</div>
			<div>
			<%=job.getDetail() %>
			</div>
		</div>
   		
   	</div>
   	
   	<!--right_box-->
   	<div class="r_side_box"></div>
    
    <div class="clearfloat"></div>
    
</div>

<jsp:include page="framefooter.jsp"></jsp:include>
</body>
</html>