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
    
	<script type="text/javascript" src="js/mypostedjob.js"></script>	
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
   	<div class="l_menu_box"></div>
   	
   	<!--right_box-->
   	<div class="r_content_box">
   		<!-- header -->
   		<div class="pageHeader">
   			我发布的职位
   		</div>
   		
   		<!-- jobListBox -->
   		<div class="jobListBox">
   		</div>
   	</div>
    
    <div class="clearfloat"></div>
    
    
    
</div>

<jsp:include page="framefooter.jsp"></jsp:include>
</body>
</html>