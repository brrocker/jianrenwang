<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jianrenwang.commonservice.Constants"%>
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
    
	<script type="text/javascript" src="js/shouye.js"></script>	
	<title>网络小口袋</title>
</head>

<%
String accountid = (String)session.getAttribute(Constants.SESSION_ID);
String username = (String)session.getAttribute(Constants.SESSION_NAME);
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
   	
   		<div class="search_box" id="">
   			<div class="search_dropdown">
   				<!-- dropdown content here -->
   				<div class="search_drop_row" etype="city">
   					<div class="search_drop_title">城市</div>
   					<div class="search_drop_ele">南京</div>
   					<div class="search_drop_ele">上海</div>
   					<div class="search_drop_ele">北京</div>
   				</div>
   				<div class="seperator_line"></div>
   				<div class="search_drop_row" etype="area">
   					<div class="search_drop_title">行业</div>
   					<div class="search_drop_ele">运输</div>
   					<div class="search_drop_ele">教育</div>
   					<div class="search_drop_ele">IT</div>
   				</div>
   				<div class="seperator_line"></div>
   				<div class="search_drop_row" etype="position">
   					<div class="search_drop_title">职位</div>
   					<div class="search_drop_ele">经理</div>
   					<div class="search_drop_ele">前台</div>
   					<div class="search_drop_ele">运维</div>
   					<div class="search_drop_ele">销售</div>
   					<div class="search_drop_ele">后勤</div>
   					<div class="search_drop_ele">支持</div>
   					<div class="search_drop_ele">总管</div>
   					<div class="search_drop_ele">客服</div>
   					<div class="search_drop_ele">工人</div>
   					<div class="search_drop_ele">策划</div>
   					<div class="search_drop_ele">质量监测</div>
   				</div>
   			</div>
   			<input class="search_input"></input>
   			<button class="btn_search btn_sty1">搜索</button>
   		</div>
   		<!-- search box end -->
   		
   		<!-- jobTypeBox -->
   		<div class="jobTypeBox">
   			<div class="jobTypeTab">精选职位</div>
   			<div class="jobTypeTab selected">有奖推荐</div>
   			<div class="jobTypeTab">全部职位</div>
   		</div>
   		
   		<!-- jobListBox -->
   		<div class="jobListBox">
   			<!-- <div class="jobRow">
   				<div class="jobRowLeft">
   					<img src="http://q.qlogo.cn/qqapp/101016468/EEF8E24835329D1A33C5900E5F5A471F/100" width="50" class="icon" alt="lemon">
   				</div>
   				<div class="jobRowRight">
   					<div class="title"><span class="perName">lemon</span>&nbsp;发布了&nbsp;<span class="jobName">UI设计师</span></div>
   					<div class="prize">
   						推荐奖 ：<span class="brprice">2100元</span> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 被推荐奖 ：<span class="brprice">900元</span> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 自荐奖：<span class="brprice">3000元</span></a>
   					</div>
   					<div class="jobInfo">
		              	公司：<a href="#" target="_blank" title="珍爱网">珍爱网网站部</a> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 
		             	地点：<a href="#" target="_blank">深圳-南山区</a> <span class="note">&nbsp;&nbsp;•&nbsp;&nbsp;</span> 
		              	月薪：9k ~ 14k
   					</div>
   					<div class="jobDescript">
   						公司有专业的设计开发团队，广阔的个人发展空间。需要有创新的思维模式，良好的执行力，思维敏捷。

						职位要求:  
						1、艺术设计或工业设计本科以上学历，专职手机客户端UI设计或手机网站设计2年以上经验。 
						2、精通Photoshop、Painter、OC、AI、Coreldraw等，有一定手绘能力，能熟练使用手写板进行创作；
						3、对移动终端人机交互、图形化设计、界面设计和其他相关理论有比较系统的认识。 
						4、熟悉android 、iso等平台的应用规范。
   					</div>
   				</div>
   			</div> -->
   		</div>
   		
   	</div>
   	
   	<!--right_box-->
   	<div class="r_side_box"></div>
    
    <div class="clearfloat"></div>
    
</div>

<jsp:include page="framefooter.jsp"></jsp:include>
</body>
</html>