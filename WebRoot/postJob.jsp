<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jianrenwang.commonservice.Constants"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>见人网,见人就在这里</title>
	<link rel="shortcut icon" href="favicon.ico" />

	<link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/pages.css">
    <link rel="stylesheet" type="text/css" href="css/contents.css">
	
	<script type='text/javascript' src='dwr/engine.js'></script>
	<script type='text/javascript' src='dwr/util.js'></script>
	<script type='text/javascript' src='dwr/interface/Jobdwr.js'></script>
	<script type="text/javascript" src="jslib/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="jslib/json2.js"></script>
	
    <script type="text/javascript" src="js/util.js"></script>
	<script type="text/javascript" src="js/postjob.js"></script>	
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
   	
   		
   		<!-- header -->
   		<div class="pageHeader">
   			发布职位
   		</div>
   		
   		<!-- jobListBox -->
   		<div class="jobForm">
   			<table width="100%" cellpadding="1" cellspacing="1" class="t_value">
            <tbody>
            <tr>
                <th width="17%" scope="row">岗位</th>
                <td width="83%">
                  <input id="position" type="text" maxlength="30" size="40" class="required inp" value="">
                </td>
            </tr>
            <tr>
                <th scope="row">城市</th>
                <td>
                  <input id="city" type="text" maxlength="60" size="40" class="required inp" value="">
                <em style="color:#fe9728;padding-left:10px"></em></td>
            </tr>
		    <tr>  
		       <th scope="row">公司</th>
		       <td>
		       <input id="company"type="text" class="required inp"  value="" maxlength="30" style="width:110px;">
		       <span class="btitle">　部门</span>　 
		       <input id="department" type="text" class="required inp" value="" maxlength="30" style="width:135px;">
		       </td>
		    </tr>
            <tr>
                <th scope="row">接收简历邮箱</th>
                <td>
                  <input id="mailAddr" type="text" maxlength="60" size="40" class="required email inp" value="brrocker@tempinbox.com">
                </td>
            </tr>
            <tr>  
               <th scope="row">月薪</th>
               <td id="monthlyPay">
                <div style="display:inline-block">
                 <input id="beginsalary" type="text" class="required inp" value="" style="width:30px;text-align:right"> k
                 <span class="btitle"> &nbsp;&nbsp;~ </span>　 
                 <input id="endsalary" type="text" class="required inp" value="" style="width:30px;text-align:right"> k
                </div><em style="color:#fe9728;padding-left:10px"></em>
               </td>
            </tr>
            <tr>
                <th scope="row">职位详情</th>
                <td>
                  <div class="NT_Textarea_Wrap">
                    <textarea  id="detail" rows="20" class="inp" placeholder="重要的信息放在前面；尽量给出福利待遇； 准确描述职位相关信息。" style="width:505px;height:300px;padding-top:35px;resize:none;"></textarea>
                  </div>
                </td>
            </tr>
             
            <tr>
                <th scope="row">&nbsp;</th>
                <td>
                  <input type="hidden" value="1" id="click" name="click">
                  <input type="button" value="发 布" id="btnJobSave" class="btn_sty1">
                </td>
            </tr>
            <tr>
              <th scope="row">&nbsp;</th>
              <td>
                <ul class="resume_tips">
                <li>1、<span>你每天可以发布 <span class="cff5"><strong>3</strong></span> 个职位</span></li>
                <li>2、<span><a href="/y/1258" target="_blank">如何让你的职位更有「吸引力」？</a></span>
                </li>
                <li>3、<span><a href="/y/1039" target="_blank" class="">如何插入「图片」和「视频」？</a></span></li><a href="/y/1039" target="_blank" class="">
              </a></ul><a href="/y/1039" target="_blank" class="">
              </a></td>
            </tr>
          </tbody></table>
   		</div>
   		
   	</div>
   	
   	<!--right_box-->
   	<div class="r_side_box"></div>
    
    <div class="clearfloat"></div>
    
</div>

<jsp:include page="framefooter.jsp"></jsp:include>
</body>
</html>